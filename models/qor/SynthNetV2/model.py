import torch
from torch_geometric.nn import MessagePassing,GCNConv
from torch_geometric.nn import global_mean_pool, global_max_pool
import torch.nn.functional as F
from torch_geometric.utils import add_self_loops, degree

allowable_synthesis_features = {
    'synth_type' : [0,1,2,3,4,5,6]
}

def get_synth_feature_dims():
    return list(map(len, [
        allowable_synthesis_features['synth_type']
]))

full_synthesis_feature_dims = get_synth_feature_dims()


allowable_features = {
    'node_type' : [0,1,2],
    'gate_type' : [0,1,2]
}

def get_node_feature_dims():
    return list(map(len, [
        allowable_features['node_type']
    ]))


full_node_feature_dims = get_node_feature_dims()


class NodeEncoder(torch.nn.Module):

    def __init__(self, emb_dim):
        super(NodeEncoder, self).__init__()

        self.node_type_embedding = torch.nn.Embedding(full_node_feature_dims[0], emb_dim)
        torch.nn.init.xavier_uniform_(self.node_type_embedding.weight.data)

    def forward(self, x):
        # First feature is node type, second feature is inverted predecessor
        x_embedding = self.node_type_embedding(x[:, 0])
        #for i in range(1, x.shape[1]):
        #print(x_embedding,x_embedding.shape)
        x_embedding = torch.cat((x_embedding, x[:,1].reshape(-1,1)), dim=1)
        return x_embedding


class GNN(torch.nn.Module):
    """
    Output:
        node representations
    """

    def __init__(self, node_encoder, input_dim, emb_dim=64, gnn_type='gcn'):
        '''
            emb_dim (int): node embedding dimensionality
            num_layer (int): number of GNN message passing layers
        '''
        super(GNN, self).__init__()
        self.node_emb_size = input_dim
        self.node_encoder = node_encoder

        self.conv1 = GCNConv(input_dim, emb_dim)
        self.conv2 = GCNConv(emb_dim, emb_dim)
        #self.conv3 = GCNConv(emb_dim, emb_dim)

        self.batch_norm1 = torch.nn.BatchNorm1d(emb_dim)
        self.batch_norm2 = torch.nn.BatchNorm1d(emb_dim)
        #self.batch_norm3 = torch.nn.BatchNorm1d(emb_dim)


    def forward(self, batched_data):
        edge_index, batch = batched_data.edge_index, batched_data.batch
        x = torch.cat([batched_data.node_type.reshape(-1, 1), batched_data.num_inverted_predecessors.reshape(-1, 1)],
                      dim=1)

        h = self.node_encoder(x)
        h = F.relu(self.batch_norm1(self.conv1(h, edge_index)))
        #h = F.relu(self.batch_norm2(self.conv2(h, edge_index)))
        h = self.batch_norm2(self.conv2(h, edge_index))

        xF = torch.cat([global_max_pool(h, batch), global_mean_pool(h, batch)], dim=1)

        return xF


class SynthFlowEncoder(torch.nn.Module):
    def __init__(self, emb_dim):
        super(SynthFlowEncoder, self).__init__()
        self.synth_emb = torch.nn.Embedding(full_synthesis_feature_dims[0], emb_dim)
        torch.nn.init.xavier_uniform_(self.synth_emb.weight.data)


    def forward(self, x):
        x_embedding = self.synth_emb(x[:, 0])
        for i in range(1, x.shape[1]):
            x_embedding = torch.cat((x_embedding, self.synth_emb(x[:, i])), dim=1)
        return x_embedding

class SynthConv(torch.nn.Module):
    def __init__(self, inp_channel=1,out_channel=3,ksize=6,stride_len=1):
        super(SynthConv, self).__init__()
        self.conv1d = torch.nn.Conv1d(inp_channel,out_channel,kernel_size=(ksize,),stride=(stride_len,))

    def forward(self, x):
        x = x.reshape(-1,1,x.size(1)) # Convert [4,60] to [4,1,60]
        x = self.conv1d(x)
        return x.reshape(x.size(0),-1) # Convert [4,3,55] to [4,165]


class SynthNet(torch.nn.Module):

    def __init__(self, node_encoder, synth_encoder, n_classes, synth_input_dim, node_input_dim, gnn_embed_dim = 128,num_fc_layer=4, hidden_dim = 512):
        super(SynthNet,self).__init__()
        self.num_layers = num_fc_layer
        self.hidden_dim = hidden_dim
        self.node_encoder = node_encoder
        self.synth_encoder = synth_encoder
        self.node_enc_outdim = node_input_dim
        self.synth_enc_outdim = synth_input_dim
        self.gnn_emb_dim = gnn_embed_dim
        self.n_classes = n_classes


        # Synthesis Convolution parameters
        # output_dim = {(input_dim - kernel_size + 2* padding) / stride} + 1
        self.synconv_in_channel = 1
        self.synconv_out_channel = 1
        self.synconv_stride_len = 3

        # Synth Conv1 output
        self.synconv1_ks = 12
        self.synconv1_out_dim_flatten = 1 + (self.synth_enc_outdim - self.synconv1_ks)/self.synconv_stride_len

        # Synth Conv2 output
        self.synconv2_ks = 15
        self.synconv2_out_dim_flatten = 1 + (self.synth_enc_outdim - self.synconv2_ks) / self.synconv_stride_len

        # Synth Conv3 output
        self.synconv3_ks = 18
        self.synconv3_out_dim_flatten = 1 + (self.synth_enc_outdim - self.synconv3_ks) / self.synconv_stride_len

        # Synth Conv4 output
        self.synconv4_ks = 21
        self.synconv4_out_dim_flatten = 1 + (self.synth_enc_outdim - self.synconv4_ks) / self.synconv_stride_len

        # Multiplier by 2 since each gate and node type has same encoding out dimension
        # self.gnn = GNN(self.node_encoder,self.node_enc_outdim*2)
        # Node encoding has dimension 3 and number of incoming inverted edges has dimension 1
        self.gnn = GNN(self.node_encoder, self.node_enc_outdim + 1)
        self.synth_conv1 = SynthConv(self.synconv_in_channel,self.synconv_out_channel,ksize=self.synconv1_ks,stride_len=self.synconv_stride_len)
        self.synth_conv2 = SynthConv(self.synconv_in_channel,self.synconv_out_channel,ksize=self.synconv2_ks,stride_len=self.synconv_stride_len)
        self.synth_conv3 = SynthConv(self.synconv_in_channel,self.synconv_out_channel,ksize=self.synconv3_ks,stride_len=self.synconv_stride_len)
        self.synth_conv4 = SynthConv(self.synconv_in_channel,self.synconv_out_channel,ksize=self.synconv4_ks,stride_len=self.synconv_stride_len)

        self.fcs = torch.nn.ModuleList()
        self.batch_norms = torch.nn.ModuleList()

        # GNN + (synthesis flow encoding + synthesis convolution)
        self.in_dim_to_fcs = int(self.gnn_emb_dim + self.synconv1_out_dim_flatten + self.synconv3_out_dim_flatten + self.synconv2_out_dim_flatten + self.synconv4_out_dim_flatten)
        self.fcs.append(torch.nn.Linear(self.in_dim_to_fcs,self.hidden_dim))
        #self.batch_norms.append(torch.nn.BatchNorm1d(self.hidden_dim))

        for layer in range(1, self.num_layers-1):
            self.fcs.append(torch.nn.Linear(self.hidden_dim,self.hidden_dim))
            #self.batch_norms.append(torch.nn.BatchNorm1d(emb_dim))

        self.fcs.append(torch.nn.Linear(self.hidden_dim, self.n_classes))

    def forward(self,batch_data):
        graphEmbed = self.gnn(batch_data)
        synthFlow = batch_data.synVec

        # Synthesis flow length = 20
        h_syn = self.synth_encoder(synthFlow.reshape(-1,20))
        synconv1_out = self.synth_conv1(h_syn)
        synconv2_out = self.synth_conv2(h_syn)
        synconv3_out = self.synth_conv3(h_syn)
        synconv4_out = self.synth_conv4(h_syn)
        concatenatedInput = torch.cat([graphEmbed, synconv1_out, synconv2_out, synconv3_out,synconv4_out], dim=1)
        #print(concatenatedInput.shape)
        x = F.relu(self.fcs[0](concatenatedInput))
        for layer in range(1, self.num_layers-1):
            x = F.relu(self.fcs[layer](x))

        x = self.fcs[-1](x)
        return x