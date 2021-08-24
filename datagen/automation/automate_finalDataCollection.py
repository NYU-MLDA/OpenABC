import networkx as nx
#import dgl
import argparse,os,re
import pandas as pd
import os.path as osp

homeDir = None#os.environ["HOME"]
graphDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","bench")
statsDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","synScripts")

designSet1 = ['i2c','spi','des3_area','ss_pcm','usb_phy','sasc','wb_dma','simple_spi']
designSet2 = ['dynamic_node','aes','pci','ac97_ctrl','mem_ctrl','tv80','fpu']
designSet3 = ['wb_conmax','tinyRocket','aes_xcrypt','aes_secworks']
designSet4 = ['jpeg','bp_be','ethernet','vga_lcd','picosoc']
designSet5 = ['dft','idft','fir','iir','sha256']


designs = designSet1+designSet2+designSet3+designSet4+designSet5

def collectFinalStats():
    global graphDataFolder,statsDataFolder
    designScriptFile = open(os.path.join(graphmlDataFolder,'collectFinalAIGData.sh'),'w+')
    designScriptFile.write("#!/bin/bash\n")
    for des in designs:
        cmd = 'python collectGraphStatistics.py --gml '+osp.join(graphmlDataFolder,des)+" --des "+des+" --stats "+statsDataFolder
        designScriptFile.write(cmd+"\n")
    designScriptFile.close()

def setGlobalAndEnvironmentVars(cmdArgs):
    global homeDir,benchDataFolder,statsDataFolder,graphmlDataFolder
    homeDir = cmdArgs.home
    if not (os.path.exists(homeDir)):
        print("\nPlease rerun with appropriate paths")
    benchDataFolder = os.path.join(homeDir,"OPENABC_DATASET","bench")
    graphmlDataFolder = os.path.join(homeDir,"OPENABC_DATASET","graphml")
    statsDataFolder = os.path.join(homeDir,"OPENABC_DATASET","statistics")

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='AUTOMATE SYNTHESIS FLOW', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--home',required=True, help="OpenABC dataset home path")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    collectFinalStats()

if __name__ == '__main__':
    main()