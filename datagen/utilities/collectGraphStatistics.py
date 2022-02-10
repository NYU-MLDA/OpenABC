import argparse
import networkx as nx
import networkx.algorithms.dag as nxdag
#import dgl
import argparse,os,re
import pandas as pd
import glob
import os.path as osp
from tqdm import tqdm
import sys
from joblib import Parallel, delayed
from zipfile import ZipFile

GML_LOC_FOLDER = None
statsDataFolder = None
GML_LOC = None
DESNAME = None
delimiter = '\n'
commaSign = ","

#############################################################
#Node types: 0-PI, 1-PO, 2-Internal
#Gate type: 0-Unassigned, 1-NOT, 2-AND, 0-BUFF
# 0- Node type, 1- Gate type, 2- Predecessors, 3- Successors
#############################################################

informationDict = []

nodeType = {
    0: "PI",
    1: "PO",
    2: "Internal"
}

edgeType = { 1:"NOT", 0:'BUFF'}


def setGlobalAndEnvironmentVars(cmdArgs):
    global GML_LOC_FOLDER, DESNAME,statsDataFolder
    GML_LOC_FOLDER = cmdArgs.gml
    DESNAME = cmdArgs.des
    statsDataFolder = cmdArgs.stats



def getInformationDictForGMLFiles(gmlFileZip,desName):
    filePathName = desName+"_"+os.path.splitext(osp.basename(gmlFileZip))[0]+"_step20.bench.graphml"
    with ZipFile(gmlFileZip) as myzip:
        with myzip.open(filePathName) as myfile:
            graph = nx.read_graphml(myfile)
            synID = os.path.splitext(osp.basename(gmlFileZip))[0].split("syn")[-1]
            nodeCountDict = {"PI": 0, "PO": 0, "Internal": 0}
            edgeCountDict = {'BUFF':0,'NOT':0}
            for i, (_, feat_dict) in enumerate(graph.nodes(data=True)):
                nodeCountDict[nodeType[feat_dict['node_type']]] += 1
            for i, (_,_,feat_dict) in enumerate(graph.edges(data=True)):
                edgeCountDict[edgeType[feat_dict['edge_type']]] += 1
            longestPath = nxdag.dag_longest_path_length(graph)
            information = [int(synID),edgeCountDict["BUFF"],edgeCountDict["NOT"], nodeCountDict["Internal"], nodeCountDict["PI"],
                   nodeCountDict["PO"], longestPath]
            return information

def countGatesAndLongestPathLength():
    global informationDict
    aigGMLZippedFiles = glob.glob(os.path.join(GML_LOC,"*.zip"))
    allInfo = Parallel(n_jobs=5)(delayed(getInformationDictForGMLFiles)(zipFile,DESNAME) for zipFile in aigGMLZippedFiles)
    informationDict = allInfo


def dumpFinalGMLFileInfo():
    global informationDict,DESNAME,statsDataFolder
    finalAIGFolder = osp.join(statsDataFolder,"finalAig")
    if not osp.exists(finalAIGFolder):
        os.mkdir(finalAIGFolder)
    csvFileWrite = open(osp.join(finalAIGFolder,"processed_"+DESNAME+".csv"),'w+')
    csvFileWrite.write("sid,BUFF,NOT,AND,PI,PO,LP" + delimiter)
    for datapointList in informationDict:
        sid, BUFF, NOT, AND, PI,PO, LP = datapointList
        csvFileWrite.write(
            str(sid) + commaSign + str(BUFF) + commaSign + str(NOT) + commaSign + str(AND) + commaSign + str(PI) + commaSign + str(PO) + commaSign + str(
                LP) + delimiter)
    csvFileWrite.close()

def processDesigns():
    global INPUT_CSV,GML_LOC
    GML_LOC = osp.join(GML_LOC_FOLDER)
    countGatesAndLongestPathLength()
    dumpFinalGMLFileInfo()


def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='Final AIG statistics collection', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--gml',required=True, help="Circuit GML folder")
    parser.add_argument('--stats',required=True, help="Stats data folder (e.g. OPENABC_DATASET/statistics)")
    parser.add_argument('--des', required=True, help="Design Name")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    processDesigns()

if __name__ == '__main__':
    main()
