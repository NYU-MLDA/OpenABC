module bsg_mux_width_p64_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [255:0] data_i;
  input [1:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[63] = (N2)? data_i[63] : 
                      (N4)? data_i[127] : 
                      (N3)? data_i[191] : 
                      (N5)? data_i[255] : 1'b0;
  assign data_o[62] = (N2)? data_i[62] : 
                      (N4)? data_i[126] : 
                      (N3)? data_i[190] : 
                      (N5)? data_i[254] : 1'b0;
  assign data_o[61] = (N2)? data_i[61] : 
                      (N4)? data_i[125] : 
                      (N3)? data_i[189] : 
                      (N5)? data_i[253] : 1'b0;
  assign data_o[60] = (N2)? data_i[60] : 
                      (N4)? data_i[124] : 
                      (N3)? data_i[188] : 
                      (N5)? data_i[252] : 1'b0;
  assign data_o[59] = (N2)? data_i[59] : 
                      (N4)? data_i[123] : 
                      (N3)? data_i[187] : 
                      (N5)? data_i[251] : 1'b0;
  assign data_o[58] = (N2)? data_i[58] : 
                      (N4)? data_i[122] : 
                      (N3)? data_i[186] : 
                      (N5)? data_i[250] : 1'b0;
  assign data_o[57] = (N2)? data_i[57] : 
                      (N4)? data_i[121] : 
                      (N3)? data_i[185] : 
                      (N5)? data_i[249] : 1'b0;
  assign data_o[56] = (N2)? data_i[56] : 
                      (N4)? data_i[120] : 
                      (N3)? data_i[184] : 
                      (N5)? data_i[248] : 1'b0;
  assign data_o[55] = (N2)? data_i[55] : 
                      (N4)? data_i[119] : 
                      (N3)? data_i[183] : 
                      (N5)? data_i[247] : 1'b0;
  assign data_o[54] = (N2)? data_i[54] : 
                      (N4)? data_i[118] : 
                      (N3)? data_i[182] : 
                      (N5)? data_i[246] : 1'b0;
  assign data_o[53] = (N2)? data_i[53] : 
                      (N4)? data_i[117] : 
                      (N3)? data_i[181] : 
                      (N5)? data_i[245] : 1'b0;
  assign data_o[52] = (N2)? data_i[52] : 
                      (N4)? data_i[116] : 
                      (N3)? data_i[180] : 
                      (N5)? data_i[244] : 1'b0;
  assign data_o[51] = (N2)? data_i[51] : 
                      (N4)? data_i[115] : 
                      (N3)? data_i[179] : 
                      (N5)? data_i[243] : 1'b0;
  assign data_o[50] = (N2)? data_i[50] : 
                      (N4)? data_i[114] : 
                      (N3)? data_i[178] : 
                      (N5)? data_i[242] : 1'b0;
  assign data_o[49] = (N2)? data_i[49] : 
                      (N4)? data_i[113] : 
                      (N3)? data_i[177] : 
                      (N5)? data_i[241] : 1'b0;
  assign data_o[48] = (N2)? data_i[48] : 
                      (N4)? data_i[112] : 
                      (N3)? data_i[176] : 
                      (N5)? data_i[240] : 1'b0;
  assign data_o[47] = (N2)? data_i[47] : 
                      (N4)? data_i[111] : 
                      (N3)? data_i[175] : 
                      (N5)? data_i[239] : 1'b0;
  assign data_o[46] = (N2)? data_i[46] : 
                      (N4)? data_i[110] : 
                      (N3)? data_i[174] : 
                      (N5)? data_i[238] : 1'b0;
  assign data_o[45] = (N2)? data_i[45] : 
                      (N4)? data_i[109] : 
                      (N3)? data_i[173] : 
                      (N5)? data_i[237] : 1'b0;
  assign data_o[44] = (N2)? data_i[44] : 
                      (N4)? data_i[108] : 
                      (N3)? data_i[172] : 
                      (N5)? data_i[236] : 1'b0;
  assign data_o[43] = (N2)? data_i[43] : 
                      (N4)? data_i[107] : 
                      (N3)? data_i[171] : 
                      (N5)? data_i[235] : 1'b0;
  assign data_o[42] = (N2)? data_i[42] : 
                      (N4)? data_i[106] : 
                      (N3)? data_i[170] : 
                      (N5)? data_i[234] : 1'b0;
  assign data_o[41] = (N2)? data_i[41] : 
                      (N4)? data_i[105] : 
                      (N3)? data_i[169] : 
                      (N5)? data_i[233] : 1'b0;
  assign data_o[40] = (N2)? data_i[40] : 
                      (N4)? data_i[104] : 
                      (N3)? data_i[168] : 
                      (N5)? data_i[232] : 1'b0;
  assign data_o[39] = (N2)? data_i[39] : 
                      (N4)? data_i[103] : 
                      (N3)? data_i[167] : 
                      (N5)? data_i[231] : 1'b0;
  assign data_o[38] = (N2)? data_i[38] : 
                      (N4)? data_i[102] : 
                      (N3)? data_i[166] : 
                      (N5)? data_i[230] : 1'b0;
  assign data_o[37] = (N2)? data_i[37] : 
                      (N4)? data_i[101] : 
                      (N3)? data_i[165] : 
                      (N5)? data_i[229] : 1'b0;
  assign data_o[36] = (N2)? data_i[36] : 
                      (N4)? data_i[100] : 
                      (N3)? data_i[164] : 
                      (N5)? data_i[228] : 1'b0;
  assign data_o[35] = (N2)? data_i[35] : 
                      (N4)? data_i[99] : 
                      (N3)? data_i[163] : 
                      (N5)? data_i[227] : 1'b0;
  assign data_o[34] = (N2)? data_i[34] : 
                      (N4)? data_i[98] : 
                      (N3)? data_i[162] : 
                      (N5)? data_i[226] : 1'b0;
  assign data_o[33] = (N2)? data_i[33] : 
                      (N4)? data_i[97] : 
                      (N3)? data_i[161] : 
                      (N5)? data_i[225] : 1'b0;
  assign data_o[32] = (N2)? data_i[32] : 
                      (N4)? data_i[96] : 
                      (N3)? data_i[160] : 
                      (N5)? data_i[224] : 1'b0;
  assign data_o[31] = (N2)? data_i[31] : 
                      (N4)? data_i[95] : 
                      (N3)? data_i[159] : 
                      (N5)? data_i[223] : 1'b0;
  assign data_o[30] = (N2)? data_i[30] : 
                      (N4)? data_i[94] : 
                      (N3)? data_i[158] : 
                      (N5)? data_i[222] : 1'b0;
  assign data_o[29] = (N2)? data_i[29] : 
                      (N4)? data_i[93] : 
                      (N3)? data_i[157] : 
                      (N5)? data_i[221] : 1'b0;
  assign data_o[28] = (N2)? data_i[28] : 
                      (N4)? data_i[92] : 
                      (N3)? data_i[156] : 
                      (N5)? data_i[220] : 1'b0;
  assign data_o[27] = (N2)? data_i[27] : 
                      (N4)? data_i[91] : 
                      (N3)? data_i[155] : 
                      (N5)? data_i[219] : 1'b0;
  assign data_o[26] = (N2)? data_i[26] : 
                      (N4)? data_i[90] : 
                      (N3)? data_i[154] : 
                      (N5)? data_i[218] : 1'b0;
  assign data_o[25] = (N2)? data_i[25] : 
                      (N4)? data_i[89] : 
                      (N3)? data_i[153] : 
                      (N5)? data_i[217] : 1'b0;
  assign data_o[24] = (N2)? data_i[24] : 
                      (N4)? data_i[88] : 
                      (N3)? data_i[152] : 
                      (N5)? data_i[216] : 1'b0;
  assign data_o[23] = (N2)? data_i[23] : 
                      (N4)? data_i[87] : 
                      (N3)? data_i[151] : 
                      (N5)? data_i[215] : 1'b0;
  assign data_o[22] = (N2)? data_i[22] : 
                      (N4)? data_i[86] : 
                      (N3)? data_i[150] : 
                      (N5)? data_i[214] : 1'b0;
  assign data_o[21] = (N2)? data_i[21] : 
                      (N4)? data_i[85] : 
                      (N3)? data_i[149] : 
                      (N5)? data_i[213] : 1'b0;
  assign data_o[20] = (N2)? data_i[20] : 
                      (N4)? data_i[84] : 
                      (N3)? data_i[148] : 
                      (N5)? data_i[212] : 1'b0;
  assign data_o[19] = (N2)? data_i[19] : 
                      (N4)? data_i[83] : 
                      (N3)? data_i[147] : 
                      (N5)? data_i[211] : 1'b0;
  assign data_o[18] = (N2)? data_i[18] : 
                      (N4)? data_i[82] : 
                      (N3)? data_i[146] : 
                      (N5)? data_i[210] : 1'b0;
  assign data_o[17] = (N2)? data_i[17] : 
                      (N4)? data_i[81] : 
                      (N3)? data_i[145] : 
                      (N5)? data_i[209] : 1'b0;
  assign data_o[16] = (N2)? data_i[16] : 
                      (N4)? data_i[80] : 
                      (N3)? data_i[144] : 
                      (N5)? data_i[208] : 1'b0;
  assign data_o[15] = (N2)? data_i[15] : 
                      (N4)? data_i[79] : 
                      (N3)? data_i[143] : 
                      (N5)? data_i[207] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] : 
                      (N4)? data_i[78] : 
                      (N3)? data_i[142] : 
                      (N5)? data_i[206] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] : 
                      (N4)? data_i[77] : 
                      (N3)? data_i[141] : 
                      (N5)? data_i[205] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] : 
                      (N4)? data_i[76] : 
                      (N3)? data_i[140] : 
                      (N5)? data_i[204] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] : 
                      (N4)? data_i[75] : 
                      (N3)? data_i[139] : 
                      (N5)? data_i[203] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] : 
                      (N4)? data_i[74] : 
                      (N3)? data_i[138] : 
                      (N5)? data_i[202] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] : 
                     (N4)? data_i[73] : 
                     (N3)? data_i[137] : 
                     (N5)? data_i[201] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] : 
                     (N4)? data_i[72] : 
                     (N3)? data_i[136] : 
                     (N5)? data_i[200] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N4)? data_i[71] : 
                     (N3)? data_i[135] : 
                     (N5)? data_i[199] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N4)? data_i[70] : 
                     (N3)? data_i[134] : 
                     (N5)? data_i[198] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N4)? data_i[69] : 
                     (N3)? data_i[133] : 
                     (N5)? data_i[197] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N4)? data_i[68] : 
                     (N3)? data_i[132] : 
                     (N5)? data_i[196] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N4)? data_i[67] : 
                     (N3)? data_i[131] : 
                     (N5)? data_i[195] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N4)? data_i[66] : 
                     (N3)? data_i[130] : 
                     (N5)? data_i[194] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N4)? data_i[65] : 
                     (N3)? data_i[129] : 
                     (N5)? data_i[193] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[64] : 
                     (N3)? data_i[128] : 
                     (N5)? data_i[192] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule