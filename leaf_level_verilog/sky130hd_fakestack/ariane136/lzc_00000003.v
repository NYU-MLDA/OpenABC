module lzc_00000003
(
  in_i,
  cnt_o,
  empty_o
);

  input [2:0] in_i;
  output [1:0] cnt_o;
  output empty_o;
  wire [1:0] cnt_o,sel_nodes;
  wire empty_o,N0,index_nodes_1__0_,N1;
  assign cnt_o[1] = ~sel_nodes[1];
  assign cnt_o[0] = (N0)? index_nodes_1__0_ : 
                    (N1)? 1'b0 : 1'b0;
  assign N0 = sel_nodes[1];
  assign index_nodes_1__0_ = ~in_i[0];
  assign sel_nodes[0] = sel_nodes[1] | in_i[2];
  assign N1 = ~sel_nodes[1];
  assign sel_nodes[1] = in_i[0] | in_i[1];
  assign empty_o = ~sel_nodes[0];

endmodule