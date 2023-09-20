module bsg_lru_pseudo_tree_decode_ways_p8
(
  way_id_i,
  data_o,
  mask_o
);

  input [2:0] way_id_i;
  output [6:0] data_o;
  output [6:0] mask_o;
  wire [6:0] data_o,mask_o;
  wire N0,N1,N2;
  assign mask_o[0] = 1'b1;
  assign data_o[0] = 1'b1 & N0;
  assign N0 = ~way_id_i[2];
  assign mask_o[1] = 1'b1 & N0;
  assign data_o[1] = mask_o[1] & N1;
  assign N1 = ~way_id_i[1];
  assign mask_o[2] = 1'b1 & way_id_i[2];
  assign data_o[2] = mask_o[2] & N1;
  assign mask_o[3] = mask_o[1] & N1;
  assign data_o[3] = mask_o[3] & N2;
  assign N2 = ~way_id_i[0];
  assign mask_o[4] = mask_o[1] & way_id_i[1];
  assign data_o[4] = mask_o[4] & N2;
  assign mask_o[5] = mask_o[2] & N1;
  assign data_o[5] = mask_o[5] & N2;
  assign mask_o[6] = mask_o[2] & way_id_i[1];
  assign data_o[6] = mask_o[6] & N2;

endmodule