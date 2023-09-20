module bsg_mux_one_hot_width_p9_els_p4
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [35:0] data_i;
  input [3:0] sel_one_hot_i;
  output [8:0] data_o;
  wire [8:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  wire [35:0] data_masked;
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
  assign data_masked[35] = data_i[35] & sel_one_hot_i[3];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[3];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[3];
  assign data_masked[32] = data_i[32] & sel_one_hot_i[3];
  assign data_masked[31] = data_i[31] & sel_one_hot_i[3];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[3];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[3];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[3];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[3];
  assign data_o[0] = N1 | data_masked[0];
  assign N1 = N0 | data_masked[9];
  assign N0 = data_masked[27] | data_masked[18];
  assign data_o[1] = N3 | data_masked[1];
  assign N3 = N2 | data_masked[10];
  assign N2 = data_masked[28] | data_masked[19];
  assign data_o[2] = N5 | data_masked[2];
  assign N5 = N4 | data_masked[11];
  assign N4 = data_masked[29] | data_masked[20];
  assign data_o[3] = N7 | data_masked[3];
  assign N7 = N6 | data_masked[12];
  assign N6 = data_masked[30] | data_masked[21];
  assign data_o[4] = N9 | data_masked[4];
  assign N9 = N8 | data_masked[13];
  assign N8 = data_masked[31] | data_masked[22];
  assign data_o[5] = N11 | data_masked[5];
  assign N11 = N10 | data_masked[14];
  assign N10 = data_masked[32] | data_masked[23];
  assign data_o[6] = N13 | data_masked[6];
  assign N13 = N12 | data_masked[15];
  assign N12 = data_masked[33] | data_masked[24];
  assign data_o[7] = N15 | data_masked[7];
  assign N15 = N14 | data_masked[16];
  assign N14 = data_masked[34] | data_masked[25];
  assign data_o[8] = N17 | data_masked[8];
  assign N17 = N16 | data_masked[17];
  assign N16 = data_masked[35] | data_masked[26];

endmodule