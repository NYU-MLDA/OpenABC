module bsg_mux_one_hot_width_p9_els_p5
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [44:0] data_i;
  input [4:0] sel_one_hot_i;
  output [8:0] data_o;
  wire [8:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26;
  wire [44:0] data_masked;
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
  assign data_masked[44] = data_i[44] & sel_one_hot_i[4];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[4];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[4];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[4];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[4];
  assign data_masked[39] = data_i[39] & sel_one_hot_i[4];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[4];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[4];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[4];
  assign data_o[0] = N2 | data_masked[0];
  assign N2 = N1 | data_masked[9];
  assign N1 = N0 | data_masked[18];
  assign N0 = data_masked[36] | data_masked[27];
  assign data_o[1] = N5 | data_masked[1];
  assign N5 = N4 | data_masked[10];
  assign N4 = N3 | data_masked[19];
  assign N3 = data_masked[37] | data_masked[28];
  assign data_o[2] = N8 | data_masked[2];
  assign N8 = N7 | data_masked[11];
  assign N7 = N6 | data_masked[20];
  assign N6 = data_masked[38] | data_masked[29];
  assign data_o[3] = N11 | data_masked[3];
  assign N11 = N10 | data_masked[12];
  assign N10 = N9 | data_masked[21];
  assign N9 = data_masked[39] | data_masked[30];
  assign data_o[4] = N14 | data_masked[4];
  assign N14 = N13 | data_masked[13];
  assign N13 = N12 | data_masked[22];
  assign N12 = data_masked[40] | data_masked[31];
  assign data_o[5] = N17 | data_masked[5];
  assign N17 = N16 | data_masked[14];
  assign N16 = N15 | data_masked[23];
  assign N15 = data_masked[41] | data_masked[32];
  assign data_o[6] = N20 | data_masked[6];
  assign N20 = N19 | data_masked[15];
  assign N19 = N18 | data_masked[24];
  assign N18 = data_masked[42] | data_masked[33];
  assign data_o[7] = N23 | data_masked[7];
  assign N23 = N22 | data_masked[16];
  assign N22 = N21 | data_masked[25];
  assign N21 = data_masked[43] | data_masked[34];
  assign data_o[8] = N26 | data_masked[8];
  assign N26 = N25 | data_masked[17];
  assign N25 = N24 | data_masked[26];
  assign N24 = data_masked[44] | data_masked[35];

endmodule