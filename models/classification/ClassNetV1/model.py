import torch
from torch_geometric.nn import MessagePassing
from torch_geometric.nn import global_mean_pool, global_add_pool
import torch.nn.functional as F
from torch_geometric.utils import add_self_loops, degree

allowable_features = {
    'node_type' : [0,1,2],
    'num_inverted_predecessors' : [0,1,2]
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


class GCNConv(MessagePassing):
    def __init__(self, in_emb_dim, out_emb_dim):
        super(GCNConv, self).__init__(aggr='add')
        self.linear = torch.nn.Linear(in_emb_dim, out_emb_dim)

    def forward(self, x, edge_index):
        edge_index, _ = add_self_loops(edge_index, num_nodes=x.size(0))

        x = self.linear(x)

        row, col = edge_index

        # edge_weight = torch.ones((edge_index.size(1), ), device=edge_index.device)
        deg = degree(row, x.size(0), dtype=x.dtype) + 1
        deg_inv_sqrt = deg.pow(-0.5)
        deg_inv_sqrt[deg_inv_sqrt == float('inf')] = 0

        norm = deg_inv_sqrt[row] * deg_inv_sqrt[col]

        return self.propagate(edge_index, x=x, norm=norm)

    def message(self, x_j, norm):
        return norm.view(-1, 1) * x_j

    def update(self, aggr_out):
        return aggr_out


class GNN_node(torch.nn.Module):
    """
    Output:
        node representations
    """

    def __init__(self, node_encoder, num_layer, input_dim, emb_dim, gnn_type='gcn'):
        '''
            emb_dim (int): node embedding dimensionality
            num_layer (int): number of GNN message passing layers
        '''

        super(GNN_node, self).__init__()
        self.num_layer = num_layer
        self.node_emb_size = input_dim
        self.node_encoder = node_encoder

        ###List of GNNs
        self.convs = torch.nn.ModuleList()
        self.batch_norms = torch.nn.ModuleList()

        self.convs.append(GCNConv(input_dim, emb_dim))
        self.batch_norms.append(torch.nn.BatchNorm1d(emb_dim))

        for layer in range(1, num_layer):
            self.convs.append(GCNConv(emb_dim, emb_dim))
            self.batch_norms.append(torch.nn.BatchNorm1d(emb_dim))

    def forward(self, batched_data):

        # gate_type, node_type, edge_index = batched_data.gate_type, batched_data.node_type, batched_data.edge_index
        edge_index = batched_data.edge_index

        x = torch.cat([batched_data.node_type.reshape(-1, 1), batched_data.num_inverted_predecessors.reshape(-1, 1)],
                      dim=1)

        h = self.node_encoder(x)

        for layer in range(self.num_layer):

            h = self.convs[layer](h, edge_index)
            h = self.batch_norms[layer](h)

            if layer != self.num_layer - 1:
                h = F.relu(h)

        return h

class GNN(torch.nn.Module):

    def __init__(self, node_encoder, n_classes, input_dim, num_layer = 2, emb_dim = 128,gnn_type = 'gcn',graph_pooling = "mean"):

        super(GNN, self).__init__()

        self.num_layer = num_layer
        self.emb_dim = emb_dim
        self.graph_pooling = graph_pooling
        self.hidden_dim = emb_dim
        self.n_classes = n_classes

        self.gnn_node = GNN_node(node_encoder,num_layer,input_dim,emb_dim,gnn_type = gnn_type)
        self.pool = global_mean_pool
        self.fc1 = torch.nn.Linear(emb_dim, emb_dim)
        self.graph_pred_linear = torch.nn.Linear(emb_dim, self.n_classes)

    def forward(self, batched_data):
        h_node = self.gnn_node(batched_data)
        h_graph = self.pool(h_node, batched_data.batch)
        h_graph = F.relu(self.fc1(h_graph))
        prediction = self.graph_pred_linear(h_graph)
        return prediction