import os
import shutil

import pandas as pd
import networkx as nx
import glob
import pickle
import copy

from typing import Optional, Tuple

import torch
from torch import Tensor
from torch.utils.dlpack import to_dlpack, from_dlpack
import scipy.sparse
import zipfile
import argparse

import torch_geometric
import torch_geometric.data
import os.path as osp
from torch_geometric.data import Dataset, download_url
import sys

from joblib import Parallel, delayed

nodeType = {
    0: "PI",
    1: "PO",
    2: "Internal"
}

edgeType = { 1:"NOT", 0:'BUFF'}

numSynthesized = 1500

def zipProcessedFolder(path):
    cmd = 'zip -r -q -j '+path+'.zip '+path+os.sep
    os.system(cmd)


def unzipGraphmlFiles(srcZippedFile,destZippedFolder):
    cmd = 'unzip -q '+srcZippedFile+" -d "+destZippedFolder
    os.system(cmd)


def preprocessGraphData(graphMLFilePath,processedDir,desName,synthID2VecDict):
    G = nx.read_graphml(graphMLFilePath)
    data = pygDataFromNetworkx(G)
    synPart,stepID = os.path.basename(graphMLFilePath).split('.bench')[0].split('_step')
    stepID = int(stepID)
    synID = int(synPart.split('_syn')[1])
    data.desName = [desName]
    data.synVec = torch.tensor(synthID2VecDict[synID])
    data.synID = [synID]
    data.stepID = [stepID]
    destFilePath = osp.join(processedDir, desName + '_syn{}_step{}.pt'.format(synID,stepID))
    torch.save(data, destFilePath)
    with zipfile.ZipFile(destFilePath+".zip",'w',zipfile.ZIP_DEFLATED) as fzip:
        fzip.write(destFilePath,arcname=osp.basename(destFilePath))
    os.remove(destFilePath)


def pygDataFromNetworkx(G):
    r"""Converts a :obj:`networkx.Graph` or :obj:`networkx.DiGraph` to a
    :class:`torch_geometric.data.Data` instance.
    Args:
        G (networkx.Graph or networkx.DiGraph): A networkx graph.
    """
    G = nx.convert_node_labels_to_integers(G)
    G = G.to_directed() if not nx.is_directed(G) else G
    edge_index = torch.LongTensor(list(G.edges)).t().contiguous()

    data = {}
    nodeCountDict = {"PI": 0, "PO": 0, "Internal": 0}
    edgeCountDict = {'BUFF': 0, 'NOT': 0}

    for i, (_, feat_dict) in enumerate(G.nodes(data=True)):
        for key, value in feat_dict.items():
            data[str(key)] = [value] if i == 0 else data[str(key)] + [value]
        nodeCountDict[nodeType[feat_dict['node_type']]] += 1

    for i, (_, _, feat_dict) in enumerate(G.edges(data=True)):
        for key, value in feat_dict.items():
            data[str(key)] = [value] if i == 0 else data[str(key)] + [value]
        edgeCountDict[edgeType[feat_dict['edge_type']]] += 1

    data['longest_path'] = nx.dag_longest_path_length(G)
    data['and_nodes'] = nodeCountDict["Internal"]
    data['pi'] = nodeCountDict["PI"]
    data['po'] = nodeCountDict["PO"]
    data['not_edges'] = edgeCountDict["NOT"]

    for key, item in data.items():
        try:
            data[key] = torch.tensor(item)
        except ValueError:
            pass

    data['edge_index'] = edge_index.view(2, -1)
    data = torch_geometric.data.Data.from_dict(data)
    data.num_nodes = G.number_of_nodes()
    return data


class NetlistGraphDataset(Dataset):
    def __init__(self,root,des,graphmlLoc,ptDataLoc,transform=None, pre_transform=None):
        self.des = des
        self.graphmlLoc = graphmlLoc
        self.ptDataLoc = ptDataLoc
        super(NetlistGraphDataset, self).__init__(root,transform,pre_transform)


    @property
    def raw_file_names(self):
        rawFolder = os.path.join(self.root,'raw')
        if not os.path.exists(rawFolder):
            zippedGraphmlFolders = [os.path.join(self.graphmlLoc,'syn'+str(i)+'.zip') for i in range(numSynthesized)]
            #origGraphmlFolderZip = os.path.join(os.path.dirname(self.graphmlLoc),'orig',self.des)
            os.mkdir(rawFolder)
            for synZippedFolder in zippedGraphmlFolders:
                unzipGraphmlFiles(synZippedFolder, rawFolder)
            #unzipGraphmlFiles(origGraphmlFolderZip,rawFolder)
        graphMLfile = glob.glob(rawFolder+os.sep+"*.graphml")
        return graphMLfile


    @property
    def processed_file_names(self):
        processedFiles = []
        for i in range(len(self.raw_paths)):
            processedFiles.append(self.des+"_"+ str(i) + '.pt')
        return processedFiles


    def process(self):
        aigGMLFiles = self.raw_paths
        synth2vecFile = self.ptDataLoc
        with open(synth2vecFile,'rb') as f:
            synthID2VecDict = pickle.load(f)
        Parallel(n_jobs=10)(delayed(preprocessGraphData)(gmlFile,self.processed_dir,self.des,synthID2VecDict) for gmlFile in aigGMLFiles)


    def len(self):
        return len(self.processed_file_names)

    def get(self, idx):
        data = torch.load(osp.join(self.processed_dir, self.des+'_{}.pt'.format(idx)))
        return data


def setGlobalAndEnvironmentVars(cmdArgs):
    global homeDir,benchDataFolder,statsDataFolder
    homeDir = cmdArgs.home
    if not (os.path.exists(homeDir)):
        print("\nPlease rerun with appropriate paths")
    benchDataFolder = os.path.join(homeDir,"OPENABC_DATASET","bench")
    statsDataFolder = os.path.join(homeDir,"OPENABC_DATASET","statistics")

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='Graphml 2 pytorch-geometric data conversion', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--des',required=True, help="Design directory (eg. ~/OPENABC_DATASET/ptdata/designName)")
    parser.add_argument('--name', required=True, help="Design name")
    parser.add_argument('--gs', required=True, help="Graphml source directory (eg. ~/OPENABC_DATASET/graphml/designName)")
    parser.add_argument('--synvec', required=True,help="Synthesis vector pickle path (eg. ~/OPENABC_DATASET/statistics/synthID2Vec.pickle)")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    aigDataset = NetlistGraphDataset(cmdArgs.des, cmdArgs.name, cmdArgs.gs, cmdArgs.synvec)
    rawFolder = os.path.join(sys.argv[1], 'raw')
    shutil.rmtree(rawFolder)

if __name__ == '__main__':
    main()
