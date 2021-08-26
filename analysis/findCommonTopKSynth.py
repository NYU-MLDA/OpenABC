import argparse,os
import pandas as pd
import os.path as osp
import numpy as np
import glob
INPUT_CSV_FOLDER = None

import seaborn as sns
import matplotlib.pyplot as plt

K = None

def histogram_intersection(h1, h2):
    set1 = set(h1[:K])
    set2 = set(h2[:K])
    commonElems = len(set1.intersection(set2))
    return commonElems/K


def plotCorrelationPlots(featureDF,feature):
    corr = featureDF.corr(method=histogram_intersection)

    # Generate a mask for the upper triangle
    mask = np.triu(np.ones_like(corr, dtype=bool))

    # Set up the matplotlib figure
    f, ax = plt.subplots(figsize=(11, 9))

    # Generate a custom diverging colormap
    cmap = sns.diverging_palette(250, 20, as_cmap=True)
    #cmap = sns.color_palette("rocket_r", as_cmap=True)

    # Draw the heatmap with the mask and correct aspect ratio
    sns.heatmap(corr, mask=mask, cmap=cmap, vmax=.3, center=0,
                square=True, linewidths=.5, cbar_kws={"shrink": .5})

    plt.savefig(feature+"_correlation.pdf",fmt='pdf',bbox_to_inches='tight')
    featureDF.to_csv(feature+".csv",index=False)


def computeCorrelationCoeffs(dfDict):
    desList = dfDict.keys()
    andDF = None
    for i,des in enumerate(desList):
        dfList = dfDict[des]
        andSIDrank = dfList[0]["sid"]
        if andDF is None:
            andDF = pd.DataFrame({des : andSIDrank.to_list()})
        else:
            andDF[des] = andSIDrank.to_list()
    plotCorrelationPlots(andDF,'AND')


def processCSVFiles():
    csvFiles = glob.glob(osp.join(INPUT_CSV_FOLDER,"*.csv"))
    dfDict = {}
    for csv_file in csvFiles:
        #print(csv_file)
        desName = osp.basename(csv_file).split("synthData_")[-1].split(".csv")[0]
        df = pd.read_csv(csv_file)
        df['desName'] = desName
        df_AND = df.sort_values(['AND'], ascending=True)
        dfDict[desName] = [df_AND]

    return dfDict


def setGlobalAndEnvironmentVars(cmdArgs):
    csvFolder = cmdArgs.csv
    if not (os.path.exists(csvFolder)):
        print("Paths are invalid. Please rerun")
        exit(1)
    global INPUT_CSV_FOLDER, GML_LOC_FOLDER, PRED_LOC,K
    INPUT_CSV_FOLDER = csvFolder
    K = cmdArgs.k


def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='CIRCUIT PREDICTION AND PLOTS', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--csv',required=True, help="Path of synthesis csv folders")
    parser.add_argument('--k', required=True,type=int,default=75,help="Top k scripts similarity (default: k=75)")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    dfDictionary=processCSVFiles()
    computeCorrelationCoeffs(dfDictionary)


if __name__ == '__main__':
    main()