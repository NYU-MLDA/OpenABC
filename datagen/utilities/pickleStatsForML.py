import os
import pickle,argparse

import os.path as osp
import pandas as pd
import glob

statsFolder = None

def getAllStatistics(adpPath,finalAigPath):
    desDict = {}
    adpCsvFiles = glob.glob(osp.join(adpPath,"*.csv"))
    finalAigCsvFiles = glob.glob(osp.join(finalAigPath,"*.csv"))
    designFileDicts = {}
    for csvF in finalAigCsvFiles:
        desName = osp.basename(csvF).split("processed_")[1].split(".csv")[0]
        designFileDicts[desName] = [csvF]
    for csvF in adpCsvFiles:
        desName = osp.basename(csvF).split("adp_")[1].split(".csv")[0]
        designFileDicts[desName].append(csvF)

    for des in designFileDicts.keys():
        if (len(designFileDicts[des]) < 2):
            continue # Should have both the statistics available
        desDF_fAIG = pd.read_csv(designFileDicts[des][0])
        desDF_fAIG = desDF_fAIG.sort_values(['sid'], ascending=True)
        ANDgates = desDF_fAIG["AND"].tolist()
        NOTgates = desDF_fAIG["NOT"].tolist()
        lpLen = desDF_fAIG["LP"].tolist()

        desDF_adp = pd.read_csv(designFileDicts[des][1])
        desDF_adp = desDF_adp.sort_values(['sid'], ascending=True)
        area = desDF_adp["area"].tolist()
        delay = desDF_adp["delay"].tolist()
        desDict[des] = [ANDgates,NOTgates,lpLen,area,delay]

    with open(osp.join(statsFolder,"synthesisStatistics.pickle"),'wb') as f:
        pickle.dump(desDict,f)

def setGlobalAndEnvironmentVars(cmdArgs):
    global statsFolder
    statsFolder = cmdArgs.stats
    adp_path=osp.join(statsFolder,"adp")
    final_aig_path = osp.join(statsFolder,"finalAig")
    return adp_path,final_aig_path

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='Final AIG statistics collection', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--stats',required=True, help="Stats data folder (e.g. OPENABC_DATASET/statistics)")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    adpPath,finalAigPath = setGlobalAndEnvironmentVars(cmdArgs)
    getAllStatistics(adpPath,finalAigPath)

if __name__ == '__main__':
    main()