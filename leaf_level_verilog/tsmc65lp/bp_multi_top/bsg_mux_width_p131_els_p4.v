module bsg_mux_width_p131_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [523:0] data_i;
  input [1:0] sel_i;
  output [130:0] data_o;
  wire [130:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[130] = (N2)? data_i[130] :
                       (N4)? data_i[261] :
                       (N3)? data_i[392] :
                       (N5)? data_i[523] : 1'b0;
  assign data_o[129] = (N2)? data_i[129] :
                       (N4)? data_i[260] :
                       (N3)? data_i[391] :
                       (N5)? data_i[522] : 1'b0;
  assign data_o[128] = (N2)? data_i[128] :
                       (N4)? data_i[259] :
                       (N3)? data_i[390] :
                       (N5)? data_i[521] : 1'b0;
  assign data_o[127] = (N2)? data_i[127] :
                       (N4)? data_i[258] :
                       (N3)? data_i[389] :
                       (N5)? data_i[520] : 1'b0;
  assign data_o[126] = (N2)? data_i[126] :
                       (N4)? data_i[257] :
                       (N3)? data_i[388] :
                       (N5)? data_i[519] : 1'b0;
  assign data_o[125] = (N2)? data_i[125] :
                       (N4)? data_i[256] :
                       (N3)? data_i[387] :
                       (N5)? data_i[518] : 1'b0;
  assign data_o[124] = (N2)? data_i[124] :
                       (N4)? data_i[255] :
                       (N3)? data_i[386] :
                       (N5)? data_i[517] : 1'b0;
  assign data_o[123] = (N2)? data_i[123] :
                       (N4)? data_i[254] :
                       (N3)? data_i[385] :
                       (N5)? data_i[516] : 1'b0;
  assign data_o[122] = (N2)? data_i[122] :
                       (N4)? data_i[253] :
                       (N3)? data_i[384] :
                       (N5)? data_i[515] : 1'b0;
  assign data_o[121] = (N2)? data_i[121] :
                       (N4)? data_i[252] :
                       (N3)? data_i[383] :
                       (N5)? data_i[514] : 1'b0;
  assign data_o[120] = (N2)? data_i[120] :
                       (N4)? data_i[251] :
                       (N3)? data_i[382] :
                       (N5)? data_i[513] : 1'b0;
  assign data_o[119] = (N2)? data_i[119] :
                       (N4)? data_i[250] :
                       (N3)? data_i[381] :
                       (N5)? data_i[512] : 1'b0;
  assign data_o[118] = (N2)? data_i[118] :
                       (N4)? data_i[249] :
                       (N3)? data_i[380] :
                       (N5)? data_i[511] : 1'b0;
  assign data_o[117] = (N2)? data_i[117] :
                       (N4)? data_i[248] :
                       (N3)? data_i[379] :
                       (N5)? data_i[510] : 1'b0;
  assign data_o[116] = (N2)? data_i[116] :
                       (N4)? data_i[247] :
                       (N3)? data_i[378] :
                       (N5)? data_i[509] : 1'b0;
  assign data_o[115] = (N2)? data_i[115] :
                       (N4)? data_i[246] :
                       (N3)? data_i[377] :
                       (N5)? data_i[508] : 1'b0;
  assign data_o[114] = (N2)? data_i[114] :
                       (N4)? data_i[245] :
                       (N3)? data_i[376] :
                       (N5)? data_i[507] : 1'b0;
  assign data_o[113] = (N2)? data_i[113] :
                       (N4)? data_i[244] :
                       (N3)? data_i[375] :
                       (N5)? data_i[506] : 1'b0;
  assign data_o[112] = (N2)? data_i[112] :
                       (N4)? data_i[243] :
                       (N3)? data_i[374] :
                       (N5)? data_i[505] : 1'b0;
  assign data_o[111] = (N2)? data_i[111] :
                       (N4)? data_i[242] :
                       (N3)? data_i[373] :
                       (N5)? data_i[504] : 1'b0;
  assign data_o[110] = (N2)? data_i[110] :
                       (N4)? data_i[241] :
                       (N3)? data_i[372] :
                       (N5)? data_i[503] : 1'b0;
  assign data_o[109] = (N2)? data_i[109] :
                       (N4)? data_i[240] :
                       (N3)? data_i[371] :
                       (N5)? data_i[502] : 1'b0;
  assign data_o[108] = (N2)? data_i[108] :
                       (N4)? data_i[239] :
                       (N3)? data_i[370] :
                       (N5)? data_i[501] : 1'b0;
  assign data_o[107] = (N2)? data_i[107] :
                       (N4)? data_i[238] :
                       (N3)? data_i[369] :
                       (N5)? data_i[500] : 1'b0;
  assign data_o[106] = (N2)? data_i[106] :
                       (N4)? data_i[237] :
                       (N3)? data_i[368] :
                       (N5)? data_i[499] : 1'b0;
  assign data_o[105] = (N2)? data_i[105] :
                       (N4)? data_i[236] :
                       (N3)? data_i[367] :
                       (N5)? data_i[498] : 1'b0;
  assign data_o[104] = (N2)? data_i[104] :
                       (N4)? data_i[235] :
                       (N3)? data_i[366] :
                       (N5)? data_i[497] : 1'b0;
  assign data_o[103] = (N2)? data_i[103] :
                       (N4)? data_i[234] :
                       (N3)? data_i[365] :
                       (N5)? data_i[496] : 1'b0;
  assign data_o[102] = (N2)? data_i[102] :
                       (N4)? data_i[233] :
                       (N3)? data_i[364] :
                       (N5)? data_i[495] : 1'b0;
  assign data_o[101] = (N2)? data_i[101] :
                       (N4)? data_i[232] :
                       (N3)? data_i[363] :
                       (N5)? data_i[494] : 1'b0;
  assign data_o[100] = (N2)? data_i[100] :
                       (N4)? data_i[231] :
                       (N3)? data_i[362] :
                       (N5)? data_i[493] : 1'b0;
  assign data_o[99] = (N2)? data_i[99] :
                      (N4)? data_i[230] :
                      (N3)? data_i[361] :
                      (N5)? data_i[492] : 1'b0;
  assign data_o[98] = (N2)? data_i[98] :
                      (N4)? data_i[229] :
                      (N3)? data_i[360] :
                      (N5)? data_i[491] : 1'b0;
  assign data_o[97] = (N2)? data_i[97] :
                      (N4)? data_i[228] :
                      (N3)? data_i[359] :
                      (N5)? data_i[490] : 1'b0;
  assign data_o[96] = (N2)? data_i[96] :
                      (N4)? data_i[227] :
                      (N3)? data_i[358] :
                      (N5)? data_i[489] : 1'b0;
  assign data_o[95] = (N2)? data_i[95] :
                      (N4)? data_i[226] :
                      (N3)? data_i[357] :
                      (N5)? data_i[488] : 1'b0;
  assign data_o[94] = (N2)? data_i[94] :
                      (N4)? data_i[225] :
                      (N3)? data_i[356] :
                      (N5)? data_i[487] : 1'b0;
  assign data_o[93] = (N2)? data_i[93] :
                      (N4)? data_i[224] :
                      (N3)? data_i[355] :
                      (N5)? data_i[486] : 1'b0;
  assign data_o[92] = (N2)? data_i[92] :
                      (N4)? data_i[223] :
                      (N3)? data_i[354] :
                      (N5)? data_i[485] : 1'b0;
  assign data_o[91] = (N2)? data_i[91] :
                      (N4)? data_i[222] :
                      (N3)? data_i[353] :
                      (N5)? data_i[484] : 1'b0;
  assign data_o[90] = (N2)? data_i[90] :
                      (N4)? data_i[221] :
                      (N3)? data_i[352] :
                      (N5)? data_i[483] : 1'b0;
  assign data_o[89] = (N2)? data_i[89] :
                      (N4)? data_i[220] :
                      (N3)? data_i[351] :
                      (N5)? data_i[482] : 1'b0;
  assign data_o[88] = (N2)? data_i[88] :
                      (N4)? data_i[219] :
                      (N3)? data_i[350] :
                      (N5)? data_i[481] : 1'b0;
  assign data_o[87] = (N2)? data_i[87] :
                      (N4)? data_i[218] :
                      (N3)? data_i[349] :
                      (N5)? data_i[480] : 1'b0;
  assign data_o[86] = (N2)? data_i[86] :
                      (N4)? data_i[217] :
                      (N3)? data_i[348] :
                      (N5)? data_i[479] : 1'b0;
  assign data_o[85] = (N2)? data_i[85] :
                      (N4)? data_i[216] :
                      (N3)? data_i[347] :
                      (N5)? data_i[478] : 1'b0;
  assign data_o[84] = (N2)? data_i[84] :
                      (N4)? data_i[215] :
                      (N3)? data_i[346] :
                      (N5)? data_i[477] : 1'b0;
  assign data_o[83] = (N2)? data_i[83] :
                      (N4)? data_i[214] :
                      (N3)? data_i[345] :
                      (N5)? data_i[476] : 1'b0;
  assign data_o[82] = (N2)? data_i[82] :
                      (N4)? data_i[213] :
                      (N3)? data_i[344] :
                      (N5)? data_i[475] : 1'b0;
  assign data_o[81] = (N2)? data_i[81] :
                      (N4)? data_i[212] :
                      (N3)? data_i[343] :
                      (N5)? data_i[474] : 1'b0;
  assign data_o[80] = (N2)? data_i[80] :
                      (N4)? data_i[211] :
                      (N3)? data_i[342] :
                      (N5)? data_i[473] : 1'b0;
  assign data_o[79] = (N2)? data_i[79] :
                      (N4)? data_i[210] :
                      (N3)? data_i[341] :
                      (N5)? data_i[472] : 1'b0;
  assign data_o[78] = (N2)? data_i[78] :
                      (N4)? data_i[209] :
                      (N3)? data_i[340] :
                      (N5)? data_i[471] : 1'b0;
  assign data_o[77] = (N2)? data_i[77] :
                      (N4)? data_i[208] :
                      (N3)? data_i[339] :
                      (N5)? data_i[470] : 1'b0;
  assign data_o[76] = (N2)? data_i[76] :
                      (N4)? data_i[207] :
                      (N3)? data_i[338] :
                      (N5)? data_i[469] : 1'b0;
  assign data_o[75] = (N2)? data_i[75] :
                      (N4)? data_i[206] :
                      (N3)? data_i[337] :
                      (N5)? data_i[468] : 1'b0;
  assign data_o[74] = (N2)? data_i[74] :
                      (N4)? data_i[205] :
                      (N3)? data_i[336] :
                      (N5)? data_i[467] : 1'b0;
  assign data_o[73] = (N2)? data_i[73] :
                      (N4)? data_i[204] :
                      (N3)? data_i[335] :
                      (N5)? data_i[466] : 1'b0;
  assign data_o[72] = (N2)? data_i[72] :
                      (N4)? data_i[203] :
                      (N3)? data_i[334] :
                      (N5)? data_i[465] : 1'b0;
  assign data_o[71] = (N2)? data_i[71] :
                      (N4)? data_i[202] :
                      (N3)? data_i[333] :
                      (N5)? data_i[464] : 1'b0;
  assign data_o[70] = (N2)? data_i[70] :
                      (N4)? data_i[201] :
                      (N3)? data_i[332] :
                      (N5)? data_i[463] : 1'b0;
  assign data_o[69] = (N2)? data_i[69] :
                      (N4)? data_i[200] :
                      (N3)? data_i[331] :
                      (N5)? data_i[462] : 1'b0;
  assign data_o[68] = (N2)? data_i[68] :
                      (N4)? data_i[199] :
                      (N3)? data_i[330] :
                      (N5)? data_i[461] : 1'b0;
  assign data_o[67] = (N2)? data_i[67] :
                      (N4)? data_i[198] :
                      (N3)? data_i[329] :
                      (N5)? data_i[460] : 1'b0;
  assign data_o[66] = (N2)? data_i[66] :
                      (N4)? data_i[197] :
                      (N3)? data_i[328] :
                      (N5)? data_i[459] : 1'b0;
  assign data_o[65] = (N2)? data_i[65] :
                      (N4)? data_i[196] :
                      (N3)? data_i[327] :
                      (N5)? data_i[458] : 1'b0;
  assign data_o[64] = (N2)? data_i[64] :
                      (N4)? data_i[195] :
                      (N3)? data_i[326] :
                      (N5)? data_i[457] : 1'b0;
  assign data_o[63] = (N2)? data_i[63] :
                      (N4)? data_i[194] :
                      (N3)? data_i[325] :
                      (N5)? data_i[456] : 1'b0;
  assign data_o[62] = (N2)? data_i[62] :
                      (N4)? data_i[193] :
                      (N3)? data_i[324] :
                      (N5)? data_i[455] : 1'b0;
  assign data_o[61] = (N2)? data_i[61] :
                      (N4)? data_i[192] :
                      (N3)? data_i[323] :
                      (N5)? data_i[454] : 1'b0;
  assign data_o[60] = (N2)? data_i[60] :
                      (N4)? data_i[191] :
                      (N3)? data_i[322] :
                      (N5)? data_i[453] : 1'b0;
  assign data_o[59] = (N2)? data_i[59] :
                      (N4)? data_i[190] :
                      (N3)? data_i[321] :
                      (N5)? data_i[452] : 1'b0;
  assign data_o[58] = (N2)? data_i[58] :
                      (N4)? data_i[189] :
                      (N3)? data_i[320] :
                      (N5)? data_i[451] : 1'b0;
  assign data_o[57] = (N2)? data_i[57] :
                      (N4)? data_i[188] :
                      (N3)? data_i[319] :
                      (N5)? data_i[450] : 1'b0;
  assign data_o[56] = (N2)? data_i[56] :
                      (N4)? data_i[187] :
                      (N3)? data_i[318] :
                      (N5)? data_i[449] : 1'b0;
  assign data_o[55] = (N2)? data_i[55] :
                      (N4)? data_i[186] :
                      (N3)? data_i[317] :
                      (N5)? data_i[448] : 1'b0;
  assign data_o[54] = (N2)? data_i[54] :
                      (N4)? data_i[185] :
                      (N3)? data_i[316] :
                      (N5)? data_i[447] : 1'b0;
  assign data_o[53] = (N2)? data_i[53] :
                      (N4)? data_i[184] :
                      (N3)? data_i[315] :
                      (N5)? data_i[446] : 1'b0;
  assign data_o[52] = (N2)? data_i[52] :
                      (N4)? data_i[183] :
                      (N3)? data_i[314] :
                      (N5)? data_i[445] : 1'b0;
  assign data_o[51] = (N2)? data_i[51] :
                      (N4)? data_i[182] :
                      (N3)? data_i[313] :
                      (N5)? data_i[444] : 1'b0;
  assign data_o[50] = (N2)? data_i[50] :
                      (N4)? data_i[181] :
                      (N3)? data_i[312] :
                      (N5)? data_i[443] : 1'b0;
  assign data_o[49] = (N2)? data_i[49] :
                      (N4)? data_i[180] :
                      (N3)? data_i[311] :
                      (N5)? data_i[442] : 1'b0;
  assign data_o[48] = (N2)? data_i[48] :
                      (N4)? data_i[179] :
                      (N3)? data_i[310] :
                      (N5)? data_i[441] : 1'b0;
  assign data_o[47] = (N2)? data_i[47] :
                      (N4)? data_i[178] :
                      (N3)? data_i[309] :
                      (N5)? data_i[440] : 1'b0;
  assign data_o[46] = (N2)? data_i[46] :
                      (N4)? data_i[177] :
                      (N3)? data_i[308] :
                      (N5)? data_i[439] : 1'b0;
  assign data_o[45] = (N2)? data_i[45] :
                      (N4)? data_i[176] :
                      (N3)? data_i[307] :
                      (N5)? data_i[438] : 1'b0;
  assign data_o[44] = (N2)? data_i[44] :
                      (N4)? data_i[175] :
                      (N3)? data_i[306] :
                      (N5)? data_i[437] : 1'b0;
  assign data_o[43] = (N2)? data_i[43] :
                      (N4)? data_i[174] :
                      (N3)? data_i[305] :
                      (N5)? data_i[436] : 1'b0;
  assign data_o[42] = (N2)? data_i[42] :
                      (N4)? data_i[173] :
                      (N3)? data_i[304] :
                      (N5)? data_i[435] : 1'b0;
  assign data_o[41] = (N2)? data_i[41] :
                      (N4)? data_i[172] :
                      (N3)? data_i[303] :
                      (N5)? data_i[434] : 1'b0;
  assign data_o[40] = (N2)? data_i[40] :
                      (N4)? data_i[171] :
                      (N3)? data_i[302] :
                      (N5)? data_i[433] : 1'b0;
  assign data_o[39] = (N2)? data_i[39] :
                      (N4)? data_i[170] :
                      (N3)? data_i[301] :
                      (N5)? data_i[432] : 1'b0;
  assign data_o[38] = (N2)? data_i[38] :
                      (N4)? data_i[169] :
                      (N3)? data_i[300] :
                      (N5)? data_i[431] : 1'b0;
  assign data_o[37] = (N2)? data_i[37] :
                      (N4)? data_i[168] :
                      (N3)? data_i[299] :
                      (N5)? data_i[430] : 1'b0;
  assign data_o[36] = (N2)? data_i[36] :
                      (N4)? data_i[167] :
                      (N3)? data_i[298] :
                      (N5)? data_i[429] : 1'b0;
  assign data_o[35] = (N2)? data_i[35] :
                      (N4)? data_i[166] :
                      (N3)? data_i[297] :
                      (N5)? data_i[428] : 1'b0;
  assign data_o[34] = (N2)? data_i[34] :
                      (N4)? data_i[165] :
                      (N3)? data_i[296] :
                      (N5)? data_i[427] : 1'b0;
  assign data_o[33] = (N2)? data_i[33] :
                      (N4)? data_i[164] :
                      (N3)? data_i[295] :
                      (N5)? data_i[426] : 1'b0;
  assign data_o[32] = (N2)? data_i[32] :
                      (N4)? data_i[163] :
                      (N3)? data_i[294] :
                      (N5)? data_i[425] : 1'b0;
  assign data_o[31] = (N2)? data_i[31] :
                      (N4)? data_i[162] :
                      (N3)? data_i[293] :
                      (N5)? data_i[424] : 1'b0;
  assign data_o[30] = (N2)? data_i[30] :
                      (N4)? data_i[161] :
                      (N3)? data_i[292] :
                      (N5)? data_i[423] : 1'b0;
  assign data_o[29] = (N2)? data_i[29] :
                      (N4)? data_i[160] :
                      (N3)? data_i[291] :
                      (N5)? data_i[422] : 1'b0;
  assign data_o[28] = (N2)? data_i[28] :
                      (N4)? data_i[159] :
                      (N3)? data_i[290] :
                      (N5)? data_i[421] : 1'b0;
  assign data_o[27] = (N2)? data_i[27] :
                      (N4)? data_i[158] :
                      (N3)? data_i[289] :
                      (N5)? data_i[420] : 1'b0;
  assign data_o[26] = (N2)? data_i[26] :
                      (N4)? data_i[157] :
                      (N3)? data_i[288] :
                      (N5)? data_i[419] : 1'b0;
  assign data_o[25] = (N2)? data_i[25] :
                      (N4)? data_i[156] :
                      (N3)? data_i[287] :
                      (N5)? data_i[418] : 1'b0;
  assign data_o[24] = (N2)? data_i[24] :
                      (N4)? data_i[155] :
                      (N3)? data_i[286] :
                      (N5)? data_i[417] : 1'b0;
  assign data_o[23] = (N2)? data_i[23] :
                      (N4)? data_i[154] :
                      (N3)? data_i[285] :
                      (N5)? data_i[416] : 1'b0;
  assign data_o[22] = (N2)? data_i[22] :
                      (N4)? data_i[153] :
                      (N3)? data_i[284] :
                      (N5)? data_i[415] : 1'b0;
  assign data_o[21] = (N2)? data_i[21] :
                      (N4)? data_i[152] :
                      (N3)? data_i[283] :
                      (N5)? data_i[414] : 1'b0;
  assign data_o[20] = (N2)? data_i[20] :
                      (N4)? data_i[151] :
                      (N3)? data_i[282] :
                      (N5)? data_i[413] : 1'b0;
  assign data_o[19] = (N2)? data_i[19] :
                      (N4)? data_i[150] :
                      (N3)? data_i[281] :
                      (N5)? data_i[412] : 1'b0;
  assign data_o[18] = (N2)? data_i[18] :
                      (N4)? data_i[149] :
                      (N3)? data_i[280] :
                      (N5)? data_i[411] : 1'b0;
  assign data_o[17] = (N2)? data_i[17] :
                      (N4)? data_i[148] :
                      (N3)? data_i[279] :
                      (N5)? data_i[410] : 1'b0;
  assign data_o[16] = (N2)? data_i[16] :
                      (N4)? data_i[147] :
                      (N3)? data_i[278] :
                      (N5)? data_i[409] : 1'b0;
  assign data_o[15] = (N2)? data_i[15] :
                      (N4)? data_i[146] :
                      (N3)? data_i[277] :
                      (N5)? data_i[408] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] :
                      (N4)? data_i[145] :
                      (N3)? data_i[276] :
                      (N5)? data_i[407] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] :
                      (N4)? data_i[144] :
                      (N3)? data_i[275] :
                      (N5)? data_i[406] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] :
                      (N4)? data_i[143] :
                      (N3)? data_i[274] :
                      (N5)? data_i[405] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] :
                      (N4)? data_i[142] :
                      (N3)? data_i[273] :
                      (N5)? data_i[404] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] :
                      (N4)? data_i[141] :
                      (N3)? data_i[272] :
                      (N5)? data_i[403] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] :
                     (N4)? data_i[140] :
                     (N3)? data_i[271] :
                     (N5)? data_i[402] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] :
                     (N4)? data_i[139] :
                     (N3)? data_i[270] :
                     (N5)? data_i[401] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] :
                     (N4)? data_i[138] :
                     (N3)? data_i[269] :
                     (N5)? data_i[400] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] :
                     (N4)? data_i[137] :
                     (N3)? data_i[268] :
                     (N5)? data_i[399] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] :
                     (N4)? data_i[136] :
                     (N3)? data_i[267] :
                     (N5)? data_i[398] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] :
                     (N4)? data_i[135] :
                     (N3)? data_i[266] :
                     (N5)? data_i[397] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] :
                     (N4)? data_i[134] :
                     (N3)? data_i[265] :
                     (N5)? data_i[396] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] :
                     (N4)? data_i[133] :
                     (N3)? data_i[264] :
                     (N5)? data_i[395] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] :
                     (N4)? data_i[132] :
                     (N3)? data_i[263] :
                     (N5)? data_i[394] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] :
                     (N4)? data_i[131] :
                     (N3)? data_i[262] :
                     (N5)? data_i[393] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule