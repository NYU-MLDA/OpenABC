module bsg_mux_one_hot_width_p32_els_p1
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [31:0] data_i;
  input [0:0] sel_one_hot_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  assign data_o[31] = data_i[31] & sel_one_hot_i[0];
  assign data_o[30] = data_i[30] & sel_one_hot_i[0];
  assign data_o[29] = data_i[29] & sel_one_hot_i[0];
  assign data_o[28] = data_i[28] & sel_one_hot_i[0];
  assign data_o[27] = data_i[27] & sel_one_hot_i[0];
  assign data_o[26] = data_i[26] & sel_one_hot_i[0];
  assign data_o[25] = data_i[25] & sel_one_hot_i[0];
  assign data_o[24] = data_i[24] & sel_one_hot_i[0];
  assign data_o[23] = data_i[23] & sel_one_hot_i[0];
  assign data_o[22] = data_i[22] & sel_one_hot_i[0];
  assign data_o[21] = data_i[21] & sel_one_hot_i[0];
  assign data_o[20] = data_i[20] & sel_one_hot_i[0];
  assign data_o[19] = data_i[19] & sel_one_hot_i[0];
  assign data_o[18] = data_i[18] & sel_one_hot_i[0];
  assign data_o[17] = data_i[17] & sel_one_hot_i[0];
  assign data_o[16] = data_i[16] & sel_one_hot_i[0];
  assign data_o[15] = data_i[15] & sel_one_hot_i[0];
  assign data_o[14] = data_i[14] & sel_one_hot_i[0];
  assign data_o[13] = data_i[13] & sel_one_hot_i[0];
  assign data_o[12] = data_i[12] & sel_one_hot_i[0];
  assign data_o[11] = data_i[11] & sel_one_hot_i[0];
  assign data_o[10] = data_i[10] & sel_one_hot_i[0];
  assign data_o[9] = data_i[9] & sel_one_hot_i[0];
  assign data_o[8] = data_i[8] & sel_one_hot_i[0];
  assign data_o[7] = data_i[7] & sel_one_hot_i[0];
  assign data_o[6] = data_i[6] & sel_one_hot_i[0];
  assign data_o[5] = data_i[5] & sel_one_hot_i[0];
  assign data_o[4] = data_i[4] & sel_one_hot_i[0];
  assign data_o[3] = data_i[3] & sel_one_hot_i[0];
  assign data_o[2] = data_i[2] & sel_one_hot_i[0];
  assign data_o[1] = data_i[1] & sel_one_hot_i[0];
  assign data_o[0] = data_i[0] & sel_one_hot_i[0];

endmodule