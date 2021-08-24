import os,sys
import re,argparse
import os.path as osp

designSet1 = ['i2c','spi','des3_area','ss_pcm','usb_phy','sasc','wb_dma','simple_spi']
designSet2 = ['dynamic_node','aes','pci','ac97_ctrl','mem_ctrl','tv80','fpu']
designSet3 = ['wb_conmax','tinyRocket','aes_xcrypt','aes_secworks']
designSet4 = ['jpeg','bp_be','ethernet','vga_lcd','picosoc']
designSet5 = ['dft','idft','fir','iir','sha256']

homeDir = None
benchDataFolder = None
statsDataFolder = None
designs = designSet1+designSet2+designSet3+designSet4+designSet5
NUM_SYNTHESIZED_DESIGNS = 1500
csvDelimiter = ","


designSet = designSet1+designSet2+designSet3+designSet4+designSet5

def getFileLines(filePath):
    f = open(filePath,'r')
    fLines = f.readlines()
    f.close()
    return fLines

def collectAreaAndDelay():
    adpFolder = osp.join(statsDataFolder,"adp")
    if not os.path.exists(adpFolder):
        os.mkdir(adpFolder)
    for des in designs:
        desLogDir = osp.join(benchDataFolder,des,"log_"+des)
        csv_file = os.path.join(adpFolder, 'adp_'+des+'.csv')
        csvFileHandler = open(csv_file,'w+')
        csvFileHandler.write("sid,area,delay\n")
        for i in range(NUM_SYNTHESIZED_DESIGNS):
            synth_stat_file = os.path.join(desLogDir,'log_'+des+"_syn"+str(i)+'.log')
            synthFileLines = getFileLines(synth_stat_file)
            information = re.findall('[a-zA-Z0-9.]+',synthFileLines[-1])
            csvFileHandler.write(str(i)+csvDelimiter+str(information[-9])+csvDelimiter+str(information[-4])+"\n")
        csvFileHandler.close()

def setGlobalAndEnvironmentVars(cmdArgs):
    global homeDir,benchDataFolder,statsDataFolder
    homeDir = cmdArgs.home
    if not (os.path.exists(homeDir)):
        print("\nPlease rerun with appropriate paths")
    benchDataFolder = os.path.join(homeDir,"OPENABC_DATASET","bench")
    statsDataFolder = os.path.join(homeDir,"OPENABC_DATASET","statistics")

def parseCmdLineArgs():
    parser = argparse.ArgumentParser(prog='Final AIG area and delay Collection', description="Circuit characteristics")
    parser.add_argument('--version',action='version', version='1.0.0')
    parser.add_argument('--home',required=True, help="OpenABC dataset home path")
    return parser.parse_args()

def main():
    cmdArgs = parseCmdLineArgs()
    setGlobalAndEnvironmentVars(cmdArgs)
    collectAreaAndDelay()


if __name__ == '__main__':
    main()
