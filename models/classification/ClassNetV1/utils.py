import torch
from sklearn.metrics import mean_squared_error,mean_absolute_error
import matplotlib.pyplot as plt
import os.path as osp
import pandas as pd
import numpy as np

def computeMeanAndVarianceOfNodes(numGatesAndLPStatsDict):
    meanAndVarNodesDict = {}
    for des in numGatesAndLPStatsDict.keys():
        andGates = numGatesAndLPStatsDict[des][0]
        meanGates = np.mean(np.array(andGates))
        stdGates = np.std(np.array(andGates))
        meanAndVarNodesDict[des] = [meanGates,stdGates]
    return meanAndVarNodesDict

def addNormalizedGateAndLPData(data,numGatesAndLPStatsDict,normalizedDataDict):
    sid = data.synID[0]
    desName = data.desName[0]
    #normNodes = (numGatesAndLPStatsDict[desName][0][sid] + numGatesAndLPStatsDict[desName][1][sid] - normalizedDataDict[desName][0])/normalizedDataDict[desName][1]
    normNodes = (numGatesAndLPStatsDict[desName][0][sid] - normalizedDataDict[desName][0]) / normalizedDataDict[desName][1]
    data.nodes = torch.tensor([normNodes],dtype=torch.float32) # Adding AND and NOT gates
    return data

def addGateAndLPData(data,numGatesAndLPStatsDict):
    sid = data.synID[0]
    desName = data.desName[0]
    #data.nodes = torch.tensor([numGatesAndLPStatsDict[desName][0][sid] + numGatesAndLPStatsDict[desName][1][sid]],dtype=torch.float32) # Adding AND and NOT gates
    data.nodes = torch.tensor([numGatesAndLPStatsDict[desName][0][sid]],dtype=torch.float32)  # AND gates
    data.lp = torch.tensor([numGatesAndLPStatsDict[desName][2][sid]],dtype=torch.float32)
    return data

# Torch.std_mean returns tuple with std first and mean second term
def mapMeanChangeToTensor(data,areaStatsDict,delayStatsDict):
    area = data.area
    delay = data.delay
    data.area = (area - areaStatsDict[data.desName[0]][1]) / areaStatsDict[data.desName[0]][0]
    data.delay = (delay - delayStatsDict[data.desName[0]][1]) / delayStatsDict[data.desName[0]][0]
    assert(data.area > -10 and data.area < 10)
    return data

# Element 0 is area and 1 is delay
def getMeanAreaAndDelay(trainDS,testDS):
    desNamesTrain = set(elem.desName[0] for elem in trainDS)
    desNamesTest = set(elem.desName[0] for elem in testDS)
    desNameTotal = desNamesTrain.union(desNamesTest)
    desStatsArea = {}
    desStatsDelay = {}
    delayStats = {}
    areaStats = {}
    for des in desNameTotal:
        desStatsArea[des] = []
        desStatsDelay[des] = []
    for elem in trainDS:
        desStatsArea[elem.desName[0]].append(elem.area)
        desStatsDelay[elem.desName[0]].append(elem.delay)
    for elem in testDS:
        desStatsArea[elem.desName[0]].append(elem.area)
        desStatsDelay[elem.desName[0]].append(elem.delay)
    for des in desNameTotal:
        areaStats[des] = torch.std_mean(torch.tensor(desStatsArea[des]))
        delayStats[des] = torch.std_mean(torch.tensor(desStatsDelay[des]))
    return areaStats,delayStats


def getMinMaxTargetVal(dataSet):
    desMinMaxAreaVal = {}
    desMinMaxDelayVal = {}
    desNames = [elem.desName[0] for elem in dataSet]
    for des in desNames:
        desMinMaxAreaVal[des] = [None,None]
        desMinMaxDelayVal[des] = [None,None]
    for ditem in dataSet[1:]:
        des = ditem.desName[0]
        area = ditem.area
        delay = ditem.delay
        # Area computation
        desMinMaxAreaVal[des][0] = area if (area > desMinMaxAreaVal[des][0] or desMinMaxAreaVal[des][0] == None) else desMinMaxAreaVal[des][0]
        desMinMaxAreaVal[des][1] = area if (area < desMinMaxAreaVal[des][1] or desMinMaxAreaVal[des][1] == None) else desMinMaxAreaVal[des][1]
        # Delay computation
        desMinMaxDelayVal[des][0] = delay if (delay > desMinMaxDelayVal[des][0] or desMinMaxDelayVal[des][1] == None) else desMinMaxDelayVal[des][0]
        desMinMaxDelayVal[des][1] = delay if (delay < desMinMaxDelayVal[des][1] or desMinMaxDelayVal[des][1] == None) else desMinMaxDelayVal[des][1]
    return desMinMaxAreaVal,desMinMaxDelayVal

