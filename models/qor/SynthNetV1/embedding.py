from model import *
from utils import *
from netlistDataset import *

from torch_geometric.data import DataLoader
from torchvision import transforms
from tqdm import tqdm
import os.path as osp
import pickle
import sys,os,argparse

datasetDict = {
    'desID': ["train_data_desID.csv", "test_data_desID.csv"],  # Test DS for all the designs
    'synID': ["train_data_synID.csv", "test_data_synID.csv"]  # Test DS for all the recipes
}

def getEmbeddings(model, device, dataloader):
    model.eval()
    synFlowArr = [None for i in range(1500)]
    designEmbedding = []
    designName = []
    ## This code will run with batchsize of 1
    with torch.no_grad():
        for step, batch in enumerate(tqdm(dataloader, desc="Iteration",file=sys.stdout)):
            _,graphEmbed,synFlowEmbed = model(batch)
            synFlowArr[batch.synID[0][0]] = synFlowEmbed.numpy().tolist()[0]
            designEmbedding.append(graphEmbed.numpy().tolist()[0])
            designName.append(batch.desName[0][0])

    return designEmbedding,designName,synFlowArr


def main():
    # Training settings
    parser = argparse.ArgumentParser(description='GNN baselines on Synthesis Task Pytorch Geometric')
    parser.add_argument('--dataset', type=str, default="desID",
                        help='Design or Recipe embedding (desID/synID default: desID)')
    parser.add_argument('--rundir', type=str, required=True,default="",
                        help='Output directory path to store result')
    parser.add_argument('--datadir', type=str, required=True, default="",
                        help='Dataset directory containing processed dataset, train test split file csvs')
    parser.add_argument('--model', type=str, required=True,default="",
                        help='Pre-trained GCN model name (Assuming it should be inside RUN DIR)')
    args = parser.parse_args()

    datasetChoice = args.dataset
    #RUN_DIR = args.rundir

    # Hyperparameters
    batchSize = 1 # Specific for embedding
    nodeEmbeddingDim = 3
    synthEncodingDim = 3

    IS_STATS_AVAILABLE = True
    ROOT_DIR = args.datadir #'/scratch/abc586/OPENABC_DATASET'
    global DUMP_DIR
    DUMP_DIR = args.rundir #osp.join('/scratch/abc586/OpenABC-dataset/SynthV9_AND',RUN_DIR)

    if not osp.exists(DUMP_DIR):
        os.mkdir(DUMP_DIR)

    MODEL_NAME = args.model
    MODEL_PATH = osp.join(DUMP_DIR, MODEL_NAME)


    # Load train and test datasets
    testDS = NetlistGraphDataset(root=ROOT_DIR, filePath=datasetDict[datasetChoice][1])

    num_classes = 1
    synthFlowEncodingDim = testDS[0].synVec.size()[0] * synthEncodingDim
    node_encoder = NodeEncoder(emb_dim=nodeEmbeddingDim)
    synthesis_encoder = SynthFlowEncoder(emb_dim=synthEncodingDim)

    # Define the model
    model = SynthNet_embed(node_encoder=node_encoder, synth_encoder=synthesis_encoder, n_classes=num_classes,
                           synth_input_dim=synthFlowEncodingDim, node_input_dim=nodeEmbeddingDim)
    model.load_state_dict(torch.load(MODEL_PATH))

    # Initialize the dataloaders
    train_dl = DataLoader(testDS, shuffle=True, batch_size=batchSize, pin_memory=True, num_workers=4)

    # Set number of cluster heads
    desEmbed, desName, synFlowEmbed = getEmbeddings(model, 'cuda', train_dl)

    with open(osp.join(DUMP_DIR, 'desName_list.pickle'), 'wb') as f:
        pickle.dump(desName, f)

    with open(osp.join(DUMP_DIR, 'synFlowEmbedding.pickle'), 'wb') as f:
        pickle.dump(synFlowEmbed, f)

    with open(osp.join(DUMP_DIR, 'designEmbedding.pickle'), 'wb') as f:
        pickle.dump(desEmbed, f)


if __name__ == "__main__":
    main()