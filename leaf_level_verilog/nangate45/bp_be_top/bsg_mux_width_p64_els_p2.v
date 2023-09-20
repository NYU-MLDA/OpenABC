module bsg_mux_width_p64_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [127:0] data_i;
  input [0:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1;
  assign data_o[63] = (N1)? data_i[63] : 
                      (N0)? data_i[127] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[62] = (N1)? data_i[62] : 
                      (N0)? data_i[126] : 1'b0;
  assign data_o[61] = (N1)? data_i[61] : 
                      (N0)? data_i[125] : 1'b0;
  assign data_o[60] = (N1)? data_i[60] : 
                      (N0)? data_i[124] : 1'b0;
  assign data_o[59] = (N1)? data_i[59] : 
                      (N0)? data_i[123] : 1'b0;
  assign data_o[58] = (N1)? data_i[58] : 
                      (N0)? data_i[122] : 1'b0;
  assign data_o[57] = (N1)? data_i[57] : 
                      (N0)? data_i[121] : 1'b0;
  assign data_o[56] = (N1)? data_i[56] : 
                      (N0)? data_i[120] : 1'b0;
  assign data_o[55] = (N1)? data_i[55] : 
                      (N0)? data_i[119] : 1'b0;
  assign data_o[54] = (N1)? data_i[54] : 
                      (N0)? data_i[118] : 1'b0;
  assign data_o[53] = (N1)? data_i[53] : 
                      (N0)? data_i[117] : 1'b0;
  assign data_o[52] = (N1)? data_i[52] : 
                      (N0)? data_i[116] : 1'b0;
  assign data_o[51] = (N1)? data_i[51] : 
                      (N0)? data_i[115] : 1'b0;
  assign data_o[50] = (N1)? data_i[50] : 
                      (N0)? data_i[114] : 1'b0;
  assign data_o[49] = (N1)? data_i[49] : 
                      (N0)? data_i[113] : 1'b0;
  assign data_o[48] = (N1)? data_i[48] : 
                      (N0)? data_i[112] : 1'b0;
  assign data_o[47] = (N1)? data_i[47] : 
                      (N0)? data_i[111] : 1'b0;
  assign data_o[46] = (N1)? data_i[46] : 
                      (N0)? data_i[110] : 1'b0;
  assign data_o[45] = (N1)? data_i[45] : 
                      (N0)? data_i[109] : 1'b0;
  assign data_o[44] = (N1)? data_i[44] : 
                      (N0)? data_i[108] : 1'b0;
  assign data_o[43] = (N1)? data_i[43] : 
                      (N0)? data_i[107] : 1'b0;
  assign data_o[42] = (N1)? data_i[42] : 
                      (N0)? data_i[106] : 1'b0;
  assign data_o[41] = (N1)? data_i[41] : 
                      (N0)? data_i[105] : 1'b0;
  assign data_o[40] = (N1)? data_i[40] : 
                      (N0)? data_i[104] : 1'b0;
  assign data_o[39] = (N1)? data_i[39] : 
                      (N0)? data_i[103] : 1'b0;
  assign data_o[38] = (N1)? data_i[38] : 
                      (N0)? data_i[102] : 1'b0;
  assign data_o[37] = (N1)? data_i[37] : 
                      (N0)? data_i[101] : 1'b0;
  assign data_o[36] = (N1)? data_i[36] : 
                      (N0)? data_i[100] : 1'b0;
  assign data_o[35] = (N1)? data_i[35] : 
                      (N0)? data_i[99] : 1'b0;
  assign data_o[34] = (N1)? data_i[34] : 
                      (N0)? data_i[98] : 1'b0;
  assign data_o[33] = (N1)? data_i[33] : 
                      (N0)? data_i[97] : 1'b0;
  assign data_o[32] = (N1)? data_i[32] : 
                      (N0)? data_i[96] : 1'b0;
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[95] : 1'b0;
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[94] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[93] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[92] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[91] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[90] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[89] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[88] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[87] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[86] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[85] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[84] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[83] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[82] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[81] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[80] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[79] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[78] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[77] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[76] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[75] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[74] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[73] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[72] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[71] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[70] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[69] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[68] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[67] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[66] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[65] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[64] : 1'b0;
  assign N1 = ~sel_i[0];

endmodule