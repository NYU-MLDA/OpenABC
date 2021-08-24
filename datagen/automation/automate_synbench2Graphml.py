import shutil

import networkx as nx
#import dgl
import argparse,os,re
import pandas as pd

homeDir = None#os.environ["HOME"]
graphmlDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","graphml")
benchDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","bench")
scriptsDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","synScripts")
libraryCellFolder = None #os.path.join(homeDir,"OPENABC_DATASET","lib")

designSet1 = ['i2c','spi','des3_area','ss_pcm','usb_phy','sasc','wb_dma','simple_spi']
designSet2 = ['dynamic_node','aes','pci','ac97_ctrl','mem_ctrl','tv80','fpu']
designSet3 = ['wb_conmax','tinyRocket','aes_xcrypt','aes_secworks']
designSet4 = ['jpeg','bp_be','ethernet','vga_lcd','picosoc']
designSet5 = ['dft','idft','fir','iir','sha256','swerv']


designs = designSet1+designSet2+designSet3+designSet4+designSet5
numSynthesizedDesigns = 1500
numSynthesisFlows = 20


def processAIGBench():
    for des in designs:
        shellScript = des+"_GMLGeneration.sh"
        desGraphmlFolder = os.path.join(graphmlDataFolder,des)
        shellScriptFile = open(os.path.join(graphmlDataFolder,shellScript),'w+')
        srcBenchFolder = os.path.join(benchDataFolder,des)
        shellScriptFile.write("#!/bin/bash\n")
        if os.path.exists(desGraphmlFolder):
            shutil.rmtree(desGraphmlFolder)
        os.mkdir(desGraphmlFolder)
        for i in range(numSynthesizedDesigns):
            desSynFolder = os.path.join(desGraphmlFolder, "syn" + str(i))
            mkdirSynCmd = "mkdir "+desSynFolder
            shellScriptFile.write(mkdirSynCmd+"\n")
            # Create temp directory and unzip bench files to the folder.
            tempDir = os.path.join(srcBenchFolder,"syn"+str(i))
            mkdirCmd = "mkdir "+tempDir
            unzipCmdOfBenchFiles = "unzip -q "+tempDir+".zip -d "+tempDir
            shellScriptFile.write(mkdirCmd+"\n")
            shellScriptFile.write(unzipCmdOfBenchFiles+"\n")
            for j in range(1,numSynthesisFlows+1):
                benchFilePath = os.path.join(srcBenchFolder,"syn"+str(i),des + "_syn" + str(i) + "_step" + str(j) + ".bench")
                benchAig2GmlRunScript = "python andAIG2Graphml.py --bench "+benchFilePath+" --gml "+desSynFolder + " &"
                shellScriptFile.write(benchAig2GmlRunScript+"\n")
            shellScriptFile.write("wait < <(jobs -p)\n")
            zipFolderCmd = "zip -q -j -r "+desSynFolder+".zip "+desSynFolder+"/"
            shellScriptFile.write(zipFolderCmd+"\n")
            shellScriptFile.write("rm -fr "+tempDir+os.sep+"\n")
            shellScriptFile.write("rm -fr "+desSynFolder+os.sep+"\n")
        shellScriptFile.close()

    nohupShellScriptFile = os.path.join(graphmlDataFolder,"nohup_gmlGeneration.sh")
    nohupShellScriptFileWriter = open(nohupShellScriptFile,'w+')
    for des in designs:
        shellScript = os.path.join(graphmlDataFolder,des + "_GMLGeneration.sh")
        nohupShellScriptFileWriter.write("nohup "+shellScript+" > log_"+des+".txt 2>&1 &\n")
    nohupShellScriptFileWriter.close()

def setGlobalAndEnvironmentVars(cmdArgs):
    global homeDir,benchDataFolder,scriptsDataFolder,libraryCellFolder,graphmlDataFolder
    homeDir = cmdArgs.home
    if not (os.path.exists(homeDir)):
        print("\nPlease rerun with appropriate paths")
    benchDataFolder = os.path.join(homeDir,"OPENABC_DATASET","bench")
    graphmlDataFolder = os.path.join(homeDir,"OPENABC_DATASET","graphml")
    scriptsDataFolder = os.path.join(homeDir,"OPENABC_DATASET","synScripts")
    libraryCellFolder = os.path.join(homeDir,"OPENABC_DATASET","lib")

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='AUTOMATE SYNTHESIS FLOW', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--home',required=True, help="OpenABC dataset home path")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    processAIGBench()

if __name__ == '__main__':
    main()