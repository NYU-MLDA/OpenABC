module stream_mux_N_INP3
(
  inp_data_i,
  inp_valid_i,
  inp_ready_o,
  inp_sel_i,
  oup_data_o,
  oup_valid_o,
  oup_ready_i
);

  input [218:0] inp_data_i;
  input [2:0] inp_valid_i;
  output [2:0] inp_ready_o;
  input [1:0] inp_sel_i;
  output [72:0] oup_data_o;
  input oup_ready_i;
  output oup_valid_o;
  wire [2:0] inp_ready_o;
  wire [72:0] oup_data_o;
  wire oup_valid_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  assign N10 = N0 & inp_sel_i[1];
  assign N0 = ~inp_sel_i[0];
  assign N9 = inp_sel_i[0] & N1;
  assign N1 = ~inp_sel_i[1];
  assign N14 = N2 & N3;
  assign N2 = ~inp_sel_i[0];
  assign N3 = ~inp_sel_i[1];
  assign inp_ready_o[0] = (N4)? oup_ready_i : 
                          (N11)? 1'b0 : 1'b0;
  assign N4 = N14;
  assign inp_ready_o[1] = (N5)? oup_ready_i : 
                          (N12)? 1'b0 : 1'b0;
  assign N5 = N9;
  assign inp_ready_o[2] = (N6)? oup_ready_i : 
                          (N13)? 1'b0 : 1'b0;
  assign N6 = N10;
  assign oup_data_o[72] = (N4)? inp_data_i[72] : 
                          (N7)? inp_data_i[145] : 
                          (N8)? inp_data_i[218] : 1'b0;
  assign N7 = inp_sel_i[0];
  assign N8 = inp_sel_i[1];
  assign oup_data_o[71] = (N4)? inp_data_i[71] : 
                          (N7)? inp_data_i[144] : 
                          (N8)? inp_data_i[217] : 1'b0;
  assign oup_data_o[70] = (N4)? inp_data_i[70] : 
                          (N7)? inp_data_i[143] : 
                          (N8)? inp_data_i[216] : 1'b0;
  assign oup_data_o[69] = (N4)? inp_data_i[69] : 
                          (N7)? inp_data_i[142] : 
                          (N8)? inp_data_i[215] : 1'b0;
  assign oup_data_o[68] = (N4)? inp_data_i[68] : 
                          (N7)? inp_data_i[141] : 
                          (N8)? inp_data_i[214] : 1'b0;
  assign oup_data_o[67] = (N4)? inp_data_i[67] : 
                          (N7)? inp_data_i[140] : 
                          (N8)? inp_data_i[213] : 1'b0;
  assign oup_data_o[66] = (N4)? inp_data_i[66] : 
                          (N7)? inp_data_i[139] : 
                          (N8)? inp_data_i[212] : 1'b0;
  assign oup_data_o[65] = (N4)? inp_data_i[65] : 
                          (N7)? inp_data_i[138] : 
                          (N8)? inp_data_i[211] : 1'b0;
  assign oup_data_o[64] = (N4)? inp_data_i[64] : 
                          (N7)? inp_data_i[137] : 
                          (N8)? inp_data_i[210] : 1'b0;
  assign oup_data_o[63] = (N4)? inp_data_i[63] : 
                          (N7)? inp_data_i[136] : 
                          (N8)? inp_data_i[209] : 1'b0;
  assign oup_data_o[62] = (N4)? inp_data_i[62] : 
                          (N7)? inp_data_i[135] : 
                          (N8)? inp_data_i[208] : 1'b0;
  assign oup_data_o[61] = (N4)? inp_data_i[61] : 
                          (N7)? inp_data_i[134] : 
                          (N8)? inp_data_i[207] : 1'b0;
  assign oup_data_o[60] = (N4)? inp_data_i[60] : 
                          (N7)? inp_data_i[133] : 
                          (N8)? inp_data_i[206] : 1'b0;
  assign oup_data_o[59] = (N4)? inp_data_i[59] : 
                          (N7)? inp_data_i[132] : 
                          (N8)? inp_data_i[205] : 1'b0;
  assign oup_data_o[58] = (N4)? inp_data_i[58] : 
                          (N7)? inp_data_i[131] : 
                          (N8)? inp_data_i[204] : 1'b0;
  assign oup_data_o[57] = (N4)? inp_data_i[57] : 
                          (N7)? inp_data_i[130] : 
                          (N8)? inp_data_i[203] : 1'b0;
  assign oup_data_o[56] = (N4)? inp_data_i[56] : 
                          (N7)? inp_data_i[129] : 
                          (N8)? inp_data_i[202] : 1'b0;
  assign oup_data_o[55] = (N4)? inp_data_i[55] : 
                          (N7)? inp_data_i[128] : 
                          (N8)? inp_data_i[201] : 1'b0;
  assign oup_data_o[54] = (N4)? inp_data_i[54] : 
                          (N7)? inp_data_i[127] : 
                          (N8)? inp_data_i[200] : 1'b0;
  assign oup_data_o[53] = (N4)? inp_data_i[53] : 
                          (N7)? inp_data_i[126] : 
                          (N8)? inp_data_i[199] : 1'b0;
  assign oup_data_o[52] = (N4)? inp_data_i[52] : 
                          (N7)? inp_data_i[125] : 
                          (N8)? inp_data_i[198] : 1'b0;
  assign oup_data_o[51] = (N4)? inp_data_i[51] : 
                          (N7)? inp_data_i[124] : 
                          (N8)? inp_data_i[197] : 1'b0;
  assign oup_data_o[50] = (N4)? inp_data_i[50] : 
                          (N7)? inp_data_i[123] : 
                          (N8)? inp_data_i[196] : 1'b0;
  assign oup_data_o[49] = (N4)? inp_data_i[49] : 
                          (N7)? inp_data_i[122] : 
                          (N8)? inp_data_i[195] : 1'b0;
  assign oup_data_o[48] = (N4)? inp_data_i[48] : 
                          (N7)? inp_data_i[121] : 
                          (N8)? inp_data_i[194] : 1'b0;
  assign oup_data_o[47] = (N4)? inp_data_i[47] : 
                          (N7)? inp_data_i[120] : 
                          (N8)? inp_data_i[193] : 1'b0;
  assign oup_data_o[46] = (N4)? inp_data_i[46] : 
                          (N7)? inp_data_i[119] : 
                          (N8)? inp_data_i[192] : 1'b0;
  assign oup_data_o[45] = (N4)? inp_data_i[45] : 
                          (N7)? inp_data_i[118] : 
                          (N8)? inp_data_i[191] : 1'b0;
  assign oup_data_o[44] = (N4)? inp_data_i[44] : 
                          (N7)? inp_data_i[117] : 
                          (N8)? inp_data_i[190] : 1'b0;
  assign oup_data_o[43] = (N4)? inp_data_i[43] : 
                          (N7)? inp_data_i[116] : 
                          (N8)? inp_data_i[189] : 1'b0;
  assign oup_data_o[42] = (N4)? inp_data_i[42] : 
                          (N7)? inp_data_i[115] : 
                          (N8)? inp_data_i[188] : 1'b0;
  assign oup_data_o[41] = (N4)? inp_data_i[41] : 
                          (N7)? inp_data_i[114] : 
                          (N8)? inp_data_i[187] : 1'b0;
  assign oup_data_o[40] = (N4)? inp_data_i[40] : 
                          (N7)? inp_data_i[113] : 
                          (N8)? inp_data_i[186] : 1'b0;
  assign oup_data_o[39] = (N4)? inp_data_i[39] : 
                          (N7)? inp_data_i[112] : 
                          (N8)? inp_data_i[185] : 1'b0;
  assign oup_data_o[38] = (N4)? inp_data_i[38] : 
                          (N7)? inp_data_i[111] : 
                          (N8)? inp_data_i[184] : 1'b0;
  assign oup_data_o[37] = (N4)? inp_data_i[37] : 
                          (N7)? inp_data_i[110] : 
                          (N8)? inp_data_i[183] : 1'b0;
  assign oup_data_o[36] = (N4)? inp_data_i[36] : 
                          (N7)? inp_data_i[109] : 
                          (N8)? inp_data_i[182] : 1'b0;
  assign oup_data_o[35] = (N4)? inp_data_i[35] : 
                          (N7)? inp_data_i[108] : 
                          (N8)? inp_data_i[181] : 1'b0;
  assign oup_data_o[34] = (N4)? inp_data_i[34] : 
                          (N7)? inp_data_i[107] : 
                          (N8)? inp_data_i[180] : 1'b0;
  assign oup_data_o[33] = (N4)? inp_data_i[33] : 
                          (N7)? inp_data_i[106] : 
                          (N8)? inp_data_i[179] : 1'b0;
  assign oup_data_o[32] = (N4)? inp_data_i[32] : 
                          (N7)? inp_data_i[105] : 
                          (N8)? inp_data_i[178] : 1'b0;
  assign oup_data_o[31] = (N4)? inp_data_i[31] : 
                          (N7)? inp_data_i[104] : 
                          (N8)? inp_data_i[177] : 1'b0;
  assign oup_data_o[30] = (N4)? inp_data_i[30] : 
                          (N7)? inp_data_i[103] : 
                          (N8)? inp_data_i[176] : 1'b0;
  assign oup_data_o[29] = (N4)? inp_data_i[29] : 
                          (N7)? inp_data_i[102] : 
                          (N8)? inp_data_i[175] : 1'b0;
  assign oup_data_o[28] = (N4)? inp_data_i[28] : 
                          (N7)? inp_data_i[101] : 
                          (N8)? inp_data_i[174] : 1'b0;
  assign oup_data_o[27] = (N4)? inp_data_i[27] : 
                          (N7)? inp_data_i[100] : 
                          (N8)? inp_data_i[173] : 1'b0;
  assign oup_data_o[26] = (N4)? inp_data_i[26] : 
                          (N7)? inp_data_i[99] : 
                          (N8)? inp_data_i[172] : 1'b0;
  assign oup_data_o[25] = (N4)? inp_data_i[25] : 
                          (N7)? inp_data_i[98] : 
                          (N8)? inp_data_i[171] : 1'b0;
  assign oup_data_o[24] = (N4)? inp_data_i[24] : 
                          (N7)? inp_data_i[97] : 
                          (N8)? inp_data_i[170] : 1'b0;
  assign oup_data_o[23] = (N4)? inp_data_i[23] : 
                          (N7)? inp_data_i[96] : 
                          (N8)? inp_data_i[169] : 1'b0;
  assign oup_data_o[22] = (N4)? inp_data_i[22] : 
                          (N7)? inp_data_i[95] : 
                          (N8)? inp_data_i[168] : 1'b0;
  assign oup_data_o[21] = (N4)? inp_data_i[21] : 
                          (N7)? inp_data_i[94] : 
                          (N8)? inp_data_i[167] : 1'b0;
  assign oup_data_o[20] = (N4)? inp_data_i[20] : 
                          (N7)? inp_data_i[93] : 
                          (N8)? inp_data_i[166] : 1'b0;
  assign oup_data_o[19] = (N4)? inp_data_i[19] : 
                          (N7)? inp_data_i[92] : 
                          (N8)? inp_data_i[165] : 1'b0;
  assign oup_data_o[18] = (N4)? inp_data_i[18] : 
                          (N7)? inp_data_i[91] : 
                          (N8)? inp_data_i[164] : 1'b0;
  assign oup_data_o[17] = (N4)? inp_data_i[17] : 
                          (N7)? inp_data_i[90] : 
                          (N8)? inp_data_i[163] : 1'b0;
  assign oup_data_o[16] = (N4)? inp_data_i[16] : 
                          (N7)? inp_data_i[89] : 
                          (N8)? inp_data_i[162] : 1'b0;
  assign oup_data_o[15] = (N4)? inp_data_i[15] : 
                          (N7)? inp_data_i[88] : 
                          (N8)? inp_data_i[161] : 1'b0;
  assign oup_data_o[14] = (N4)? inp_data_i[14] : 
                          (N7)? inp_data_i[87] : 
                          (N8)? inp_data_i[160] : 1'b0;
  assign oup_data_o[13] = (N4)? inp_data_i[13] : 
                          (N7)? inp_data_i[86] : 
                          (N8)? inp_data_i[159] : 1'b0;
  assign oup_data_o[12] = (N4)? inp_data_i[12] : 
                          (N7)? inp_data_i[85] : 
                          (N8)? inp_data_i[158] : 1'b0;
  assign oup_data_o[11] = (N4)? inp_data_i[11] : 
                          (N7)? inp_data_i[84] : 
                          (N8)? inp_data_i[157] : 1'b0;
  assign oup_data_o[10] = (N4)? inp_data_i[10] : 
                          (N7)? inp_data_i[83] : 
                          (N8)? inp_data_i[156] : 1'b0;
  assign oup_data_o[9] = (N4)? inp_data_i[9] : 
                         (N7)? inp_data_i[82] : 
                         (N8)? inp_data_i[155] : 1'b0;
  assign oup_data_o[8] = (N4)? inp_data_i[8] : 
                         (N7)? inp_data_i[81] : 
                         (N8)? inp_data_i[154] : 1'b0;
  assign oup_data_o[7] = (N4)? inp_data_i[7] : 
                         (N7)? inp_data_i[80] : 
                         (N8)? inp_data_i[153] : 1'b0;
  assign oup_data_o[6] = (N4)? inp_data_i[6] : 
                         (N7)? inp_data_i[79] : 
                         (N8)? inp_data_i[152] : 1'b0;
  assign oup_data_o[5] = (N4)? inp_data_i[5] : 
                         (N7)? inp_data_i[78] : 
                         (N8)? inp_data_i[151] : 1'b0;
  assign oup_data_o[4] = (N4)? inp_data_i[4] : 
                         (N7)? inp_data_i[77] : 
                         (N8)? inp_data_i[150] : 1'b0;
  assign oup_data_o[3] = (N4)? inp_data_i[3] : 
                         (N7)? inp_data_i[76] : 
                         (N8)? inp_data_i[149] : 1'b0;
  assign oup_data_o[2] = (N4)? inp_data_i[2] : 
                         (N7)? inp_data_i[75] : 
                         (N8)? inp_data_i[148] : 1'b0;
  assign oup_data_o[1] = (N4)? inp_data_i[1] : 
                         (N7)? inp_data_i[74] : 
                         (N8)? inp_data_i[147] : 1'b0;
  assign oup_data_o[0] = (N4)? inp_data_i[0] : 
                         (N7)? inp_data_i[73] : 
                         (N8)? inp_data_i[146] : 1'b0;
  assign oup_valid_o = (N4)? inp_valid_i[0] : 
                       (N7)? inp_valid_i[1] : 
                       (N8)? inp_valid_i[2] : 1'b0;
  assign N11 = ~N14;
  assign N12 = ~N9;
  assign N13 = ~N10;

endmodule