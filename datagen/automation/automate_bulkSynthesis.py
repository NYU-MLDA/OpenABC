import os, sys,random,shutil
import argparse

homeDir = None#os.environ["HOME"]
graphDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","bench")
scriptsDataFolder = None #os.path.join(homeDir,"OPENABC_DATASET","synScripts")
libraryCellFolder = None #os.path.join(homeDir,"OPENABC_DATASET","lib")

designSet1 = ['i2c','spi','des3_area','ss_pcm','usb_phy','sasc','wb_dma','simple_spi']
designSet2 = ['dynamic_node','aes','pci','ac97_ctrl','mem_ctrl','tv80','fpu']
designSet3 = ['wb_conmax','tinyRocket','aes_xcrypt','aes_secworks']
designSet4 = ['jpeg','bp_be','ethernet','vga_lcd','picosoc']
designSet5 = ['dft','idft','fir','iir','sha256']


designs = designSet1+designSet2+designSet3+designSet4+designSet5
numSynthesizedScript = 1500
delimiter = '\n'

def genShellScriptForSynthesis():
    for des in designs:
        designScriptFile = open(os.path.join(graphDataFolder,'synthesisBulk_'+des+'.sh'),'w+')
        logFolder = os.path.join(graphDataFolder,des,'log_'+des)
        if not os.path.exists(logFolder):
            os.mkdir(logFolder)
        for i in range(numSynthesizedScript):
            synScriptPath = os.path.join(scriptsDataFolder,des,'abc'+str(i)+".script")
            logFilePath = os.path.join(logFolder,'log_'+des+'_syn'+str(i)+'.log')
            synRunCmd = 'yosys-abc -f'+synScriptPath+' > '+logFilePath
            synFolder = os.path.join(graphDataFolder,des,'syn'+str(i))
            zipCmd = 'zip -q -j -r '+synFolder+'.zip '+synFolder+"/"
            rmCmd = 'rm -fr '+synFolder+"/"
            designScriptFile.write(synRunCmd+delimiter)
            designScriptFile.write(zipCmd+delimiter)
            designScriptFile.write(rmCmd+delimiter)
        designScriptFile.close()

def setGlobalAndEnvironmentVars(cmdArgs):
    global homeDir, graphDataFolder,scriptsDataFolder,libraryCellFolder
    homeDir = cmdArgs.home
    if not (os.path.exists(homeDir)):
        print("\nPlease rerun with appropriate paths")
    graphDataFolder = os.path.join(homeDir,"OPENABC_DATASET","bench")
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
    genShellScriptForSynthesis()

if __name__ == '__main__':
    main()