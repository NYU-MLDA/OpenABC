import argparse,os
import glob
import os.path as osp
SCRIPTS_DIR = None
DUMP_DIR = None
import pickle

synthesisOpToPosDic = \
{
     "refactor": 0,
     "refactor -z": 1,
     "rewrite" : 2,
     "rewrite -z" : 3,
     "resub" : 4,
     "resub -z" : 5,
     "balance" : 6
}
SCRIPT_VEC_DICT = {}

def setGlobalAndEnvironmentVars(cmdArgs):
    scriptsFolder = cmdArgs.script
    dumpFolder = cmdArgs.dump

    if not (os.path.exists(scriptsFolder) and os.path.exists(dumpFolder)):
        print("Paths are invalid. Please rerun")
        exit(1)

    global SCRIPTS_DIR,DUMP_DIR
    SCRIPTS_DIR = scriptsFolder
    DUMP_DIR = dumpFolder

def processScriptsAndCreateVecs():
    scriptFiles = glob.glob(osp.join(SCRIPTS_DIR,"*.script"))
    for sf in scriptFiles:
        synthID = int(osp.basename(sf).split(".script")[0].split("abc")[-1])
        with open(sf,'r') as f:
            fileLines = f.readlines()
        synthSeq = fileLines[3:-9]
        outputSeq = [synthesisOpToPosDic[i.split("\n")[0]] for i in synthSeq]
        SCRIPT_VEC_DICT[synthID] = outputSeq
    with open(osp.join(DUMP_DIR,"synthID2Vec.pickle"),'wb') as f:
        pickle.dump(SCRIPT_VEC_DICT,f)

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='Synthesis ID 2 Vector Pickling', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--script',required=True, help="Design Name")
    parser.add_argument('--dump',required=True, help="Circuit GML folder")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    processScriptsAndCreateVecs()

if __name__ == '__main__':
    main()