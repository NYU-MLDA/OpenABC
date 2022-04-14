import torch
from torch.optim.lr_scheduler import ReduceLROnPlateau
#from NetlistClassification.model import *
from model import *
#from NetlistClassification.utils import *
from utils import *
#from NetlistClassification.netlistDataset import *
from netlistDataset import *
import argparse
import torch.nn.functional as F
from torch_geometric.data import DataLoader
import numpy as np
from torchvision import transforms
from tqdm import tqdm
from torch.utils.data import random_split
import os.path as osp
import pickle
import sys
import matplotlib.pyplot as plt

datasetDict =  {
    'set1' : ["train_data_set1.csv","test_data_set1.csv"],
    'set2' : ["train_data_set2.csv","test_data_set2.csv"],
    'set3' : ["train_data_mixmatch_v1.csv","test_data_mixmatch_v1.csv"]
}

DUMP_DIR = None

def plotChart(x,y,xlabel,ylabel,leg_label,title):
    fig = plt.figure(figsize=(10,6))
    ax = fig.add_subplot(1, 1, 1)
    plt.plot(x,y, label=leg_label)
    leg = plt.legend(loc='best', ncol=2, shadow=True, fancybox=True)
    leg.get_frame().set_alpha(0.5)
    plt.xlabel(xlabel, weight='bold')
    plt.ylabel(ylabel, weight='bold')
    plt.title(title,weight='bold')
    plt.savefig(osp.join(DUMP_DIR,title+'.png'), fmt='png', bbox_inches='tight')


def evaluate_plot(model, device, dataloader):
    model.eval()
    totalMSE = AverageMeter()
    batchData = []
    with torch.no_grad():
        for _, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            batch = batch.to(device)
            pred = model(batch)
            lbl = batch.target.reshape(-1, 1)
            desName = batch.desName
            synID = batch.synID
            predArray = pred.view(-1,1).detach().cpu().numpy()
            actualArray = lbl.view(-1,1).detach().cpu().numpy()
            batchData.append([predArray,actualArray,desName,synID])
            mseVal = mse(pred, lbl)
            numInputs = pred.view(-1,1).size(0)
            totalMSE.update(mseVal,numInputs)

    return totalMSE.avg,batchData


def main():
    # Training settings
    parser = argparse.ArgumentParser(description='GNN baselines on Synthesis Task Pytorch Geometric')
    parser.add_argument('--batch_size', type=int, default=64,
                        help='input batch size for training (default: 64)')
    parser.add_argument('--dataset', type=str, default="set1",
                        help='Split strategy (set1/set2/set3 default: set1)')
    parser.add_argument('--rundir', type=str, required=True,default="",
                        help='Output directory path to store result')
    parser.add_argument('--datadir', type=str, required=True, default="",
                        help='Dataset directory containing processed dataset, train test split file csvs')
    parser.add_argument('--model', type=str, required=True, default="",
                        help='Pre-trained model name in path <rundir> (eg. gcn-epoch30-loss-0.7734.pt)')
    parser.add_argument('--target', type=str, required=True, default="nodes",
                        help='Target label (nodes/area/delay), default:"nodes"')
    args = parser.parse_args()

    datasetChoice = args.dataset
    #RUN_DIR = args.rundir
    MODEL_NAME = args.model
    targetLbl = args.target

    # Hyperparameters
    batchSize = args.batch_size  # 64
    nodeEmbeddingDim = 3
    synthEncodingDim = 3

    IS_STATS_AVAILABLE = True
    ROOT_DIR = args.datadir  # '/scratch/abc586/OPENABC_DATASET'
    global DUMP_DIR
    DUMP_DIR = args.rundir
    MODEL_PATH = osp.join(DUMP_DIR,MODEL_NAME)

    # Load train and test datasets
    trainDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][0])
    testDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][1])

    if IS_STATS_AVAILABLE:
        with open(osp.join(ROOT_DIR, 'synthesisStatistics.pickle'), 'rb') as f:
            targetStats = pickle.load(f)
    else:
        print("\nNo pickle file found for number of gates")
        exit(0)

    meanVarTargetDict = computeMeanAndVarianceOfTargets(targetStats,targetVar=targetLbl)

    trainDS.transform = transforms.Compose([lambda data: addNormalizedTargets(data,targetStats,meanVarTargetDict,targetVar=targetLbl)])
    testDS.transform = transforms.Compose([lambda data: addNormalizedTargets(data,targetStats,meanVarTargetDict,targetVar=targetLbl)])



    num_classes = 1

    # Define the model
    synthFlowEncodingDim = trainDS[0].synVec.size()[0]*synthEncodingDim
    node_encoder = NodeEncoder(emb_dim=nodeEmbeddingDim)
    synthesis_encoder = SynthFlowEncoder(emb_dim=synthEncodingDim)

    model = SynthNet(node_encoder=node_encoder,synth_encoder=synthesis_encoder,n_classes=num_classes,synth_input_dim=synthFlowEncodingDim,node_input_dim=nodeEmbeddingDim)
    model.load_state_dict(torch.load(MODEL_PATH))
    device = getDevice()
    model = model.to(device)

    # Initialize the dataloaders
    train_dl = DataLoader(trainDS,shuffle=True,batch_size=batchSize,pin_memory=True,num_workers=4)
    test_dl = DataLoader(testDS,shuffle=True,batch_size=batchSize,pin_memory=True,num_workers=4)

    # Evaluate on train data
    trainMSE,trainBatchData = evaluate_plot(model, device, train_dl)
    NUM_BATCHES_TRAIN = len(train_dl)
    doScatterAndTopKRanking(NUM_BATCHES_TRAIN,batchSize,trainBatchData,DUMP_DIR,"train")

    # Evaluate on test data
    testMSE,testBatchData = evaluate_plot(model, device, test_dl)
    NUM_BATCHES_TEST = len(test_dl)
    doScatterAndTopKRanking(NUM_BATCHES_TEST,batchSize,testBatchData,DUMP_DIR,"test")
    
    num_params = sum(p.numel() for p in model.parameters())
    
    print("********************")
    print("Final run statistics")
    print("********************")
    print(f'Total Params: {num_params}')
    print("Training loss per sample:{}".format(trainMSE))
    print("Test loss per sample:{}".format(testMSE))
    print("********************")

    # Plot the charts for all epochs
    with open(osp.join(DUMP_DIR,'valid_curve.pkl'),'rb') as f:
        valid_curve = pickle.load(f)

    with open(osp.join(DUMP_DIR,'train_loss.pkl'),'rb') as f:
        train_loss = pickle.load(f)

    plotChart([i+1 for i in range(len(valid_curve))],valid_curve,"# Epochs","Loss","test_acc","Validation loss")
    plotChart([i+1 for i in range(len(train_loss))],train_loss,"# Epochs","Loss","train_loss","Training loss")

if __name__ == "__main__":
    main()