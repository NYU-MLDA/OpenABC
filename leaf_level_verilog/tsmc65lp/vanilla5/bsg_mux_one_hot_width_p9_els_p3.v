module bsg_mux_one_hot_width_p9_els_p3
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [26:0] data_i;
  input [2:0] sel_one_hot_i;
  output [8:0] data_o;
  wire [8:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  wire [26:0] data_masked;
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[1];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[1];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[1];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[1];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[1];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[1];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[1];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[1];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[1];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[2];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[2];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[2];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[2];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[2];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[2];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[2];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[2];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[2];
  assign data_o[0] = N0 | data_masked[0];
  assign N0 = data_masked[18] | data_masked[9];
  assign data_o[1] = N1 | data_masked[1];
  assign N1 = data_masked[19] | data_masked[10];
  assign data_o[2] = N2 | data_masked[2];
  assign N2 = data_masked[20] | data_masked[11];
  assign data_o[3] = N3 | data_masked[3];
  assign N3 = data_masked[21] | data_masked[12];
  assign data_o[4] = N4 | data_masked[4];
  assign N4 = data_masked[22] | data_masked[13];
  assign data_o[5] = N5 | data_masked[5];
  assign N5 = data_masked[23] | data_masked[14];
  assign data_o[6] = N6 | data_masked[6];
  assign N6 = data_masked[24] | data_masked[15];
  assign data_o[7] = N7 | data_masked[7];
  assign N7 = data_masked[25] | data_masked[16];
  assign data_o[8] = N8 | data_masked[8];
  assign N8 = data_masked[26] | data_masked[17];

endmodule