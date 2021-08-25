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
import argparse

datasetDict =  {
    'set1' : ["train_data_set1.csv","test_data_set1.csv"]
}

DUMP_DIR = None
# Define the loss function
criterion = torch.nn.CrossEntropyLoss()

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
    model.eval()
    with torch.no_grad():
        for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            batch = batch.to(device)
            with torch.no_grad():
                pred = model(batch)
            lbl = batch.desLabel
            accVal = accuracy(pred, lbl)
            batchAcc.append(accVal)

        averageAcc = np.sum(batchAcc) / len(batchAcc)
    return averageAcc

def main():
    # Training settings
    parser = argparse.ArgumentParser(description='GNN baselines on Synthesis Task Pytorch Geometric')
    parser.add_argument('--batch_size', type=int, default=64,
                        help='input batch size for training (default: 64)')
    parser.add_argument('--lp', type=int, default=1,
                        help='Learning problem (QoR prediction: 1,Classification: 2)')
    parser.add_argument('--lr', type=float, default=0.001,
                        help='learning rate (default: 0.001)')
    parser.add_argument('--epochs', type=int, default=80,
                        help='number of epochs to train (default: 80)')
    parser.add_argument('--dataset', type=str, default="set1",
                        help='Split strategy (set1/set2/set3 default: set1)')
    parser.add_argument('--rundir', type=str, required=True,default="",
                        help='Output directory path to store result')
    parser.add_argument('--datadir', type=str, required=True, default="",
                        help='Dataset directory containing processed dataset, train test split file csvs')
    args = parser.parse_args()

    datasetChoice = args.dataset
    #RUN_DIR = sys.argv[2]

    # Hyperparameters
    batchSize = args.batch_size  # 64
    num_epochs = args.epoch  # 80
    learning_rate = args.lr  # 0.001
    learningProblem = args.lp
    nodeEmbeddingDim = 3

    IS_STATS_AVAILABLE = True
    ROOT_DIR = args.datadir  # '/scratch/abc586/OPENABC_DATASET'
    global DUMP_DIR
    DUMP_DIR = args.rundir  # osp.join('/scratch/abc586/OpenABC-dataset/SynthV9_AND',RUN_DIR)

    if not osp.exists(DUMP_DIR):
        os.mkdir(DUMP_DIR)

    # Load train and test datasets
    trainDS = NetlistGraphDataset(root=osp.join(ROOT_DIR,"lp"+str(learningProblem)),filePath=datasetDict[datasetChoice][0])
    testDS = NetlistGraphDataset(root=osp.join(ROOT_DIR,"lp"+str(learningProblem)),filePath=datasetDict[datasetChoice][1])


    # Transform the dataset for assigning class labels
    desNameIdxDict,idx2DesNameDict = desName_to_idx(trainDS)
    num_classes = len(desNameIdxDict.keys())
    print("\nNum classes:"+str(num_classes))
    trainDS.transform = transforms.Compose([lambda data: mapNameToLabel(data,desNameIdxDict)])
    testDS.transform = transforms.Compose([lambda data: mapNameToLabel(data,desNameIdxDict)])

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

if __name__ == "__main__":
    main()