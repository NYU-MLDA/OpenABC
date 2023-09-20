module bsg_mux_width_p128_els_p5
(
  data_i,
  sel_i,
  data_o
);

  input [639:0] data_i;
  input [2:0] sel_i;
  output [127:0] data_o;
  wire [127:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign N10 = N0 & N1 & N2;
  assign N0 = ~sel_i[2];
  assign N1 = ~sel_i[0];
  assign N2 = ~sel_i[1];
  assign N11 = sel_i[0] & N3;
  assign N3 = ~sel_i[1];
  assign N12 = N4 & sel_i[1];
  assign N4 = ~sel_i[0];
  assign N13 = sel_i[0] & sel_i[1];
  assign data_o[127] = (N5)? data_i[127] : 
                       (N6)? data_i[255] : 
                       (N7)? data_i[383] : 
                       (N8)? data_i[511] : 
                       (N9)? data_i[639] : 1'b0;
  assign N5 = N10;
  assign N6 = N11;
  assign N7 = N12;
  assign N8 = N13;
  assign N9 = sel_i[2];
  assign data_o[126] = (N5)? data_i[126] : 
                       (N6)? data_i[254] : 
                       (N7)? data_i[382] : 
                       (N8)? data_i[510] : 
                       (N9)? data_i[638] : 1'b0;
  assign data_o[125] = (N5)? data_i[125] : 
                       (N6)? data_i[253] : 
                       (N7)? data_i[381] : 
                       (N8)? data_i[509] : 
                       (N9)? data_i[637] : 1'b0;
  assign data_o[124] = (N5)? data_i[124] : 
                       (N6)? data_i[252] : 
                       (N7)? data_i[380] : 
                       (N8)? data_i[508] : 
                       (N9)? data_i[636] : 1'b0;
  assign data_o[123] = (N5)? data_i[123] : 
                       (N6)? data_i[251] : 
                       (N7)? data_i[379] : 
                       (N8)? data_i[507] : 
                       (N9)? data_i[635] : 1'b0;
  assign data_o[122] = (N5)? data_i[122] : 
                       (N6)? data_i[250] : 
                       (N7)? data_i[378] : 
                       (N8)? data_i[506] : 
                       (N9)? data_i[634] : 1'b0;
  assign data_o[121] = (N5)? data_i[121] : 
                       (N6)? data_i[249] : 
                       (N7)? data_i[377] : 
                       (N8)? data_i[505] : 
                       (N9)? data_i[633] : 1'b0;
  assign data_o[120] = (N5)? data_i[120] : 
                       (N6)? data_i[248] : 
                       (N7)? data_i[376] : 
                       (N8)? data_i[504] : 
                       (N9)? data_i[632] : 1'b0;
  assign data_o[119] = (N5)? data_i[119] : 
                       (N6)? data_i[247] : 
                       (N7)? data_i[375] : 
                       (N8)? data_i[503] : 
                       (N9)? data_i[631] : 1'b0;
  assign data_o[118] = (N5)? data_i[118] : 
                       (N6)? data_i[246] : 
                       (N7)? data_i[374] : 
                       (N8)? data_i[502] : 
                       (N9)? data_i[630] : 1'b0;
  assign data_o[117] = (N5)? data_i[117] : 
                       (N6)? data_i[245] : 
                       (N7)? data_i[373] : 
                       (N8)? data_i[501] : 
                       (N9)? data_i[629] : 1'b0;
  assign data_o[116] = (N5)? data_i[116] : 
                       (N6)? data_i[244] : 
                       (N7)? data_i[372] : 
                       (N8)? data_i[500] : 
                       (N9)? data_i[628] : 1'b0;
  assign data_o[115] = (N5)? data_i[115] : 
                       (N6)? data_i[243] : 
                       (N7)? data_i[371] : 
                       (N8)? data_i[499] : 
                       (N9)? data_i[627] : 1'b0;
  assign data_o[114] = (N5)? data_i[114] : 
                       (N6)? data_i[242] : 
                       (N7)? data_i[370] : 
                       (N8)? data_i[498] : 
                       (N9)? data_i[626] : 1'b0;
  assign data_o[113] = (N5)? data_i[113] : 
                       (N6)? data_i[241] : 
                       (N7)? data_i[369] : 
                       (N8)? data_i[497] : 
                       (N9)? data_i[625] : 1'b0;
  assign data_o[112] = (N5)? data_i[112] : 
                       (N6)? data_i[240] : 
                       (N7)? data_i[368] : 
                       (N8)? data_i[496] : 
                       (N9)? data_i[624] : 1'b0;
  assign data_o[111] = (N5)? data_i[111] : 
                       (N6)? data_i[239] : 
                       (N7)? data_i[367] : 
                       (N8)? data_i[495] : 
                       (N9)? data_i[623] : 1'b0;
  assign data_o[110] = (N5)? data_i[110] : 
                       (N6)? data_i[238] : 
                       (N7)? data_i[366] : 
                       (N8)? data_i[494] : 
                       (N9)? data_i[622] : 1'b0;
  assign data_o[109] = (N5)? data_i[109] : 
                       (N6)? data_i[237] : 
                       (N7)? data_i[365] : 
                       (N8)? data_i[493] : 
                       (N9)? data_i[621] : 1'b0;
  assign data_o[108] = (N5)? data_i[108] : 
                       (N6)? data_i[236] : 
                       (N7)? data_i[364] : 
                       (N8)? data_i[492] : 
                       (N9)? data_i[620] : 1'b0;
  assign data_o[107] = (N5)? data_i[107] : 
                       (N6)? data_i[235] : 
                       (N7)? data_i[363] : 
                       (N8)? data_i[491] : 
                       (N9)? data_i[619] : 1'b0;
  assign data_o[106] = (N5)? data_i[106] : 
                       (N6)? data_i[234] : 
                       (N7)? data_i[362] : 
                       (N8)? data_i[490] : 
                       (N9)? data_i[618] : 1'b0;
  assign data_o[105] = (N5)? data_i[105] : 
                       (N6)? data_i[233] : 
                       (N7)? data_i[361] : 
                       (N8)? data_i[489] : 
                       (N9)? data_i[617] : 1'b0;
  assign data_o[104] = (N5)? data_i[104] : 
                       (N6)? data_i[232] : 
                       (N7)? data_i[360] : 
                       (N8)? data_i[488] : 
                       (N9)? data_i[616] : 1'b0;
  assign data_o[103] = (N5)? data_i[103] : 
                       (N6)? data_i[231] : 
                       (N7)? data_i[359] : 
                       (N8)? data_i[487] : 
                       (N9)? data_i[615] : 1'b0;
  assign data_o[102] = (N5)? data_i[102] : 
                       (N6)? data_i[230] : 
                       (N7)? data_i[358] : 
                       (N8)? data_i[486] : 
                       (N9)? data_i[614] : 1'b0;
  assign data_o[101] = (N5)? data_i[101] : 
                       (N6)? data_i[229] : 
                       (N7)? data_i[357] : 
                       (N8)? data_i[485] : 
                       (N9)? data_i[613] : 1'b0;
  assign data_o[100] = (N5)? data_i[100] : 
                       (N6)? data_i[228] : 
                       (N7)? data_i[356] : 
                       (N8)? data_i[484] : 
                       (N9)? data_i[612] : 1'b0;
  assign data_o[99] = (N5)? data_i[99] : 
                      (N6)? data_i[227] : 
                      (N7)? data_i[355] : 
                      (N8)? data_i[483] : 
                      (N9)? data_i[611] : 1'b0;
  assign data_o[98] = (N5)? data_i[98] : 
                      (N6)? data_i[226] : 
                      (N7)? data_i[354] : 
                      (N8)? data_i[482] : 
                      (N9)? data_i[610] : 1'b0;
  assign data_o[97] = (N5)? data_i[97] : 
                      (N6)? data_i[225] : 
                      (N7)? data_i[353] : 
                      (N8)? data_i[481] : 
                      (N9)? data_i[609] : 1'b0;
  assign data_o[96] = (N5)? data_i[96] : 
                      (N6)? data_i[224] : 
                      (N7)? data_i[352] : 
                      (N8)? data_i[480] : 
                      (N9)? data_i[608] : 1'b0;
  assign data_o[95] = (N5)? data_i[95] : 
                      (N6)? data_i[223] : 
                      (N7)? data_i[351] : 
                      (N8)? data_i[479] : 
                      (N9)? data_i[607] : 1'b0;
  assign data_o[94] = (N5)? data_i[94] : 
                      (N6)? data_i[222] : 
                      (N7)? data_i[350] : 
                      (N8)? data_i[478] : 
                      (N9)? data_i[606] : 1'b0;
  assign data_o[93] = (N5)? data_i[93] : 
                      (N6)? data_i[221] : 
                      (N7)? data_i[349] : 
                      (N8)? data_i[477] : 
                      (N9)? data_i[605] : 1'b0;
  assign data_o[92] = (N5)? data_i[92] : 
                      (N6)? data_i[220] : 
                      (N7)? data_i[348] : 
                      (N8)? data_i[476] : 
                      (N9)? data_i[604] : 1'b0;
  assign data_o[91] = (N5)? data_i[91] : 
                      (N6)? data_i[219] : 
                      (N7)? data_i[347] : 
                      (N8)? data_i[475] : 
                      (N9)? data_i[603] : 1'b0;
  assign data_o[90] = (N5)? data_i[90] : 
                      (N6)? data_i[218] : 
                      (N7)? data_i[346] : 
                      (N8)? data_i[474] : 
                      (N9)? data_i[602] : 1'b0;
  assign data_o[89] = (N5)? data_i[89] : 
                      (N6)? data_i[217] : 
                      (N7)? data_i[345] : 
                      (N8)? data_i[473] : 
                      (N9)? data_i[601] : 1'b0;
  assign data_o[88] = (N5)? data_i[88] : 
                      (N6)? data_i[216] : 
                      (N7)? data_i[344] : 
                      (N8)? data_i[472] : 
                      (N9)? data_i[600] : 1'b0;
  assign data_o[87] = (N5)? data_i[87] : 
                      (N6)? data_i[215] : 
                      (N7)? data_i[343] : 
                      (N8)? data_i[471] : 
                      (N9)? data_i[599] : 1'b0;
  assign data_o[86] = (N5)? data_i[86] : 
                      (N6)? data_i[214] : 
                      (N7)? data_i[342] : 
                      (N8)? data_i[470] : 
                      (N9)? data_i[598] : 1'b0;
  assign data_o[85] = (N5)? data_i[85] : 
                      (N6)? data_i[213] : 
                      (N7)? data_i[341] : 
                      (N8)? data_i[469] : 
                      (N9)? data_i[597] : 1'b0;
  assign data_o[84] = (N5)? data_i[84] : 
                      (N6)? data_i[212] : 
                      (N7)? data_i[340] : 
                      (N8)? data_i[468] : 
                      (N9)? data_i[596] : 1'b0;
  assign data_o[83] = (N5)? data_i[83] : 
                      (N6)? data_i[211] : 
                      (N7)? data_i[339] : 
                      (N8)? data_i[467] : 
                      (N9)? data_i[595] : 1'b0;
  assign data_o[82] = (N5)? data_i[82] : 
                      (N6)? data_i[210] : 
                      (N7)? data_i[338] : 
                      (N8)? data_i[466] : 
                      (N9)? data_i[594] : 1'b0;
  assign data_o[81] = (N5)? data_i[81] : 
                      (N6)? data_i[209] : 
                      (N7)? data_i[337] : 
                      (N8)? data_i[465] : 
                      (N9)? data_i[593] : 1'b0;
  assign data_o[80] = (N5)? data_i[80] : 
                      (N6)? data_i[208] : 
                      (N7)? data_i[336] : 
                      (N8)? data_i[464] : 
                      (N9)? data_i[592] : 1'b0;
  assign data_o[79] = (N5)? data_i[79] : 
                      (N6)? data_i[207] : 
                      (N7)? data_i[335] : 
                      (N8)? data_i[463] : 
                      (N9)? data_i[591] : 1'b0;
  assign data_o[78] = (N5)? data_i[78] : 
                      (N6)? data_i[206] : 
                      (N7)? data_i[334] : 
                      (N8)? data_i[462] : 
                      (N9)? data_i[590] : 1'b0;
  assign data_o[77] = (N5)? data_i[77] : 
                      (N6)? data_i[205] : 
                      (N7)? data_i[333] : 
                      (N8)? data_i[461] : 
                      (N9)? data_i[589] : 1'b0;
  assign data_o[76] = (N5)? data_i[76] : 
                      (N6)? data_i[204] : 
                      (N7)? data_i[332] : 
                      (N8)? data_i[460] : 
                      (N9)? data_i[588] : 1'b0;
  assign data_o[75] = (N5)? data_i[75] : 
                      (N6)? data_i[203] : 
                      (N7)? data_i[331] : 
                      (N8)? data_i[459] : 
                      (N9)? data_i[587] : 1'b0;
  assign data_o[74] = (N5)? data_i[74] : 
                      (N6)? data_i[202] : 
                      (N7)? data_i[330] : 
                      (N8)? data_i[458] : 
                      (N9)? data_i[586] : 1'b0;
  assign data_o[73] = (N5)? data_i[73] : 
                      (N6)? data_i[201] : 
                      (N7)? data_i[329] : 
                      (N8)? data_i[457] : 
                      (N9)? data_i[585] : 1'b0;
  assign data_o[72] = (N5)? data_i[72] : 
                      (N6)? data_i[200] : 
                      (N7)? data_i[328] : 
                      (N8)? data_i[456] : 
                      (N9)? data_i[584] : 1'b0;
  assign data_o[71] = (N5)? data_i[71] : 
                      (N6)? data_i[199] : 
                      (N7)? data_i[327] : 
                      (N8)? data_i[455] : 
                      (N9)? data_i[583] : 1'b0;
  assign data_o[70] = (N5)? data_i[70] : 
                      (N6)? data_i[198] : 
                      (N7)? data_i[326] : 
                      (N8)? data_i[454] : 
                      (N9)? data_i[582] : 1'b0;
  assign data_o[69] = (N5)? data_i[69] : 
                      (N6)? data_i[197] : 
                      (N7)? data_i[325] : 
                      (N8)? data_i[453] : 
                      (N9)? data_i[581] : 1'b0;
  assign data_o[68] = (N5)? data_i[68] : 
                      (N6)? data_i[196] : 
                      (N7)? data_i[324] : 
                      (N8)? data_i[452] : 
                      (N9)? data_i[580] : 1'b0;
  assign data_o[67] = (N5)? data_i[67] : 
                      (N6)? data_i[195] : 
                      (N7)? data_i[323] : 
                      (N8)? data_i[451] : 
                      (N9)? data_i[579] : 1'b0;
  assign data_o[66] = (N5)? data_i[66] : 
                      (N6)? data_i[194] : 
                      (N7)? data_i[322] : 
                      (N8)? data_i[450] : 
                      (N9)? data_i[578] : 1'b0;
  assign data_o[65] = (N5)? data_i[65] : 
                      (N6)? data_i[193] : 
                      (N7)? data_i[321] : 
                      (N8)? data_i[449] : 
                      (N9)? data_i[577] : 1'b0;
  assign data_o[64] = (N5)? data_i[64] : 
                      (N6)? data_i[192] : 
                      (N7)? data_i[320] : 
                      (N8)? data_i[448] : 
                      (N9)? data_i[576] : 1'b0;
  assign data_o[63] = (N5)? data_i[63] : 
                      (N6)? data_i[191] : 
                      (N7)? data_i[319] : 
                      (N8)? data_i[447] : 
                      (N9)? data_i[575] : 1'b0;
  assign data_o[62] = (N5)? data_i[62] : 
                      (N6)? data_i[190] : 
                      (N7)? data_i[318] : 
                      (N8)? data_i[446] : 
                      (N9)? data_i[574] : 1'b0;
  assign data_o[61] = (N5)? data_i[61] : 
                      (N6)? data_i[189] : 
                      (N7)? data_i[317] : 
                      (N8)? data_i[445] : 
                      (N9)? data_i[573] : 1'b0;
  assign data_o[60] = (N5)? data_i[60] : 
                      (N6)? data_i[188] : 
                      (N7)? data_i[316] : 
                      (N8)? data_i[444] : 
                      (N9)? data_i[572] : 1'b0;
  assign data_o[59] = (N5)? data_i[59] : 
                      (N6)? data_i[187] : 
                      (N7)? data_i[315] : 
                      (N8)? data_i[443] : 
                      (N9)? data_i[571] : 1'b0;
  assign data_o[58] = (N5)? data_i[58] : 
                      (N6)? data_i[186] : 
                      (N7)? data_i[314] : 
                      (N8)? data_i[442] : 
                      (N9)? data_i[570] : 1'b0;
  assign data_o[57] = (N5)? data_i[57] : 
                      (N6)? data_i[185] : 
                      (N7)? data_i[313] : 
                      (N8)? data_i[441] : 
                      (N9)? data_i[569] : 1'b0;
  assign data_o[56] = (N5)? data_i[56] : 
                      (N6)? data_i[184] : 
                      (N7)? data_i[312] : 
                      (N8)? data_i[440] : 
                      (N9)? data_i[568] : 1'b0;
  assign data_o[55] = (N5)? data_i[55] : 
                      (N6)? data_i[183] : 
                      (N7)? data_i[311] : 
                      (N8)? data_i[439] : 
                      (N9)? data_i[567] : 1'b0;
  assign data_o[54] = (N5)? data_i[54] : 
                      (N6)? data_i[182] : 
                      (N7)? data_i[310] : 
                      (N8)? data_i[438] : 
                      (N9)? data_i[566] : 1'b0;
  assign data_o[53] = (N5)? data_i[53] : 
                      (N6)? data_i[181] : 
                      (N7)? data_i[309] : 
                      (N8)? data_i[437] : 
                      (N9)? data_i[565] : 1'b0;
  assign data_o[52] = (N5)? data_i[52] : 
                      (N6)? data_i[180] : 
                      (N7)? data_i[308] : 
                      (N8)? data_i[436] : 
                      (N9)? data_i[564] : 1'b0;
  assign data_o[51] = (N5)? data_i[51] : 
                      (N6)? data_i[179] : 
                      (N7)? data_i[307] : 
                      (N8)? data_i[435] : 
                      (N9)? data_i[563] : 1'b0;
  assign data_o[50] = (N5)? data_i[50] : 
                      (N6)? data_i[178] : 
                      (N7)? data_i[306] : 
                      (N8)? data_i[434] : 
                      (N9)? data_i[562] : 1'b0;
  assign data_o[49] = (N5)? data_i[49] : 
                      (N6)? data_i[177] : 
                      (N7)? data_i[305] : 
                      (N8)? data_i[433] : 
                      (N9)? data_i[561] : 1'b0;
  assign data_o[48] = (N5)? data_i[48] : 
                      (N6)? data_i[176] : 
                      (N7)? data_i[304] : 
                      (N8)? data_i[432] : 
                      (N9)? data_i[560] : 1'b0;
  assign data_o[47] = (N5)? data_i[47] : 
                      (N6)? data_i[175] : 
                      (N7)? data_i[303] : 
                      (N8)? data_i[431] : 
                      (N9)? data_i[559] : 1'b0;
  assign data_o[46] = (N5)? data_i[46] : 
                      (N6)? data_i[174] : 
                      (N7)? data_i[302] : 
                      (N8)? data_i[430] : 
                      (N9)? data_i[558] : 1'b0;
  assign data_o[45] = (N5)? data_i[45] : 
                      (N6)? data_i[173] : 
                      (N7)? data_i[301] : 
                      (N8)? data_i[429] : 
                      (N9)? data_i[557] : 1'b0;
  assign data_o[44] = (N5)? data_i[44] : 
                      (N6)? data_i[172] : 
                      (N7)? data_i[300] : 
                      (N8)? data_i[428] : 
                      (N9)? data_i[556] : 1'b0;
  assign data_o[43] = (N5)? data_i[43] : 
                      (N6)? data_i[171] : 
                      (N7)? data_i[299] : 
                      (N8)? data_i[427] : 
                      (N9)? data_i[555] : 1'b0;
  assign data_o[42] = (N5)? data_i[42] : 
                      (N6)? data_i[170] : 
                      (N7)? data_i[298] : 
                      (N8)? data_i[426] : 
                      (N9)? data_i[554] : 1'b0;
  assign data_o[41] = (N5)? data_i[41] : 
                      (N6)? data_i[169] : 
                      (N7)? data_i[297] : 
                      (N8)? data_i[425] : 
                      (N9)? data_i[553] : 1'b0;
  assign data_o[40] = (N5)? data_i[40] : 
                      (N6)? data_i[168] : 
                      (N7)? data_i[296] : 
                      (N8)? data_i[424] : 
                      (N9)? data_i[552] : 1'b0;
  assign data_o[39] = (N5)? data_i[39] : 
                      (N6)? data_i[167] : 
                      (N7)? data_i[295] : 
                      (N8)? data_i[423] : 
                      (N9)? data_i[551] : 1'b0;
  assign data_o[38] = (N5)? data_i[38] : 
                      (N6)? data_i[166] : 
                      (N7)? data_i[294] : 
                      (N8)? data_i[422] : 
                      (N9)? data_i[550] : 1'b0;
  assign data_o[37] = (N5)? data_i[37] : 
                      (N6)? data_i[165] : 
                      (N7)? data_i[293] : 
                      (N8)? data_i[421] : 
                      (N9)? data_i[549] : 1'b0;
  assign data_o[36] = (N5)? data_i[36] : 
                      (N6)? data_i[164] : 
                      (N7)? data_i[292] : 
                      (N8)? data_i[420] : 
                      (N9)? data_i[548] : 1'b0;
  assign data_o[35] = (N5)? data_i[35] : 
                      (N6)? data_i[163] : 
                      (N7)? data_i[291] : 
                      (N8)? data_i[419] : 
                      (N9)? data_i[547] : 1'b0;
  assign data_o[34] = (N5)? data_i[34] : 
                      (N6)? data_i[162] : 
                      (N7)? data_i[290] : 
                      (N8)? data_i[418] : 
                      (N9)? data_i[546] : 1'b0;
  assign data_o[33] = (N5)? data_i[33] : 
                      (N6)? data_i[161] : 
                      (N7)? data_i[289] : 
                      (N8)? data_i[417] : 
                      (N9)? data_i[545] : 1'b0;
  assign data_o[32] = (N5)? data_i[32] : 
                      (N6)? data_i[160] : 
                      (N7)? data_i[288] : 
                      (N8)? data_i[416] : 
                      (N9)? data_i[544] : 1'b0;
  assign data_o[31] = (N5)? data_i[31] : 
                      (N6)? data_i[159] : 
                      (N7)? data_i[287] : 
                      (N8)? data_i[415] : 
                      (N9)? data_i[543] : 1'b0;
  assign data_o[30] = (N5)? data_i[30] : 
                      (N6)? data_i[158] : 
                      (N7)? data_i[286] : 
                      (N8)? data_i[414] : 
                      (N9)? data_i[542] : 1'b0;
  assign data_o[29] = (N5)? data_i[29] : 
                      (N6)? data_i[157] : 
                      (N7)? data_i[285] : 
                      (N8)? data_i[413] : 
                      (N9)? data_i[541] : 1'b0;
  assign data_o[28] = (N5)? data_i[28] : 
                      (N6)? data_i[156] : 
                      (N7)? data_i[284] : 
                      (N8)? data_i[412] : 
                      (N9)? data_i[540] : 1'b0;
  assign data_o[27] = (N5)? data_i[27] : 
                      (N6)? data_i[155] : 
                      (N7)? data_i[283] : 
                      (N8)? data_i[411] : 
                      (N9)? data_i[539] : 1'b0;
  assign data_o[26] = (N5)? data_i[26] : 
                      (N6)? data_i[154] : 
                      (N7)? data_i[282] : 
                      (N8)? data_i[410] : 
                      (N9)? data_i[538] : 1'b0;
  assign data_o[25] = (N5)? data_i[25] : 
                      (N6)? data_i[153] : 
                      (N7)? data_i[281] : 
                      (N8)? data_i[409] : 
                      (N9)? data_i[537] : 1'b0;
  assign data_o[24] = (N5)? data_i[24] : 
                      (N6)? data_i[152] : 
                      (N7)? data_i[280] : 
                      (N8)? data_i[408] : 
                      (N9)? data_i[536] : 1'b0;
  assign data_o[23] = (N5)? data_i[23] : 
                      (N6)? data_i[151] : 
                      (N7)? data_i[279] : 
                      (N8)? data_i[407] : 
                      (N9)? data_i[535] : 1'b0;
  assign data_o[22] = (N5)? data_i[22] : 
                      (N6)? data_i[150] : 
                      (N7)? data_i[278] : 
                      (N8)? data_i[406] : 
                      (N9)? data_i[534] : 1'b0;
  assign data_o[21] = (N5)? data_i[21] : 
                      (N6)? data_i[149] : 
                      (N7)? data_i[277] : 
                      (N8)? data_i[405] : 
                      (N9)? data_i[533] : 1'b0;
  assign data_o[20] = (N5)? data_i[20] : 
                      (N6)? data_i[148] : 
                      (N7)? data_i[276] : 
                      (N8)? data_i[404] : 
                      (N9)? data_i[532] : 1'b0;
  assign data_o[19] = (N5)? data_i[19] : 
                      (N6)? data_i[147] : 
                      (N7)? data_i[275] : 
                      (N8)? data_i[403] : 
                      (N9)? data_i[531] : 1'b0;
  assign data_o[18] = (N5)? data_i[18] : 
                      (N6)? data_i[146] : 
                      (N7)? data_i[274] : 
                      (N8)? data_i[402] : 
                      (N9)? data_i[530] : 1'b0;
  assign data_o[17] = (N5)? data_i[17] : 
                      (N6)? data_i[145] : 
                      (N7)? data_i[273] : 
                      (N8)? data_i[401] : 
                      (N9)? data_i[529] : 1'b0;
  assign data_o[16] = (N5)? data_i[16] : 
                      (N6)? data_i[144] : 
                      (N7)? data_i[272] : 
                      (N8)? data_i[400] : 
                      (N9)? data_i[528] : 1'b0;
  assign data_o[15] = (N5)? data_i[15] : 
                      (N6)? data_i[143] : 
                      (N7)? data_i[271] : 
                      (N8)? data_i[399] : 
                      (N9)? data_i[527] : 1'b0;
  assign data_o[14] = (N5)? data_i[14] : 
                      (N6)? data_i[142] : 
                      (N7)? data_i[270] : 
                      (N8)? data_i[398] : 
                      (N9)? data_i[526] : 1'b0;
  assign data_o[13] = (N5)? data_i[13] : 
                      (N6)? data_i[141] : 
                      (N7)? data_i[269] : 
                      (N8)? data_i[397] : 
                      (N9)? data_i[525] : 1'b0;
  assign data_o[12] = (N5)? data_i[12] : 
                      (N6)? data_i[140] : 
                      (N7)? data_i[268] : 
                      (N8)? data_i[396] : 
                      (N9)? data_i[524] : 1'b0;
  assign data_o[11] = (N5)? data_i[11] : 
                      (N6)? data_i[139] : 
                      (N7)? data_i[267] : 
                      (N8)? data_i[395] : 
                      (N9)? data_i[523] : 1'b0;
  assign data_o[10] = (N5)? data_i[10] : 
                      (N6)? data_i[138] : 
                      (N7)? data_i[266] : 
                      (N8)? data_i[394] : 
                      (N9)? data_i[522] : 1'b0;
  assign data_o[9] = (N5)? data_i[9] : 
                     (N6)? data_i[137] : 
                     (N7)? data_i[265] : 
                     (N8)? data_i[393] : 
                     (N9)? data_i[521] : 1'b0;
  assign data_o[8] = (N5)? data_i[8] : 
                     (N6)? data_i[136] : 
                     (N7)? data_i[264] : 
                     (N8)? data_i[392] : 
                     (N9)? data_i[520] : 1'b0;
  assign data_o[7] = (N5)? data_i[7] : 
                     (N6)? data_i[135] : 
                     (N7)? data_i[263] : 
                     (N8)? data_i[391] : 
                     (N9)? data_i[519] : 1'b0;
  assign data_o[6] = (N5)? data_i[6] : 
                     (N6)? data_i[134] : 
                     (N7)? data_i[262] : 
                     (N8)? data_i[390] : 
                     (N9)? data_i[518] : 1'b0;
  assign data_o[5] = (N5)? data_i[5] : 
                     (N6)? data_i[133] : 
                     (N7)? data_i[261] : 
                     (N8)? data_i[389] : 
                     (N9)? data_i[517] : 1'b0;
  assign data_o[4] = (N5)? data_i[4] : 
                     (N6)? data_i[132] : 
                     (N7)? data_i[260] : 
                     (N8)? data_i[388] : 
                     (N9)? data_i[516] : 1'b0;
  assign data_o[3] = (N5)? data_i[3] : 
                     (N6)? data_i[131] : 
                     (N7)? data_i[259] : 
                     (N8)? data_i[387] : 
                     (N9)? data_i[515] : 1'b0;
  assign data_o[2] = (N5)? data_i[2] : 
                     (N6)? data_i[130] : 
                     (N7)? data_i[258] : 
                     (N8)? data_i[386] : 
                     (N9)? data_i[514] : 1'b0;
  assign data_o[1] = (N5)? data_i[1] : 
                     (N6)? data_i[129] : 
                     (N7)? data_i[257] : 
                     (N8)? data_i[385] : 
                     (N9)? data_i[513] : 1'b0;
  assign data_o[0] = (N5)? data_i[0] : 
                     (N6)? data_i[128] : 
                     (N7)? data_i[256] : 
                     (N8)? data_i[384] : 
                     (N9)? data_i[512] : 1'b0;

endmodule