module bsg_mux_width_p128_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [255:0] data_i;
  input [0:0] sel_i;
  output [127:0] data_o;
  wire [127:0] data_o;
  wire N0,N1;
  assign data_o[127] = (N1)? data_i[127] : 
                       (N0)? data_i[255] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[126] = (N1)? data_i[126] : 
                       (N0)? data_i[254] : 1'b0;
  assign data_o[125] = (N1)? data_i[125] : 
                       (N0)? data_i[253] : 1'b0;
  assign data_o[124] = (N1)? data_i[124] : 
                       (N0)? data_i[252] : 1'b0;
  assign data_o[123] = (N1)? data_i[123] : 
                       (N0)? data_i[251] : 1'b0;
  assign data_o[122] = (N1)? data_i[122] : 
                       (N0)? data_i[250] : 1'b0;
  assign data_o[121] = (N1)? data_i[121] : 
                       (N0)? data_i[249] : 1'b0;
  assign data_o[120] = (N1)? data_i[120] : 
                       (N0)? data_i[248] : 1'b0;
  assign data_o[119] = (N1)? data_i[119] : 
                       (N0)? data_i[247] : 1'b0;
  assign data_o[118] = (N1)? data_i[118] : 
                       (N0)? data_i[246] : 1'b0;
  assign data_o[117] = (N1)? data_i[117] : 
                       (N0)? data_i[245] : 1'b0;
  assign data_o[116] = (N1)? data_i[116] : 
                       (N0)? data_i[244] : 1'b0;
  assign data_o[115] = (N1)? data_i[115] : 
                       (N0)? data_i[243] : 1'b0;
  assign data_o[114] = (N1)? data_i[114] : 
                       (N0)? data_i[242] : 1'b0;
  assign data_o[113] = (N1)? data_i[113] : 
                       (N0)? data_i[241] : 1'b0;
  assign data_o[112] = (N1)? data_i[112] : 
                       (N0)? data_i[240] : 1'b0;
  assign data_o[111] = (N1)? data_i[111] : 
                       (N0)? data_i[239] : 1'b0;
  assign data_o[110] = (N1)? data_i[110] : 
                       (N0)? data_i[238] : 1'b0;
  assign data_o[109] = (N1)? data_i[109] : 
                       (N0)? data_i[237] : 1'b0;
  assign data_o[108] = (N1)? data_i[108] : 
                       (N0)? data_i[236] : 1'b0;
  assign data_o[107] = (N1)? data_i[107] : 
                       (N0)? data_i[235] : 1'b0;
  assign data_o[106] = (N1)? data_i[106] : 
                       (N0)? data_i[234] : 1'b0;
  assign data_o[105] = (N1)? data_i[105] : 
                       (N0)? data_i[233] : 1'b0;
  assign data_o[104] = (N1)? data_i[104] : 
                       (N0)? data_i[232] : 1'b0;
  assign data_o[103] = (N1)? data_i[103] : 
                       (N0)? data_i[231] : 1'b0;
  assign data_o[102] = (N1)? data_i[102] : 
                       (N0)? data_i[230] : 1'b0;
  assign data_o[101] = (N1)? data_i[101] : 
                       (N0)? data_i[229] : 1'b0;
  assign data_o[100] = (N1)? data_i[100] : 
                       (N0)? data_i[228] : 1'b0;
  assign data_o[99] = (N1)? data_i[99] : 
                      (N0)? data_i[227] : 1'b0;
  assign data_o[98] = (N1)? data_i[98] : 
                      (N0)? data_i[226] : 1'b0;
  assign data_o[97] = (N1)? data_i[97] : 
                      (N0)? data_i[225] : 1'b0;
  assign data_o[96] = (N1)? data_i[96] : 
                      (N0)? data_i[224] : 1'b0;
  assign data_o[95] = (N1)? data_i[95] : 
                      (N0)? data_i[223] : 1'b0;
  assign data_o[94] = (N1)? data_i[94] : 
                      (N0)? data_i[222] : 1'b0;
  assign data_o[93] = (N1)? data_i[93] : 
                      (N0)? data_i[221] : 1'b0;
  assign data_o[92] = (N1)? data_i[92] : 
                      (N0)? data_i[220] : 1'b0;
  assign data_o[91] = (N1)? data_i[91] : 
                      (N0)? data_i[219] : 1'b0;
  assign data_o[90] = (N1)? data_i[90] : 
                      (N0)? data_i[218] : 1'b0;
  assign data_o[89] = (N1)? data_i[89] : 
                      (N0)? data_i[217] : 1'b0;
  assign data_o[88] = (N1)? data_i[88] : 
                      (N0)? data_i[216] : 1'b0;
  assign data_o[87] = (N1)? data_i[87] : 
                      (N0)? data_i[215] : 1'b0;
  assign data_o[86] = (N1)? data_i[86] : 
                      (N0)? data_i[214] : 1'b0;
  assign data_o[85] = (N1)? data_i[85] : 
                      (N0)? data_i[213] : 1'b0;
  assign data_o[84] = (N1)? data_i[84] : 
                      (N0)? data_i[212] : 1'b0;
  assign data_o[83] = (N1)? data_i[83] : 
                      (N0)? data_i[211] : 1'b0;
  assign data_o[82] = (N1)? data_i[82] : 
                      (N0)? data_i[210] : 1'b0;
  assign data_o[81] = (N1)? data_i[81] : 
                      (N0)? data_i[209] : 1'b0;
  assign data_o[80] = (N1)? data_i[80] : 
                      (N0)? data_i[208] : 1'b0;
  assign data_o[79] = (N1)? data_i[79] : 
                      (N0)? data_i[207] : 1'b0;
  assign data_o[78] = (N1)? data_i[78] : 
                      (N0)? data_i[206] : 1'b0;
  assign data_o[77] = (N1)? data_i[77] : 
                      (N0)? data_i[205] : 1'b0;
  assign data_o[76] = (N1)? data_i[76] : 
                      (N0)? data_i[204] : 1'b0;
  assign data_o[75] = (N1)? data_i[75] : 
                      (N0)? data_i[203] : 1'b0;
  assign data_o[74] = (N1)? data_i[74] : 
                      (N0)? data_i[202] : 1'b0;
  assign data_o[73] = (N1)? data_i[73] : 
                      (N0)? data_i[201] : 1'b0;
  assign data_o[72] = (N1)? data_i[72] : 
                      (N0)? data_i[200] : 1'b0;
  assign data_o[71] = (N1)? data_i[71] : 
                      (N0)? data_i[199] : 1'b0;
  assign data_o[70] = (N1)? data_i[70] : 
                      (N0)? data_i[198] : 1'b0;
  assign data_o[69] = (N1)? data_i[69] : 
                      (N0)? data_i[197] : 1'b0;
  assign data_o[68] = (N1)? data_i[68] : 
                      (N0)? data_i[196] : 1'b0;
  assign data_o[67] = (N1)? data_i[67] : 
                      (N0)? data_i[195] : 1'b0;
  assign data_o[66] = (N1)? data_i[66] : 
                      (N0)? data_i[194] : 1'b0;
  assign data_o[65] = (N1)? data_i[65] : 
                      (N0)? data_i[193] : 1'b0;
  assign data_o[64] = (N1)? data_i[64] : 
                      (N0)? data_i[192] : 1'b0;
  assign data_o[63] = (N1)? data_i[63] : 
                      (N0)? data_i[191] : 1'b0;
  assign data_o[62] = (N1)? data_i[62] : 
                      (N0)? data_i[190] : 1'b0;
  assign data_o[61] = (N1)? data_i[61] : 
                      (N0)? data_i[189] : 1'b0;
  assign data_o[60] = (N1)? data_i[60] : 
                      (N0)? data_i[188] : 1'b0;
  assign data_o[59] = (N1)? data_i[59] : 
                      (N0)? data_i[187] : 1'b0;
  assign data_o[58] = (N1)? data_i[58] : 
                      (N0)? data_i[186] : 1'b0;
  assign data_o[57] = (N1)? data_i[57] : 
                      (N0)? data_i[185] : 1'b0;
  assign data_o[56] = (N1)? data_i[56] : 
                      (N0)? data_i[184] : 1'b0;
  assign data_o[55] = (N1)? data_i[55] : 
                      (N0)? data_i[183] : 1'b0;
  assign data_o[54] = (N1)? data_i[54] : 
                      (N0)? data_i[182] : 1'b0;
  assign data_o[53] = (N1)? data_i[53] : 
                      (N0)? data_i[181] : 1'b0;
  assign data_o[52] = (N1)? data_i[52] : 
                      (N0)? data_i[180] : 1'b0;
  assign data_o[51] = (N1)? data_i[51] : 
                      (N0)? data_i[179] : 1'b0;
  assign data_o[50] = (N1)? data_i[50] : 
                      (N0)? data_i[178] : 1'b0;
  assign data_o[49] = (N1)? data_i[49] : 
                      (N0)? data_i[177] : 1'b0;
  assign data_o[48] = (N1)? data_i[48] : 
                      (N0)? data_i[176] : 1'b0;
  assign data_o[47] = (N1)? data_i[47] : 
                      (N0)? data_i[175] : 1'b0;
  assign data_o[46] = (N1)? data_i[46] : 
                      (N0)? data_i[174] : 1'b0;
  assign data_o[45] = (N1)? data_i[45] : 
                      (N0)? data_i[173] : 1'b0;
  assign data_o[44] = (N1)? data_i[44] : 
                      (N0)? data_i[172] : 1'b0;
  assign data_o[43] = (N1)? data_i[43] : 
                      (N0)? data_i[171] : 1'b0;
  assign data_o[42] = (N1)? data_i[42] : 
                      (N0)? data_i[170] : 1'b0;
  assign data_o[41] = (N1)? data_i[41] : 
                      (N0)? data_i[169] : 1'b0;
  assign data_o[40] = (N1)? data_i[40] : 
                      (N0)? data_i[168] : 1'b0;
  assign data_o[39] = (N1)? data_i[39] : 
                      (N0)? data_i[167] : 1'b0;
  assign data_o[38] = (N1)? data_i[38] : 
                      (N0)? data_i[166] : 1'b0;
  assign data_o[37] = (N1)? data_i[37] : 
                      (N0)? data_i[165] : 1'b0;
  assign data_o[36] = (N1)? data_i[36] : 
                      (N0)? data_i[164] : 1'b0;
  assign data_o[35] = (N1)? data_i[35] : 
                      (N0)? data_i[163] : 1'b0;
  assign data_o[34] = (N1)? data_i[34] : 
                      (N0)? data_i[162] : 1'b0;
  assign data_o[33] = (N1)? data_i[33] : 
                      (N0)? data_i[161] : 1'b0;
  assign data_o[32] = (N1)? data_i[32] : 
                      (N0)? data_i[160] : 1'b0;
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[159] : 1'b0;
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[158] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[157] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[156] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[155] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[154] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[153] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[152] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[151] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[150] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[149] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[148] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[147] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[146] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[145] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[144] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[143] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[142] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[141] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[140] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[139] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[138] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[137] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[136] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[135] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[134] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[133] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[132] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[131] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[130] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[129] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[128] : 1'b0;
  assign N1 = ~sel_i[0];

endmodule