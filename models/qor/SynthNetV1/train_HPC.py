import os

import torch
from torch.optim.lr_scheduler import ReduceLROnPlateau
from model import *
from utils import *
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

def train(model,device,dataloader,optimizer):
    epochLoss = 0
    model.train()
    for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
        batch = batch.to(device)
        lbl = batch.nodes.reshape(-1, 1)
        optimizer.zero_grad()
        pred = model(batch)
        loss = criterion(pred,lbl)
        loss.backward()
        optimizer.step()
        epochLoss += loss.detach().item()
    return epochLoss


def evaluate(model, device, dataloader):
    model.eval()
    validLoss = 0
    with torch.no_grad():
        for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            batch = batch.to(device)
            pred = model(batch)
            lbl = batch.nodes.reshape(-1, 1)
            mseVal = mse(pred, lbl)
            validLoss += mseVal
    return validLoss

def evaluate_plot(model, device, dataloader):
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
    'mixmatchv2' : ["train_data_mixmatch_v2.csv","test_data_mixmatch_v2.csv"],
    'L1' : ["train_data_L1.csv","test_data_L1.csv"],
    'L2' : ["test_data_L1.csv","train_data_L1.csv"],
    'small' : ["train_data_small.csv","test_data_small.csv"]
}

datasetChoice = sys.argv[1]
RUN_DIR = sys.argv[2]

# Hyperparameters
batchSize = 64
num_epochs = 120
learning_rate = 0.001
nodeEmbeddingDim = 3
synthEncodingDim = 3
IS_STATS_AVAILABLE = True
ROOT_DIR = '/scratch/abc586/OPENABC_DATASET'
DUMP_DIR = osp.join('/scratch/abc586/OpenABC-dataset/SynthV9_AND',RUN_DIR)

if not osp.exists(DUMP_DIR):
    os.mkdir(DUMP_DIR)


# Load train and test datasets
trainDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][0])
testDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][1])

'''
areaDict,delayDict = getMinMaxTargetVal(trainDS)
areaTestDict,delayTestDict = checkUnseenDesInTest(areaDict,testDS)

if not (areaTestDict == None and delayTestDict == None):
   areaDict.update(areaTestDict)
   delayDict.update(delayTestDict)

# Transform the dataset for assigning min max scalar
trainDS.transform = transforms.Compose([lambda data: mapAttributesToTensor(data,areaDict,delayDict)])
testDS.transform = transforms.Compose([lambda data: mapAttributesToTensor(data,areaDict,delayDict)])
'''

'''
if IS_STATS_AVAILABLE:
    with open(osp.join(ROOT_DIR,'areaStats.pickle'),'rb') as f:
        areaStats = pickle.load(f)
    with open(osp.join(ROOT_DIR,'delayStats.pickle'),'rb') as f:
        delayStats = pickle.load(f)
else:
    areaStats,delayStats = getMeanAreaAndDelay(trainDS,testDS)
    with open(osp.join(ROOT_DIR,'areaStats.pickle'),'wb') as f:
        pickle.dump(areaStats,f)
    with open(osp.join(ROOT_DIR,'delayStats.pickle'),'wb') as f:
        pickle.dump(delayStats,f)

# Transform the dataset for assigning normalized from mean scalar
trainDS.transform = transforms.Compose([lambda data: mapMeanChangeToTensor(data,areaStats,delayStats)])
testDS.transform = transforms.Compose([lambda data: mapMeanChangeToTensor(data,areaStats,delayStats)])
'''


if IS_STATS_AVAILABLE:
    with open(osp.join(ROOT_DIR,'desDict.pickle'),'rb') as f:
        numGatesAndLPStats = pickle.load(f)
else:
    print("\nNo pickle file found for number of gates")
    exit(0)

meanVarNodesDict = computeMeanAndVarianceOfNodes(numGatesAndLPStats)

