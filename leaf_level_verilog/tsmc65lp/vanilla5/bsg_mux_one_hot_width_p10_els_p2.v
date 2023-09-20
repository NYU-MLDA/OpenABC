module bsg_mux_one_hot_width_p10_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [19:0] data_i;
  input [1:0] sel_one_hot_i;
  output [9:0] data_o;
  wire [9:0] data_o;
  wire [19:0] data_masked;
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[1];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[1];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[1];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[1];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[1];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[1];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[1];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[1];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[1];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[10] | data_masked[0];
  assign data_o[1] = data_masked[11] | data_masked[1];
  assign data_o[2] = data_masked[12] | data_masked[2];
  assign data_o[3] = data_masked[13] | data_masked[3];
  assign data_o[4] = data_masked[14] | data_masked[4];
  assign data_o[5] = data_masked[15] | data_masked[5];
  assign data_o[6] = data_masked[16] | data_masked[6];
  assign data_o[7] = data_masked[17] | data_masked[7];
  assign data_o[8] = data_masked[18] | data_masked[8];
  assign data_o[9] = data_masked[19] | data_masked[9];

endmodule