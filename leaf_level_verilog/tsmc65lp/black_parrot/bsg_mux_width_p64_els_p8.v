module bsg_mux_width_p64_els_p8
(
  data_i,
  sel_i,
  data_o
);

  input [511:0] data_i;
  input [2:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  assign data_o[63] = (N7)? data_i[63] :
                      (N9)? data_i[127] :
                      (N11)? data_i[191] :
                      (N13)? data_i[255] :
                      (N8)? data_i[319] :
                      (N10)? data_i[383] :
                      (N12)? data_i[447] :
                      (N14)? data_i[511] : 1'b0;
  assign data_o[62] = (N7)? data_i[62] :
                      (N9)? data_i[126] :
                      (N11)? data_i[190] :
                      (N13)? data_i[254] :
                      (N8)? data_i[318] :
                      (N10)? data_i[382] :
                      (N12)? data_i[446] :
                      (N14)? data_i[510] : 1'b0;
  assign data_o[61] = (N7)? data_i[61] :
                      (N9)? data_i[125] :
                      (N11)? data_i[189] :
                      (N13)? data_i[253] :
                      (N8)? data_i[317] :
                      (N10)? data_i[381] :
                      (N12)? data_i[445] :
                      (N14)? data_i[509] : 1'b0;
  assign data_o[60] = (N7)? data_i[60] :
                      (N9)? data_i[124] :
                      (N11)? data_i[188] :
                      (N13)? data_i[252] :
                      (N8)? data_i[316] :
                      (N10)? data_i[380] :
                      (N12)? data_i[444] :
                      (N14)? data_i[508] : 1'b0;
  assign data_o[59] = (N7)? data_i[59] :
                      (N9)? data_i[123] :
                      (N11)? data_i[187] :
                      (N13)? data_i[251] :
                      (N8)? data_i[315] :
                      (N10)? data_i[379] :
                      (N12)? data_i[443] :
                      (N14)? data_i[507] : 1'b0;
  assign data_o[58] = (N7)? data_i[58] :
                      (N9)? data_i[122] :
                      (N11)? data_i[186] :
                      (N13)? data_i[250] :
                      (N8)? data_i[314] :
                      (N10)? data_i[378] :
                      (N12)? data_i[442] :
                      (N14)? data_i[506] : 1'b0;
  assign data_o[57] = (N7)? data_i[57] :
                      (N9)? data_i[121] :
                      (N11)? data_i[185] :
                      (N13)? data_i[249] :
                      (N8)? data_i[313] :
                      (N10)? data_i[377] :
                      (N12)? data_i[441] :
                      (N14)? data_i[505] : 1'b0;
  assign data_o[56] = (N7)? data_i[56] :
                      (N9)? data_i[120] :
                      (N11)? data_i[184] :
                      (N13)? data_i[248] :
                      (N8)? data_i[312] :
                      (N10)? data_i[376] :
                      (N12)? data_i[440] :
                      (N14)? data_i[504] : 1'b0;
  assign data_o[55] = (N7)? data_i[55] :
                      (N9)? data_i[119] :
                      (N11)? data_i[183] :
                      (N13)? data_i[247] :
                      (N8)? data_i[311] :
                      (N10)? data_i[375] :
                      (N12)? data_i[439] :
                      (N14)? data_i[503] : 1'b0;
  assign data_o[54] = (N7)? data_i[54] :
                      (N9)? data_i[118] :
                      (N11)? data_i[182] :
                      (N13)? data_i[246] :
                      (N8)? data_i[310] :
                      (N10)? data_i[374] :
                      (N12)? data_i[438] :
                      (N14)? data_i[502] : 1'b0;
  assign data_o[53] = (N7)? data_i[53] :
                      (N9)? data_i[117] :
                      (N11)? data_i[181] :
                      (N13)? data_i[245] :
                      (N8)? data_i[309] :
                      (N10)? data_i[373] :
                      (N12)? data_i[437] :
                      (N14)? data_i[501] : 1'b0;
  assign data_o[52] = (N7)? data_i[52] :
                      (N9)? data_i[116] :
                      (N11)? data_i[180] :
                      (N13)? data_i[244] :
                      (N8)? data_i[308] :
                      (N10)? data_i[372] :
                      (N12)? data_i[436] :
                      (N14)? data_i[500] : 1'b0;
  assign data_o[51] = (N7)? data_i[51] :
                      (N9)? data_i[115] :
                      (N11)? data_i[179] :
                      (N13)? data_i[243] :
                      (N8)? data_i[307] :
                      (N10)? data_i[371] :
                      (N12)? data_i[435] :
                      (N14)? data_i[499] : 1'b0;
  assign data_o[50] = (N7)? data_i[50] :
                      (N9)? data_i[114] :
                      (N11)? data_i[178] :
                      (N13)? data_i[242] :
                      (N8)? data_i[306] :
                      (N10)? data_i[370] :
                      (N12)? data_i[434] :
                      (N14)? data_i[498] : 1'b0;
  assign data_o[49] = (N7)? data_i[49] :
                      (N9)? data_i[113] :
                      (N11)? data_i[177] :
                      (N13)? data_i[241] :
                      (N8)? data_i[305] :
                      (N10)? data_i[369] :
                      (N12)? data_i[433] :
                      (N14)? data_i[497] : 1'b0;
  assign data_o[48] = (N7)? data_i[48] :
                      (N9)? data_i[112] :
                      (N11)? data_i[176] :
                      (N13)? data_i[240] :
                      (N8)? data_i[304] :
                      (N10)? data_i[368] :
                      (N12)? data_i[432] :
                      (N14)? data_i[496] : 1'b0;
  assign data_o[47] = (N7)? data_i[47] :
                      (N9)? data_i[111] :
                      (N11)? data_i[175] :
                      (N13)? data_i[239] :
                      (N8)? data_i[303] :
                      (N10)? data_i[367] :
                      (N12)? data_i[431] :
                      (N14)? data_i[495] : 1'b0;
  assign data_o[46] = (N7)? data_i[46] :
                      (N9)? data_i[110] :
                      (N11)? data_i[174] :
                      (N13)? data_i[238] :
                      (N8)? data_i[302] :
                      (N10)? data_i[366] :
                      (N12)? data_i[430] :
                      (N14)? data_i[494] : 1'b0;
  assign data_o[45] = (N7)? data_i[45] :
                      (N9)? data_i[109] :
                      (N11)? data_i[173] :
                      (N13)? data_i[237] :
                      (N8)? data_i[301] :
                      (N10)? data_i[365] :
                      (N12)? data_i[429] :
                      (N14)? data_i[493] : 1'b0;
  assign data_o[44] = (N7)? data_i[44] :
                      (N9)? data_i[108] :
                      (N11)? data_i[172] :
                      (N13)? data_i[236] :
                      (N8)? data_i[300] :
                      (N10)? data_i[364] :
                      (N12)? data_i[428] :
                      (N14)? data_i[492] : 1'b0;
  assign data_o[43] = (N7)? data_i[43] :
                      (N9)? data_i[107] :
                      (N11)? data_i[171] :
                      (N13)? data_i[235] :
                      (N8)? data_i[299] :
                      (N10)? data_i[363] :
                      (N12)? data_i[427] :
                      (N14)? data_i[491] : 1'b0;
  assign data_o[42] = (N7)? data_i[42] :
                      (N9)? data_i[106] :
                      (N11)? data_i[170] :
                      (N13)? data_i[234] :
                      (N8)? data_i[298] :
                      (N10)? data_i[362] :
                      (N12)? data_i[426] :
                      (N14)? data_i[490] : 1'b0;
  assign data_o[41] = (N7)? data_i[41] :
                      (N9)? data_i[105] :
                      (N11)? data_i[169] :
                      (N13)? data_i[233] :
                      (N8)? data_i[297] :
                      (N10)? data_i[361] :
                      (N12)? data_i[425] :
                      (N14)? data_i[489] : 1'b0;
  assign data_o[40] = (N7)? data_i[40] :
                      (N9)? data_i[104] :
                      (N11)? data_i[168] :
                      (N13)? data_i[232] :
                      (N8)? data_i[296] :
                      (N10)? data_i[360] :
                      (N12)? data_i[424] :
                      (N14)? data_i[488] : 1'b0;
  assign data_o[39] = (N7)? data_i[39] :
                      (N9)? data_i[103] :
                      (N11)? data_i[167] :
                      (N13)? data_i[231] :
                      (N8)? data_i[295] :
                      (N10)? data_i[359] :
                      (N12)? data_i[423] :
                      (N14)? data_i[487] : 1'b0;
  assign data_o[38] = (N7)? data_i[38] :
                      (N9)? data_i[102] :
                      (N11)? data_i[166] :
                      (N13)? data_i[230] :
                      (N8)? data_i[294] :
                      (N10)? data_i[358] :
                      (N12)? data_i[422] :
                      (N14)? data_i[486] : 1'b0;
  assign data_o[37] = (N7)? data_i[37] :
                      (N9)? data_i[101] :
                      (N11)? data_i[165] :
                      (N13)? data_i[229] :
                      (N8)? data_i[293] :
                      (N10)? data_i[357] :
                      (N12)? data_i[421] :
                      (N14)? data_i[485] : 1'b0;
  assign data_o[36] = (N7)? data_i[36] :
                      (N9)? data_i[100] :
                      (N11)? data_i[164] :
                      (N13)? data_i[228] :
                      (N8)? data_i[292] :
                      (N10)? data_i[356] :
                      (N12)? data_i[420] :
                      (N14)? data_i[484] : 1'b0;
  assign data_o[35] = (N7)? data_i[35] :
                      (N9)? data_i[99] :
                      (N11)? data_i[163] :
                      (N13)? data_i[227] :
                      (N8)? data_i[291] :
                      (N10)? data_i[355] :
                      (N12)? data_i[419] :
                      (N14)? data_i[483] : 1'b0;
  assign data_o[34] = (N7)? data_i[34] :
                      (N9)? data_i[98] :
                      (N11)? data_i[162] :
                      (N13)? data_i[226] :
                      (N8)? data_i[290] :
                      (N10)? data_i[354] :
                      (N12)? data_i[418] :
                      (N14)? data_i[482] : 1'b0;
  assign data_o[33] = (N7)? data_i[33] :
                      (N9)? data_i[97] :
                      (N11)? data_i[161] :
                      (N13)? data_i[225] :
                      (N8)? data_i[289] :
                      (N10)? data_i[353] :
                      (N12)? data_i[417] :
                      (N14)? data_i[481] : 1'b0;
  assign data_o[32] = (N7)? data_i[32] :
                      (N9)? data_i[96] :
                      (N11)? data_i[160] :
                      (N13)? data_i[224] :
                      (N8)? data_i[288] :
                      (N10)? data_i[352] :
                      (N12)? data_i[416] :
                      (N14)? data_i[480] : 1'b0;
  assign data_o[31] = (N7)? data_i[31] :
                      (N9)? data_i[95] :
                      (N11)? data_i[159] :
                      (N13)? data_i[223] :
                      (N8)? data_i[287] :
                      (N10)? data_i[351] :
                      (N12)? data_i[415] :
                      (N14)? data_i[479] : 1'b0;
  assign data_o[30] = (N7)? data_i[30] :
                      (N9)? data_i[94] :
                      (N11)? data_i[158] :
                      (N13)? data_i[222] :
                      (N8)? data_i[286] :
                      (N10)? data_i[350] :
                      (N12)? data_i[414] :
                      (N14)? data_i[478] : 1'b0;
  assign data_o[29] = (N7)? data_i[29] :
                      (N9)? data_i[93] :
                      (N11)? data_i[157] :
                      (N13)? data_i[221] :
                      (N8)? data_i[285] :
                      (N10)? data_i[349] :
                      (N12)? data_i[413] :
                      (N14)? data_i[477] : 1'b0;
  assign data_o[28] = (N7)? data_i[28] :
                      (N9)? data_i[92] :
                      (N11)? data_i[156] :
                      (N13)? data_i[220] :
                      (N8)? data_i[284] :
                      (N10)? data_i[348] :
                      (N12)? data_i[412] :
                      (N14)? data_i[476] : 1'b0;
  assign data_o[27] = (N7)? data_i[27] :
                      (N9)? data_i[91] :
                      (N11)? data_i[155] :
                      (N13)? data_i[219] :
                      (N8)? data_i[283] :
                      (N10)? data_i[347] :
                      (N12)? data_i[411] :
                      (N14)? data_i[475] : 1'b0;
  assign data_o[26] = (N7)? data_i[26] :
                      (N9)? data_i[90] :
                      (N11)? data_i[154] :
                      (N13)? data_i[218] :
                      (N8)? data_i[282] :
                      (N10)? data_i[346] :
                      (N12)? data_i[410] :
                      (N14)? data_i[474] : 1'b0;
  assign data_o[25] = (N7)? data_i[25] :
                      (N9)? data_i[89] :
                      (N11)? data_i[153] :
                      (N13)? data_i[217] :
                      (N8)? data_i[281] :
                      (N10)? data_i[345] :
                      (N12)? data_i[409] :
                      (N14)? data_i[473] : 1'b0;
  assign data_o[24] = (N7)? data_i[24] :
                      (N9)? data_i[88] :
                      (N11)? data_i[152] :
                      (N13)? data_i[216] :
                      (N8)? data_i[280] :
                      (N10)? data_i[344] :
                      (N12)? data_i[408] :
                      (N14)? data_i[472] : 1'b0;
  assign data_o[23] = (N7)? data_i[23] :
                      (N9)? data_i[87] :
                      (N11)? data_i[151] :
                      (N13)? data_i[215] :
                      (N8)? data_i[279] :
                      (N10)? data_i[343] :
                      (N12)? data_i[407] :
                      (N14)? data_i[471] : 1'b0;
  assign data_o[22] = (N7)? data_i[22] :
                      (N9)? data_i[86] :
                      (N11)? data_i[150] :
                      (N13)? data_i[214] :
                      (N8)? data_i[278] :
                      (N10)? data_i[342] :
                      (N12)? data_i[406] :
                      (N14)? data_i[470] : 1'b0;
  assign data_o[21] = (N7)? data_i[21] :
                      (N9)? data_i[85] :
                      (N11)? data_i[149] :
                      (N13)? data_i[213] :
                      (N8)? data_i[277] :
                      (N10)? data_i[341] :
                      (N12)? data_i[405] :
                      (N14)? data_i[469] : 1'b0;
  assign data_o[20] = (N7)? data_i[20] :
                      (N9)? data_i[84] :
                      (N11)? data_i[148] :
                      (N13)? data_i[212] :
                      (N8)? data_i[276] :
                      (N10)? data_i[340] :
                      (N12)? data_i[404] :
                      (N14)? data_i[468] : 1'b0;
  assign data_o[19] = (N7)? data_i[19] :
                      (N9)? data_i[83] :
                      (N11)? data_i[147] :
                      (N13)? data_i[211] :
                      (N8)? data_i[275] :
                      (N10)? data_i[339] :
                      (N12)? data_i[403] :
                      (N14)? data_i[467] : 1'b0;
  assign data_o[18] = (N7)? data_i[18] :
                      (N9)? data_i[82] :
                      (N11)? data_i[146] :
                      (N13)? data_i[210] :
                      (N8)? data_i[274] :
                      (N10)? data_i[338] :
                      (N12)? data_i[402] :
                      (N14)? data_i[466] : 1'b0;
  assign data_o[17] = (N7)? data_i[17] :
                      (N9)? data_i[81] :
                      (N11)? data_i[145] :
                      (N13)? data_i[209] :
                      (N8)? data_i[273] :
                      (N10)? data_i[337] :
                      (N12)? data_i[401] :
                      (N14)? data_i[465] : 1'b0;
  assign data_o[16] = (N7)? data_i[16] :
                      (N9)? data_i[80] :
                      (N11)? data_i[144] :
                      (N13)? data_i[208] :
                      (N8)? data_i[272] :
                      (N10)? data_i[336] :
                      (N12)? data_i[400] :
                      (N14)? data_i[464] : 1'b0;
  assign data_o[15] = (N7)? data_i[15] :
                      (N9)? data_i[79] :
                      (N11)? data_i[143] :
                      (N13)? data_i[207] :
                      (N8)? data_i[271] :
                      (N10)? data_i[335] :
                      (N12)? data_i[399] :
                      (N14)? data_i[463] : 1'b0;
  assign data_o[14] = (N7)? data_i[14] :
                      (N9)? data_i[78] :
                      (N11)? data_i[142] :
                      (N13)? data_i[206] :
                      (N8)? data_i[270] :
                      (N10)? data_i[334] :
                      (N12)? data_i[398] :
                      (N14)? data_i[462] : 1'b0;
  assign data_o[13] = (N7)? data_i[13] :
                      (N9)? data_i[77] :
                      (N11)? data_i[141] :
                      (N13)? data_i[205] :
                      (N8)? data_i[269] :
                      (N10)? data_i[333] :
                      (N12)? data_i[397] :
                      (N14)? data_i[461] : 1'b0;
  assign data_o[12] = (N7)? data_i[12] :
                      (N9)? data_i[76] :
                      (N11)? data_i[140] :
                      (N13)? data_i[204] :
                      (N8)? data_i[268] :
                      (N10)? data_i[332] :
                      (N12)? data_i[396] :
                      (N14)? data_i[460] : 1'b0;
  assign data_o[11] = (N7)? data_i[11] :
                      (N9)? data_i[75] :
                      (N11)? data_i[139] :
                      (N13)? data_i[203] :
                      (N8)? data_i[267] :
                      (N10)? data_i[331] :
                      (N12)? data_i[395] :
                      (N14)? data_i[459] : 1'b0;
  assign data_o[10] = (N7)? data_i[10] :
                      (N9)? data_i[74] :
                      (N11)? data_i[138] :
                      (N13)? data_i[202] :
                      (N8)? data_i[266] :
                      (N10)? data_i[330] :
                      (N12)? data_i[394] :
                      (N14)? data_i[458] : 1'b0;
  assign data_o[9] = (N7)? data_i[9] :
                     (N9)? data_i[73] :
                     (N11)? data_i[137] :
                     (N13)? data_i[201] :
                     (N8)? data_i[265] :
                     (N10)? data_i[329] :
                     (N12)? data_i[393] :
                     (N14)? data_i[457] : 1'b0;
  assign data_o[8] = (N7)? data_i[8] :
                     (N9)? data_i[72] :
                     (N11)? data_i[136] :
                     (N13)? data_i[200] :
                     (N8)? data_i[264] :
                     (N10)? data_i[328] :
                     (N12)? data_i[392] :
                     (N14)? data_i[456] : 1'b0;
  assign data_o[7] = (N7)? data_i[7] :
                     (N9)? data_i[71] :
                     (N11)? data_i[135] :
                     (N13)? data_i[199] :
                     (N8)? data_i[263] :
                     (N10)? data_i[327] :
                     (N12)? data_i[391] :
                     (N14)? data_i[455] : 1'b0;
  assign data_o[6] = (N7)? data_i[6] :
                     (N9)? data_i[70] :
                     (N11)? data_i[134] :
                     (N13)? data_i[198] :
                     (N8)? data_i[262] :
                     (N10)? data_i[326] :
                     (N12)? data_i[390] :
                     (N14)? data_i[454] : 1'b0;
  assign data_o[5] = (N7)? data_i[5] :
                     (N9)? data_i[69] :
                     (N11)? data_i[133] :
                     (N13)? data_i[197] :
                     (N8)? data_i[261] :
                     (N10)? data_i[325] :
                     (N12)? data_i[389] :
                     (N14)? data_i[453] : 1'b0;
  assign data_o[4] = (N7)? data_i[4] :
                     (N9)? data_i[68] :
                     (N11)? data_i[132] :
                     (N13)? data_i[196] :
                     (N8)? data_i[260] :
                     (N10)? data_i[324] :
                     (N12)? data_i[388] :
                     (N14)? data_i[452] : 1'b0;
  assign data_o[3] = (N7)? data_i[3] :
                     (N9)? data_i[67] :
                     (N11)? data_i[131] :
                     (N13)? data_i[195] :
                     (N8)? data_i[259] :
                     (N10)? data_i[323] :
                     (N12)? data_i[387] :
                     (N14)? data_i[451] : 1'b0;
  assign data_o[2] = (N7)? data_i[2] :
                     (N9)? data_i[66] :
                     (N11)? data_i[130] :
                     (N13)? data_i[194] :
                     (N8)? data_i[258] :
                     (N10)? data_i[322] :
                     (N12)? data_i[386] :
                     (N14)? data_i[450] : 1'b0;
  assign data_o[1] = (N7)? data_i[1] :
                     (N9)? data_i[65] :
                     (N11)? data_i[129] :
                     (N13)? data_i[193] :
                     (N8)? data_i[257] :
                     (N10)? data_i[321] :
                     (N12)? data_i[385] :
                     (N14)? data_i[449] : 1'b0;
  assign data_o[0] = (N7)? data_i[0] :
                     (N9)? data_i[64] :
                     (N11)? data_i[128] :
                     (N13)? data_i[192] :
                     (N8)? data_i[256] :
                     (N10)? data_i[320] :
                     (N12)? data_i[384] :
                     (N14)? data_i[448] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];
  assign N6 = ~sel_i[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & sel_i[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & sel_i[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & sel_i[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & sel_i[2];

endmodule