trainDS.transform = transforms.Compose([lambda data: addNormalizedGateAndLPData(data,numGatesAndLPStats,meanVarNodesDict)])
testDS.transform = transforms.Compose([lambda data: addNormalizedGateAndLPData(data,numGatesAndLPStats,meanVarNodesDict)])

criterion = torch.nn.MSELoss()
num_classes = 1


# Define the model
synthFlowEncodingDim = trainDS[0].synVec.size()[0]*synthEncodingDim


node_encoder = NodeEncoder(emb_dim=nodeEmbeddingDim)
synthesis_encoder = SynthFlowEncoder(emb_dim=synthEncodingDim)

model = SynthNet(node_encoder=node_encoder,synth_encoder=synthesis_encoder,n_classes=num_classes,synth_input_dim=synthFlowEncodingDim,node_input_dim=nodeEmbeddingDim)
optimizer = torch.optim.Adam(model.parameters(),lr=learning_rate)
scheduler = ReduceLROnPlateau(optimizer, 'min',verbose=True)
device = getDevice()
model = model.to(device)

# Split the training data into training and validation dataset
training_validation_samples = [int(0.8*len(trainDS)),len(trainDS)-int(0.8*len(trainDS))]
train_DS,valid_DS = random_split(trainDS,training_validation_samples)


# Initialize the dataloaders
train_dl = DataLoader(train_DS,shuffle=True,batch_size=batchSize,pin_memory=True,num_workers=4)
valid_dl = DataLoader(valid_DS,shuffle=True,batch_size=batchSize,pin_memory=True,num_workers=4)
test_dl = DataLoader(testDS,shuffle=True,batch_size=batchSize,pin_memory=True,num_workers=4)


# Monitor the loss parameters
valid_curve = []
test_curve = []
train_curve = []
train_loss = []


for ep in range(1, num_epochs + 1):
    print("\nEpoch [{}/{}]".format(ep, num_epochs))
    print("\nTraining..")
    trainLoss = train(model, device, train_dl, optimizer)

    print("\nEvaluation..")
    validLoss = evaluate(model, device, valid_dl)

    print({'Train loss': trainLoss,'Validation loss': validLoss})
    valid_curve.append(validLoss)
    train_loss.append(trainLoss)
    torch.save(model.state_dict(), osp.join(DUMP_DIR, 'gcn-epoch-{}-val_loss-{:.3f}.pt'.format(ep, validLoss)))
    scheduler.step(validLoss)

best_val_epoch = np.argmax(np.array(valid_curve))
testAcc = evaluate(model, device, test_dl)
print("\nTest loss.. :"+str(testAcc))


# Save training data for future plots
with open(osp.join(DUMP_DIR,'valid_curve.pkl'),'wb') as f:
    pickle.dump(valid_curve,f)

with open(osp.join(DUMP_DIR,'train_loss.pkl'),'wb') as f:
    pickle.dump(train_loss,f)

##### EVALUATION ######
plotChart([i+1 for i in range(len(valid_curve))],valid_curve,"# Epochs","Loss","test_acc","Validation loss")
plotChart([i+1 for i in range(len(train_loss))],train_loss,"# Epochs","Loss","train_loss","Training loss")

# Evaluate on train data
trainMSE,trainBatchData = evaluate_plot(model, device, train_dl)
NUM_BATCHES_TRAIN = len(train_dl)
doScatterPlot(NUM_BATCHES_TRAIN,batchSize,trainBatchData,DUMP_DIR,"train")

# Evaluate on validation data
validMSE,validBatchData = evaluate_plot(model, device, valid_dl)
NUM_BATCHES_VALID = len(valid_dl)
doScatterPlot(NUM_BATCHES_VALID,batchSize,validBatchData,DUMP_DIR,"valid")

# Evaluate on test data
testMSE,testBatchData = evaluate_plot(model, device, test_dl)
NUM_BATCHES_TEST = len(test_dl)
doScatterPlot(NUM_BATCHES_TEST,batchSize,testBatchData,DUMP_DIR,"test")
