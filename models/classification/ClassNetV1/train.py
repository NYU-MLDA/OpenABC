import torch
from torch.optim.lr_scheduler import ReduceLROnPlateau
#from NetlistClassification.model import *
from model import *
#from NetlistClassification.utils import *
from utils import *
#from NetlistClassification.netlistDataset import *
from netlistDataset import *
import os

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
        lbl = batch.desLabel
        pred = model(batch)
        optimizer.zero_grad()
        loss = criterion(pred,lbl)
        loss.backward()
        optimizer.step()
        epochLoss += loss.detach().item()
    return epochLoss

def accuracy(prediction,targetLabels):
    predLabels = torch.argmax(F.softmax(prediction,dim=1),dim=1)
    return torch.sum(predLabels == targetLabels).item()/len(targetLabels)

def evaluate(model, device, dataloader):
    batchAcc = []
    #yPred = []
    #yTrue = []
    model.eval()
    with torch.no_grad():
        for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            batch = batch.to(device)
            with torch.no_grad():
                pred = model(batch)
            lbl = batch.desLabel
            accVal = accuracy(pred, lbl)
            #yTrue.append(lbl.view(-1, 1).detach().cpu())
            #yPred.append(torch.argmax(F.softmax(pred, dim=1), dim=1).view(-1, 1).detach().cpu())
            batchAcc.append(accVal)

        averageAcc = np.sum(batchAcc) / len(batchAcc)
    return averageAcc



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
num_epochs = 60
learning_rate = 0.001
nodeEmbeddingDim = 3
IS_STATS_AVAILABLE = True
ROOT_DIR = '/scratch/abc586/OPENABC2_DATASET'
DUMP_DIR = osp.join('/scratch/abc586/OpenABC2-dataset/ClassNetV1',RUN_DIR)

if not osp.exists(DUMP_DIR):
    os.mkdir(DUMP_DIR)

# Load train and test datasets
trainDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][0])
testDS = NetlistGraphDataset(root=ROOT_DIR,filePath=datasetDict[datasetChoice][1])


# Transform the dataset for assigning class labels
desNameIdxDict,idx2DesNameDict = desName_to_idx(trainDS)
num_classes = len(desNameIdxDict.keys())
print("\nNum classes:"+str(num_classes))
trainDS.transform = transforms.Compose([lambda data: mapNameToLabel(data,desNameIdxDict)])
testDS.transform = transforms.Compose([lambda data: mapNameToLabel(data,desNameIdxDict)])


# Define the loss function
criterion = torch.nn.CrossEntropyLoss()


# Define the model
node_encoder = NodeEncoder(emb_dim=nodeEmbeddingDim)
#model = GNN(node_encoder=node_encoder,n_classes=num_classes,input_dim=nodeEmbeddingDim*2,num_layer=2)
# Only node type encoding, Number of inverter edges in predecessor shouldn't be encoded
model = GNN(node_encoder=node_encoder,n_classes=num_classes,input_dim=nodeEmbeddingDim+1,num_layer=2)
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
    trainAcc = evaluate(model, device, train_dl)
    validAcc = evaluate(model, device, valid_dl)
    print({'Train loss': trainLoss, 'Train accuracy': trainAcc, 'Validation accuracy': validAcc})

    train_curve.append(trainAcc)
    valid_curve.append(validAcc)
    train_loss.append(trainLoss)
    #if (validAcc >= np.max(np.array(valid_curve))):
    torch.save(model.state_dict(), osp.join(DUMP_DIR, 'gcn-epoch-{}-val_acc-{:.2f}.pt'.format(ep, validAcc)))
    scheduler.step(trainLoss)

    # test_curve.append(testAcc)

best_val_epoch = np.argmax(np.array(valid_curve))
testAcc = evaluate(model, device, test_dl)
print("\nTest accuracy.. :"+str(testAcc))

# Save training data for future plots
with open(osp.join(DUMP_DIR,'train_curve.pkl'),'wb') as f:
    pickle.dump(train_curve,f)

with open(osp.join(DUMP_DIR,'valid_curve.pkl'),'wb') as f:
    pickle.dump(valid_curve,f)

with open(osp.join(DUMP_DIR,'train_loss.pkl'),'wb') as f:
    pickle.dump(train_loss,f)

with open(osp.join(DUMP_DIR,'testAcc.pkl'),'wb') as f:
    pickle.dump(testAcc,f)

with open(osp.join(DUMP_DIR,'idx2DesNameDict.pkl'),'wb') as f:
    pickle.dump(idx2DesNameDict,f)


plotChart([i+1 for i,_ in enumerate(train_curve)],train_curve,"# Epochs","Accuracy (%)","train_acc","Training accuracy")
plotChart([i+1 for i,_ in enumerate(valid_curve)],valid_curve,"# Epochs","Accuracy (%)","valid_acc","Validation accuracy")
plotChart([i+1 for i,_ in enumerate(train_loss)],train_loss,"# Epochs","Loss","train_loss","Training loss")