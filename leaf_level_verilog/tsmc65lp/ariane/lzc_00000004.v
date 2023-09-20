module lzc_00000004
(
  in_i,
  cnt_o,
  empty_o
);

  input [3:0] in_i;
  output [1:0] cnt_o;
  output empty_o;
  wire [1:0] cnt_o;
  wire empty_o,N0,index_nodes_2__0_,index_nodes_1__0_,N1;
  wire [2:0] sel_nodes;
  assign cnt_o[1] = ~sel_nodes[1];
  assign cnt_o[0] = (N0)? index_nodes_1__0_ : 
                    (N1)? index_nodes_2__0_ : 1'b0;
  assign N0 = sel_nodes[1];
  assign index_nodes_1__0_ = ~in_i[0];
  assign index_nodes_2__0_ = ~in_i[2];
  assign sel_nodes[0] = sel_nodes[1] | sel_nodes[2];
  assign N1 = ~sel_nodes[1];
  assign sel_nodes[1] = in_i[0] | in_i[1];
  assign sel_nodes[2] = in_i[2] | in_i[3];
  assign empty_o = ~sel_nodes[0];

endmodule