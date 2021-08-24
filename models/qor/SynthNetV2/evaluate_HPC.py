import torch
from torch.optim.lr_scheduler import ReduceLROnPlateau
#from NetlistClassification.model import *
from model import *
#from NetlistClassification.utils import *
from utils import *
#from NetlistClassification.netlistDataset import *
from netlistDataset import *

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



def evaluate(model, device, dataloader):
    model.eval()
    totalMSE = 0
    batchData = []
    with torch.no_grad():
        for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            batch = batch.to(device)
            pred = model(batch)
            lbl = batch.nodes.reshape(-1, 1)
            desName = batch.desName
            predArray = pred.view(-1,1).detach().cpu().numpy()
            actualArray = lbl.view(-1,1).detach().cpu().numpy()
            batchData.append([predArray,actualArray,desName])
            mseVal = mse(pred, lbl)
            totalMSE += mseVal

    return totalMSE,batchData

datasetDict =  {
    'set1' : ["train_data_set1.csv","test_data_set1.csv"],
    'set2' : ["train_data_set2.csv","test_data_set2.csv"],
    'v3' : ["train_data_v3.csv","test_data_v3.csv"],
    'mixmatchv1' : ["train_data_mixmatch_v1.csv","test_data_mixmatch_v1.csv"],
    'mixmatchv2' : ["train_data_mixmatch_v2.csv","test_data_mixmatch_v2.csv"]
}

datasetChoice = sys.argv[1]
RUN_DIR = sys.argv[2]
MODEL_NAME = sys.argv[3]

# Hyperparameters
batchSize = 32
nodeEmbeddingDim = 3
synthEncodingDim = 3
IS_STATS_AVAILABLE = True
ROOT_DIR = '/scratch/abc586/ADP_REGRESS_DATASET'
DUMP_DIR = osp.join('/scratch/abc586/or-synthesis/models/SynthV12',RUN_DIR)
MODEL_PATH = osp.join(DUMP_DIR,MODEL_NAME)



# Plot the charts for all epochs
with open(osp.join(DUMP_DIR,'valid_curve.pkl'),'rb') as f:
    valid_curve = pickle.load(f)

with open(osp.join(DUMP_DIR,'train_loss.pkl'),'rb') as f:
    train_loss = pickle.load(f)

plotChart([i+1 for i in range(len(valid_curve))],valid_curve,"# Epochs","Loss","test_acc","Validation loss")
plotChart([i+1 for i in range(len(train_loss))],train_loss,"# Epochs","Loss","train_loss","Training loss")


# Load train and test datasets
trainDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][0])
testDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][1])


if IS_STATS_AVAILABLE:
    with open(osp.join(ROOT_DIR,'desDict.pickle'),'rb') as f:
        numGatesAndLPStats = pickle.load(f)
else:
    print("\nNo pickle file found for number of gates")
    exit(0)

meanVarNodesDict = computeMeanAndVarianceOfNodes(numGatesAndLPStats)

trainDS.transform = transforms.Compose([lambda data: addNormalizedGateAndLPData(data,numGatesAndLPStats,meanVarNodesDict)])
testDS.transform = transforms.Compose([lambda data: addNormalizedGateAndLPData(data,numGatesAndLPStats,meanVarNodesDict)])

# Define the loss function
criterion = torch.nn.MSELoss()
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
trainMSE,trainBatchData = evaluate(model, device, train_dl)
NUM_BATCHES_TRAIN = len(train_dl)
doScatterPlot(NUM_BATCHES_TRAIN,batchSize,trainBatchData,DUMP_DIR,True)


# Evaluate on test data
testMSE,testBatchData = evaluate(model, device, test_dl)
NUM_BATCHES_TEST = len(test_dl)
doScatterPlot(NUM_BATCHES_TEST,batchSize,testBatchData,DUMP_DIR,False)