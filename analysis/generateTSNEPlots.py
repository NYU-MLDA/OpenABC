import time
from sklearn.manifold import TSNE
import seaborn as sns
import pandas as pd
import numpy as np
import matplotlib.patheffects as PathEffects
import matplotlib.pyplot as plt
import pickle,sys

def plot_scatter(x, colors, fileName):
    # choose a color palette with seaborn.
    num_classes = len(np.unique(colors))
    print(num_classes)
    palette = np.array(sns.color_palette("hls", num_classes))
    # print(palette)
    # create a scatter plot.
    f = plt.figure(figsize=(16, 12))
    # ax = plt.subplot(aspect='equal')
    ax = plt.subplot()
    # sc = ax.scatter(x[:,0], x[:,1], lw=0, s=40, c=df['label'], cmap=plt.cm.get_cmap('Paired'))
    # sc = ax.scatter(x[:,0], x[:,1],  c=palette[colors.astype(np.int)], cmap=plt.cm.get_cmap('Paired'))
    sc = ax.scatter(x[:, 0], x[:, 1], c=palette[colors.astype(np.int)], cmap=plt.cm.get_cmap('Paired'))
    plt.xlim(-25, 25)
    plt.ylim(-25, 25)
    ax.legend()
    ax.axis('off')
    ax.axis('tight')

    # add the labels for each digit corresponding to the label
    txts = []

    for i in range(num_classes):
        # Position of each label at median of data points.

        xtext, ytext = np.median(x[colors == i, :], axis=0)
        txt = ax.text(xtext, ytext, str(i), fontsize=24)
        txt.set_path_effects([
            PathEffects.Stroke(linewidth=5, foreground="w"),
            PathEffects.Normal()])
        txts.append(txt)
    ax.grid(True)
    plt.savefig(fileName + '.pdf', fmt='pdf', bbox_inches='tight')
    plt.show()

def gettSNEResults(features,labels):
    X = pd.DataFrame(features)
    Y = pd.DataFrame(labels)
    #X = X.sample(frac=0.1, random_state=10).reset_index(drop=True)
    #Y = Y.sample(frac=0.1, random_state=10).reset_index(drop=True)
    df = X
    time_start = time.time()
    tsne = TSNE(random_state=0)
    tsne_results = tsne.fit_transform(df.values)
    df['label'] = Y
    return tsne_results,df['label']


featureFile = sys.argv[1]  #eg. desEmbedding.pickle or synthesisFlow.pickle
labelFile = sys.argv[2] # designName or synthesisID
tSNE_diagName = sys.argv[3] # tSNE file name

with open(featureFile,'rb') as f:
    featureEmbedding = pickle.load(f)

with open(labelFile,'rb') as f:
    outputLabel = pickle.load(f)

labelDict = {}
labelList = []
for i in range(len(outputLabel)):
    labelDict[outputLabel[i]] = i
    labelList.append(i)

tsne_F,tsne_Y = gettSNEResults(featureEmbedding,labelList)
plot_scatter(tsne_F,tsne_Y,tSNE_diagName)
print(labelDict)