def checkUnseenDesInTest(areaDict,testDS):
    unseenDesigns = set(elem.desName[0] for elem in testDS if not elem.desName[0] in areaDict.keys())
    if len(unseenDesigns) > 0:
        desMinMaxAreaVal = {}
        desMinMaxDelayVal = {}
        for des in unseenDesigns:
            desMinMaxAreaVal[des] = [0, -1]
            desMinMaxDelayVal[des] = [0,-1]
        for ditem in testDS:
            des = ditem.desName[0]
            area = ditem.area
            delay = ditem.delay
            if( not des in unseenDesigns):
                pass
            # Area computation
            desMinMaxAreaVal[des][0] = area if area > desMinMaxAreaVal[des][0] else desMinMaxAreaVal[des][0]
            desMinMaxAreaVal[des][1] = area if (area < desMinMaxAreaVal[des][1] or area == -1) else desMinMaxAreaVal[des][1]
            # Delay computation
            desMinMaxDelayVal[des][0] = delay if delay > desMinMaxDelayVal[des][0] else desMinMaxDelayVal[des][0]
            desMinMaxDelayVal[des][1] = delay if (delay < desMinMaxDelayVal[des][1] or delay == -1) else desMinMaxDelayVal[des][1]
        return desMinMaxAreaVal, desMinMaxDelayVal
    else:
        return None,None


def getDevice():
    if torch.cuda.is_available():
        return 'cuda'
    else:
        return 'cpu'

def desName_to_idx(aigData):
    desNames = [elem.desName[0] for elem in aigData]
    desNameIdxDict = {}
    idxDesNameDict = {}
    i=0
    for des in desNames:
        if not des in desNameIdxDict.keys():
            desNameIdxDict[des] = i
            idxDesNameDict[i] = des
            i+=1
    return desNameIdxDict,idxDesNameDict

def mapNameToLabel(data,desNameIdxDict):
    labelName = data.desName[0]
    data.desLabel = torch.tensor([desNameIdxDict[labelName]])
    return data

def mapAttributesToTensor(data,areaDict,delayDict):
    area = data.area
    delay = data.delay
    minMaxArea = areaDict[data.desName[0]]
    minMaxDelay = delayDict[data.desName[0]]
    data.area = (area - minMaxArea[1])/(minMaxArea[0] - minMaxArea[1])
    data.delay = (delay - minMaxDelay[1]) / (minMaxDelay[0] - minMaxDelay[1])
    #adp = data.adp
    #data.area_t = torch.tensor([area])
    #data.adp_t = torch.tensor([adp])
    #data.delay_t = torch.tensor([delay])
    return data

def mse(y_pred,y_true):
    return mean_squared_error(y_true.view(-1,1).detach().cpu().numpy(),y_pred.view(-1,1).detach().cpu().numpy())

def mae(y_pred,y_true):
    return mean_absolute_error(y_true.view(-1,1).detach().cpu().numpy(),y_pred.view(-1,1).detach().cpu().numpy())

def doScatterPlot(batchLen,batchSize,batchData,dumpDir,trainMode):
    predList = []
    actualList = []
    designList = []
    for i in range(batchLen):
        numElemsInBatch = len(batchData[i][0])
        for batchID in range(numElemsInBatch):
            predList.append(batchData[i][0][batchID][0])
            actualList.append(batchData[i][1][batchID][0])
            designList.append(batchData[i][2][batchID][0])

    scatterPlotDF = pd.DataFrame({'designs': designList,
                                  'prediction': predList,
                                  'actual': actualList})

    uniqueDesignList = scatterPlotDF.designs.unique()

    for d in uniqueDesignList:
        designDF = scatterPlotDF[scatterPlotDF.designs == d]
        designDF.plot.scatter(x='actual', y='prediction', c='DarkBlue')
        plt.title(d)
        fileName = osp.join(dumpDir,"scatterPlot_"+trainMode+"_"+d+".png")
        #else:
        #    fileName = osp.join(dumpDir,"scatterPlot_test_"+d+".png")
        plt.savefig(fileName,fmt='png',bbox_inches='tight')


class AverageMeter(object):
    """Computes and stores the average and current value"""
    def __init__(self):
        self.reset()

    def reset(self):
        self.val = 0
        self.avg = 0
        self.sum = 0
        self.count = 0

    def update(self, val, n=1):
        self.val = val
        self.sum += val * n
        self.count += n
        self.avg = self.sum / self.count