module bsg_mux_width_p62_els_p10
(
  data_i,
  sel_i,
  data_o
);

  input [619:0] data_i;
  input [3:0] sel_i;
  output [61:0] data_o;
  wire [61:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34;
  assign N25 = N0 & N1 & (N2 & N3);
  assign N0 = ~sel_i[3];
  assign N1 = ~sel_i[2];
  assign N2 = ~sel_i[0];
  assign N3 = ~sel_i[1];
  assign N26 = sel_i[3] & N4;
  assign N4 = ~sel_i[0];
  assign N27 = N5 & N6 & (sel_i[0] & N7);
  assign N5 = ~sel_i[3];
  assign N6 = ~sel_i[2];
  assign N7 = ~sel_i[1];
  assign N29 = N8 & N9 & sel_i[1];
  assign N8 = ~sel_i[2];
  assign N9 = ~sel_i[0];
  assign N30 = N10 & sel_i[0] & sel_i[1];
  assign N10 = ~sel_i[2];
  assign N31 = sel_i[2] & N11 & N12;
  assign N11 = ~sel_i[0];
  assign N12 = ~sel_i[1];
  assign N32 = sel_i[2] & sel_i[0] & N13;
  assign N13 = ~sel_i[1];
  assign N33 = sel_i[2] & N14 & sel_i[1];
  assign N14 = ~sel_i[0];
  assign N34 = sel_i[2] & sel_i[0] & sel_i[1];
  assign N28 = sel_i[3] & sel_i[0];
  assign data_o[61] = (N15)? data_i[61] : 
                      (N16)? data_i[123] : 
                      (N17)? data_i[185] : 
                      (N18)? data_i[247] : 
                      (N19)? data_i[309] : 
                      (N20)? data_i[371] : 
                      (N21)? data_i[433] : 
                      (N22)? data_i[495] : 
                      (N23)? data_i[557] : 
                      (N24)? data_i[619] : 1'b0;
  assign N15 = N25;
  assign N16 = N27;
  assign N17 = N29;
  assign N18 = N30;
  assign N19 = N31;
  assign N20 = N32;
  assign N21 = N33;
  assign N22 = N34;
  assign N23 = N26;
  assign N24 = N28;
  assign data_o[60] = (N15)? data_i[60] : 
                      (N16)? data_i[122] : 
                      (N17)? data_i[184] : 
                      (N18)? data_i[246] : 
                      (N19)? data_i[308] : 
                      (N20)? data_i[370] : 
                      (N21)? data_i[432] : 
                      (N22)? data_i[494] : 
                      (N23)? data_i[556] : 
                      (N24)? data_i[618] : 1'b0;
  assign data_o[59] = (N15)? data_i[59] : 
                      (N16)? data_i[121] : 
                      (N17)? data_i[183] : 
                      (N18)? data_i[245] : 
                      (N19)? data_i[307] : 
                      (N20)? data_i[369] : 
                      (N21)? data_i[431] : 
                      (N22)? data_i[493] : 
                      (N23)? data_i[555] : 
                      (N24)? data_i[617] : 1'b0;
  assign data_o[58] = (N15)? data_i[58] : 
                      (N16)? data_i[120] : 
                      (N17)? data_i[182] : 
                      (N18)? data_i[244] : 
                      (N19)? data_i[306] : 
                      (N20)? data_i[368] : 
                      (N21)? data_i[430] : 
                      (N22)? data_i[492] : 
                      (N23)? data_i[554] : 
                      (N24)? data_i[616] : 1'b0;
  assign data_o[57] = (N15)? data_i[57] : 
                      (N16)? data_i[119] : 
                      (N17)? data_i[181] : 
                      (N18)? data_i[243] : 
                      (N19)? data_i[305] : 
                      (N20)? data_i[367] : 
                      (N21)? data_i[429] : 
                      (N22)? data_i[491] : 
                      (N23)? data_i[553] : 
                      (N24)? data_i[615] : 1'b0;
  assign data_o[56] = (N15)? data_i[56] : 
                      (N16)? data_i[118] : 
                      (N17)? data_i[180] : 
                      (N18)? data_i[242] : 
                      (N19)? data_i[304] : 
                      (N20)? data_i[366] : 
                      (N21)? data_i[428] : 
                      (N22)? data_i[490] : 
                      (N23)? data_i[552] : 
                      (N24)? data_i[614] : 1'b0;
  assign data_o[55] = (N15)? data_i[55] : 
                      (N16)? data_i[117] : 
                      (N17)? data_i[179] : 
                      (N18)? data_i[241] : 
                      (N19)? data_i[303] : 
                      (N20)? data_i[365] : 
                      (N21)? data_i[427] : 
                      (N22)? data_i[489] : 
                      (N23)? data_i[551] : 
                      (N24)? data_i[613] : 1'b0;
  assign data_o[54] = (N15)? data_i[54] : 
                      (N16)? data_i[116] : 
                      (N17)? data_i[178] : 
                      (N18)? data_i[240] : 
                      (N19)? data_i[302] : 
                      (N20)? data_i[364] : 
                      (N21)? data_i[426] : 
                      (N22)? data_i[488] : 
                      (N23)? data_i[550] : 
                      (N24)? data_i[612] : 1'b0;
  assign data_o[53] = (N15)? data_i[53] : 
                      (N16)? data_i[115] : 
                      (N17)? data_i[177] : 
                      (N18)? data_i[239] : 
                      (N19)? data_i[301] : 
                      (N20)? data_i[363] : 
                      (N21)? data_i[425] : 
                      (N22)? data_i[487] : 
                      (N23)? data_i[549] : 
                      (N24)? data_i[611] : 1'b0;
  assign data_o[52] = (N15)? data_i[52] : 
                      (N16)? data_i[114] : 
                      (N17)? data_i[176] : 
                      (N18)? data_i[238] : 
                      (N19)? data_i[300] : 
                      (N20)? data_i[362] : 
                      (N21)? data_i[424] : 
                      (N22)? data_i[486] : 
                      (N23)? data_i[548] : 
                      (N24)? data_i[610] : 1'b0;
  assign data_o[51] = (N15)? data_i[51] : 
                      (N16)? data_i[113] : 
                      (N17)? data_i[175] : 
                      (N18)? data_i[237] : 
                      (N19)? data_i[299] : 
                      (N20)? data_i[361] : 
                      (N21)? data_i[423] : 
                      (N22)? data_i[485] : 
                      (N23)? data_i[547] : 
                      (N24)? data_i[609] : 1'b0;
  assign data_o[50] = (N15)? data_i[50] : 
                      (N16)? data_i[112] : 
                      (N17)? data_i[174] : 
                      (N18)? data_i[236] : 
                      (N19)? data_i[298] : 
                      (N20)? data_i[360] : 
                      (N21)? data_i[422] : 
                      (N22)? data_i[484] : 
                      (N23)? data_i[546] : 
                      (N24)? data_i[608] : 1'b0;
  assign data_o[49] = (N15)? data_i[49] : 
                      (N16)? data_i[111] : 
                      (N17)? data_i[173] : 
                      (N18)? data_i[235] : 
                      (N19)? data_i[297] : 
                      (N20)? data_i[359] : 
                      (N21)? data_i[421] : 
                      (N22)? data_i[483] : 
                      (N23)? data_i[545] : 
                      (N24)? data_i[607] : 1'b0;
  assign data_o[48] = (N15)? data_i[48] : 
                      (N16)? data_i[110] : 
                      (N17)? data_i[172] : 
                      (N18)? data_i[234] : 
                      (N19)? data_i[296] : 
                      (N20)? data_i[358] : 
                      (N21)? data_i[420] : 
                      (N22)? data_i[482] : 
                      (N23)? data_i[544] : 
                      (N24)? data_i[606] : 1'b0;
  assign data_o[47] = (N15)? data_i[47] : 
                      (N16)? data_i[109] : 
                      (N17)? data_i[171] : 
                      (N18)? data_i[233] : 
                      (N19)? data_i[295] : 
                      (N20)? data_i[357] : 
                      (N21)? data_i[419] : 
                      (N22)? data_i[481] : 
                      (N23)? data_i[543] : 
                      (N24)? data_i[605] : 1'b0;
  assign data_o[46] = (N15)? data_i[46] : 
                      (N16)? data_i[108] : 
                      (N17)? data_i[170] : 
                      (N18)? data_i[232] : 
                      (N19)? data_i[294] : 
                      (N20)? data_i[356] : 
                      (N21)? data_i[418] : 
                      (N22)? data_i[480] : 
                      (N23)? data_i[542] : 
                      (N24)? data_i[604] : 1'b0;
  assign data_o[45] = (N15)? data_i[45] : 
                      (N16)? data_i[107] : 
                      (N17)? data_i[169] : 
                      (N18)? data_i[231] : 
                      (N19)? data_i[293] : 
                      (N20)? data_i[355] : 
                      (N21)? data_i[417] : 
                      (N22)? data_i[479] : 
                      (N23)? data_i[541] : 
                      (N24)? data_i[603] : 1'b0;
  assign data_o[44] = (N15)? data_i[44] : 
                      (N16)? data_i[106] : 
                      (N17)? data_i[168] : 
                      (N18)? data_i[230] : 
                      (N19)? data_i[292] : 
                      (N20)? data_i[354] : 
                      (N21)? data_i[416] : 
                      (N22)? data_i[478] : 
                      (N23)? data_i[540] : 
                      (N24)? data_i[602] : 1'b0;
  assign data_o[43] = (N15)? data_i[43] : 
                      (N16)? data_i[105] : 
                      (N17)? data_i[167] : 
                      (N18)? data_i[229] : 
                      (N19)? data_i[291] : 
                      (N20)? data_i[353] : 
                      (N21)? data_i[415] : 
                      (N22)? data_i[477] : 
                      (N23)? data_i[539] : 
                      (N24)? data_i[601] : 1'b0;
  assign data_o[42] = (N15)? data_i[42] : 
                      (N16)? data_i[104] : 
                      (N17)? data_i[166] : 
                      (N18)? data_i[228] : 
                      (N19)? data_i[290] : 
                      (N20)? data_i[352] : 
                      (N21)? data_i[414] : 
                      (N22)? data_i[476] : 
                      (N23)? data_i[538] : 
                      (N24)? data_i[600] : 1'b0;
  assign data_o[41] = (N15)? data_i[41] : 
                      (N16)? data_i[103] : 
                      (N17)? data_i[165] : 
                      (N18)? data_i[227] : 
                      (N19)? data_i[289] : 
                      (N20)? data_i[351] : 
                      (N21)? data_i[413] : 
                      (N22)? data_i[475] : 
                      (N23)? data_i[537] : 
                      (N24)? data_i[599] : 1'b0;
  assign data_o[40] = (N15)? data_i[40] : 
                      (N16)? data_i[102] : 
                      (N17)? data_i[164] : 
                      (N18)? data_i[226] : 
                      (N19)? data_i[288] : 
                      (N20)? data_i[350] : 
                      (N21)? data_i[412] : 
                      (N22)? data_i[474] : 
                      (N23)? data_i[536] : 
                      (N24)? data_i[598] : 1'b0;
  assign data_o[39] = (N15)? data_i[39] : 
                      (N16)? data_i[101] : 
                      (N17)? data_i[163] : 
                      (N18)? data_i[225] : 
                      (N19)? data_i[287] : 
                      (N20)? data_i[349] : 
                      (N21)? data_i[411] : 
                      (N22)? data_i[473] : 
                      (N23)? data_i[535] : 
                      (N24)? data_i[597] : 1'b0;
  assign data_o[38] = (N15)? data_i[38] : 
                      (N16)? data_i[100] : 
                      (N17)? data_i[162] : 
                      (N18)? data_i[224] : 
                      (N19)? data_i[286] : 
                      (N20)? data_i[348] : 
                      (N21)? data_i[410] : 
                      (N22)? data_i[472] : 
                      (N23)? data_i[534] : 
                      (N24)? data_i[596] : 1'b0;
  assign data_o[37] = (N15)? data_i[37] : 
                      (N16)? data_i[99] : 
                      (N17)? data_i[161] : 
                      (N18)? data_i[223] : 
                      (N19)? data_i[285] : 
                      (N20)? data_i[347] : 
                      (N21)? data_i[409] : 
                      (N22)? data_i[471] : 
                      (N23)? data_i[533] : 
                      (N24)? data_i[595] : 1'b0;
  assign data_o[36] = (N15)? data_i[36] : 
                      (N16)? data_i[98] : 
                      (N17)? data_i[160] : 
                      (N18)? data_i[222] : 
                      (N19)? data_i[284] : 
                      (N20)? data_i[346] : 
                      (N21)? data_i[408] : 
                      (N22)? data_i[470] : 
                      (N23)? data_i[532] : 
                      (N24)? data_i[594] : 1'b0;
  assign data_o[35] = (N15)? data_i[35] : 
                      (N16)? data_i[97] : 
                      (N17)? data_i[159] : 
                      (N18)? data_i[221] : 
                      (N19)? data_i[283] : 
                      (N20)? data_i[345] : 
                      (N21)? data_i[407] : 
                      (N22)? data_i[469] : 
                      (N23)? data_i[531] : 
                      (N24)? data_i[593] : 1'b0;
  assign data_o[34] = (N15)? data_i[34] : 
                      (N16)? data_i[96] : 
                      (N17)? data_i[158] : 
                      (N18)? data_i[220] : 
                      (N19)? data_i[282] : 
                      (N20)? data_i[344] : 
                      (N21)? data_i[406] : 
                      (N22)? data_i[468] : 
                      (N23)? data_i[530] : 
                      (N24)? data_i[592] : 1'b0;
  assign data_o[33] = (N15)? data_i[33] : 
                      (N16)? data_i[95] : 
                      (N17)? data_i[157] : 
                      (N18)? data_i[219] : 
                      (N19)? data_i[281] : 
                      (N20)? data_i[343] : 
                      (N21)? data_i[405] : 
                      (N22)? data_i[467] : 
                      (N23)? data_i[529] : 
                      (N24)? data_i[591] : 1'b0;
  assign data_o[32] = (N15)? data_i[32] : 
                      (N16)? data_i[94] : 
                      (N17)? data_i[156] : 
                      (N18)? data_i[218] : 
                      (N19)? data_i[280] : 
                      (N20)? data_i[342] : 
                      (N21)? data_i[404] : 
                      (N22)? data_i[466] : 
                      (N23)? data_i[528] : 
                      (N24)? data_i[590] : 1'b0;
  assign data_o[31] = (N15)? data_i[31] : 
                      (N16)? data_i[93] : 
                      (N17)? data_i[155] : 
                      (N18)? data_i[217] : 
                      (N19)? data_i[279] : 
                      (N20)? data_i[341] : 
                      (N21)? data_i[403] : 
                      (N22)? data_i[465] : 
                      (N23)? data_i[527] : 
                      (N24)? data_i[589] : 1'b0;
  assign data_o[30] = (N15)? data_i[30] : 
                      (N16)? data_i[92] : 
                      (N17)? data_i[154] : 
                      (N18)? data_i[216] : 
                      (N19)? data_i[278] : 
                      (N20)? data_i[340] : 
                      (N21)? data_i[402] : 
                      (N22)? data_i[464] : 
                      (N23)? data_i[526] : 
                      (N24)? data_i[588] : 1'b0;
  assign data_o[29] = (N15)? data_i[29] : 
                      (N16)? data_i[91] : 
                      (N17)? data_i[153] : 
                      (N18)? data_i[215] : 
                      (N19)? data_i[277] : 
                      (N20)? data_i[339] : 
                      (N21)? data_i[401] : 
                      (N22)? data_i[463] : 
                      (N23)? data_i[525] : 
                      (N24)? data_i[587] : 1'b0;
  assign data_o[28] = (N15)? data_i[28] : 
                      (N16)? data_i[90] : 
                      (N17)? data_i[152] : 
                      (N18)? data_i[214] : 
                      (N19)? data_i[276] : 
                      (N20)? data_i[338] : 
                      (N21)? data_i[400] : 
                      (N22)? data_i[462] : 
                      (N23)? data_i[524] : 
                      (N24)? data_i[586] : 1'b0;
  assign data_o[27] = (N15)? data_i[27] : 
                      (N16)? data_i[89] : 
                      (N17)? data_i[151] : 
                      (N18)? data_i[213] : 
                      (N19)? data_i[275] : 
                      (N20)? data_i[337] : 
                      (N21)? data_i[399] : 
                      (N22)? data_i[461] : 
                      (N23)? data_i[523] : 
                      (N24)? data_i[585] : 1'b0;
  assign data_o[26] = (N15)? data_i[26] : 
                      (N16)? data_i[88] : 
                      (N17)? data_i[150] : 
                      (N18)? data_i[212] : 
                      (N19)? data_i[274] : 
                      (N20)? data_i[336] : 
                      (N21)? data_i[398] : 
                      (N22)? data_i[460] : 
                      (N23)? data_i[522] : 
                      (N24)? data_i[584] : 1'b0;
  assign data_o[25] = (N15)? data_i[25] : 
                      (N16)? data_i[87] : 
                      (N17)? data_i[149] : 
                      (N18)? data_i[211] : 
                      (N19)? data_i[273] : 
                      (N20)? data_i[335] : 
                      (N21)? data_i[397] : 
                      (N22)? data_i[459] : 
                      (N23)? data_i[521] : 
                      (N24)? data_i[583] : 1'b0;
  assign data_o[24] = (N15)? data_i[24] : 
                      (N16)? data_i[86] : 
                      (N17)? data_i[148] : 
                      (N18)? data_i[210] : 
                      (N19)? data_i[272] : 
                      (N20)? data_i[334] : 
                      (N21)? data_i[396] : 
                      (N22)? data_i[458] : 
                      (N23)? data_i[520] : 
                      (N24)? data_i[582] : 1'b0;
  assign data_o[23] = (N15)? data_i[23] : 
                      (N16)? data_i[85] : 
                      (N17)? data_i[147] : 
                      (N18)? data_i[209] : 
                      (N19)? data_i[271] : 
                      (N20)? data_i[333] : 
                      (N21)? data_i[395] : 
                      (N22)? data_i[457] : 
                      (N23)? data_i[519] : 
                      (N24)? data_i[581] : 1'b0;
  assign data_o[22] = (N15)? data_i[22] : 
                      (N16)? data_i[84] : 
                      (N17)? data_i[146] : 
                      (N18)? data_i[208] : 
                      (N19)? data_i[270] : 
                      (N20)? data_i[332] : 
                      (N21)? data_i[394] : 
                      (N22)? data_i[456] : 
                      (N23)? data_i[518] : 
                      (N24)? data_i[580] : 1'b0;
  assign data_o[21] = (N15)? data_i[21] : 
                      (N16)? data_i[83] : 
                      (N17)? data_i[145] : 
                      (N18)? data_i[207] : 
                      (N19)? data_i[269] : 
                      (N20)? data_i[331] : 
                      (N21)? data_i[393] : 
                      (N22)? data_i[455] : 
                      (N23)? data_i[517] : 
                      (N24)? data_i[579] : 1'b0;
  assign data_o[20] = (N15)? data_i[20] : 
                      (N16)? data_i[82] : 
                      (N17)? data_i[144] : 
                      (N18)? data_i[206] : 
                      (N19)? data_i[268] : 
                      (N20)? data_i[330] : 
                      (N21)? data_i[392] : 
                      (N22)? data_i[454] : 
                      (N23)? data_i[516] : 
                      (N24)? data_i[578] : 1'b0;
  assign data_o[19] = (N15)? data_i[19] : 
                      (N16)? data_i[81] : 
                      (N17)? data_i[143] : 
                      (N18)? data_i[205] : 
                      (N19)? data_i[267] : 
                      (N20)? data_i[329] : 
                      (N21)? data_i[391] : 
                      (N22)? data_i[453] : 
                      (N23)? data_i[515] : 
                      (N24)? data_i[577] : 1'b0;
  assign data_o[18] = (N15)? data_i[18] : 
                      (N16)? data_i[80] : 
                      (N17)? data_i[142] : 
                      (N18)? data_i[204] : 
                      (N19)? data_i[266] : 
                      (N20)? data_i[328] : 
                      (N21)? data_i[390] : 
                      (N22)? data_i[452] : 
                      (N23)? data_i[514] : 
                      (N24)? data_i[576] : 1'b0;
  assign data_o[17] = (N15)? data_i[17] : 
                      (N16)? data_i[79] : 
                      (N17)? data_i[141] : 
                      (N18)? data_i[203] : 
                      (N19)? data_i[265] : 
                      (N20)? data_i[327] : 
                      (N21)? data_i[389] : 
                      (N22)? data_i[451] : 
                      (N23)? data_i[513] : 
                      (N24)? data_i[575] : 1'b0;
  assign data_o[16] = (N15)? data_i[16] : 
                      (N16)? data_i[78] : 
                      (N17)? data_i[140] : 
                      (N18)? data_i[202] : 
                      (N19)? data_i[264] : 
                      (N20)? data_i[326] : 
                      (N21)? data_i[388] : 
                      (N22)? data_i[450] : 
                      (N23)? data_i[512] : 
                      (N24)? data_i[574] : 1'b0;
  assign data_o[15] = (N15)? data_i[15] : 
                      (N16)? data_i[77] : 
                      (N17)? data_i[139] : 
                      (N18)? data_i[201] : 
                      (N19)? data_i[263] : 
                      (N20)? data_i[325] : 
                      (N21)? data_i[387] : 
                      (N22)? data_i[449] : 
                      (N23)? data_i[511] : 
                      (N24)? data_i[573] : 1'b0;
  assign data_o[14] = (N15)? data_i[14] : 
                      (N16)? data_i[76] : 
                      (N17)? data_i[138] : 
                      (N18)? data_i[200] : 
                      (N19)? data_i[262] : 
                      (N20)? data_i[324] : 
                      (N21)? data_i[386] : 
                      (N22)? data_i[448] : 
                      (N23)? data_i[510] : 
                      (N24)? data_i[572] : 1'b0;
  assign data_o[13] = (N15)? data_i[13] : 
                      (N16)? data_i[75] : 
                      (N17)? data_i[137] : 
                      (N18)? data_i[199] : 
                      (N19)? data_i[261] : 
                      (N20)? data_i[323] : 
                      (N21)? data_i[385] : 
                      (N22)? data_i[447] : 
                      (N23)? data_i[509] : 
                      (N24)? data_i[571] : 1'b0;
  assign data_o[12] = (N15)? data_i[12] : 
                      (N16)? data_i[74] : 
                      (N17)? data_i[136] : 
                      (N18)? data_i[198] : 
                      (N19)? data_i[260] : 
                      (N20)? data_i[322] : 
                      (N21)? data_i[384] : 
                      (N22)? data_i[446] : 
                      (N23)? data_i[508] : 
                      (N24)? data_i[570] : 1'b0;
  assign data_o[11] = (N15)? data_i[11] : 
                      (N16)? data_i[73] : 
                      (N17)? data_i[135] : 
                      (N18)? data_i[197] : 
                      (N19)? data_i[259] : 
                      (N20)? data_i[321] : 
                      (N21)? data_i[383] : 
                      (N22)? data_i[445] : 
                      (N23)? data_i[507] : 
                      (N24)? data_i[569] : 1'b0;
  assign data_o[10] = (N15)? data_i[10] : 
                      (N16)? data_i[72] : 
                      (N17)? data_i[134] : 
                      (N18)? data_i[196] : 
                      (N19)? data_i[258] : 
                      (N20)? data_i[320] : 
                      (N21)? data_i[382] : 
                      (N22)? data_i[444] : 
                      (N23)? data_i[506] : 
                      (N24)? data_i[568] : 1'b0;
  assign data_o[9] = (N15)? data_i[9] : 
                     (N16)? data_i[71] : 
                     (N17)? data_i[133] : 
                     (N18)? data_i[195] : 
                     (N19)? data_i[257] : 
                     (N20)? data_i[319] : 
                     (N21)? data_i[381] : 
                     (N22)? data_i[443] : 
                     (N23)? data_i[505] : 
                     (N24)? data_i[567] : 1'b0;
  assign data_o[8] = (N15)? data_i[8] : 
                     (N16)? data_i[70] : 
                     (N17)? data_i[132] : 
                     (N18)? data_i[194] : 
                     (N19)? data_i[256] : 
                     (N20)? data_i[318] : 
                     (N21)? data_i[380] : 
                     (N22)? data_i[442] : 
                     (N23)? data_i[504] : 
                     (N24)? data_i[566] : 1'b0;
  assign data_o[7] = (N15)? data_i[7] : 
                     (N16)? data_i[69] : 
                     (N17)? data_i[131] : 
                     (N18)? data_i[193] : 
                     (N19)? data_i[255] : 
                     (N20)? data_i[317] : 
                     (N21)? data_i[379] : 
                     (N22)? data_i[441] : 
                     (N23)? data_i[503] : 
                     (N24)? data_i[565] : 1'b0;
  assign data_o[6] = (N15)? data_i[6] : 
                     (N16)? data_i[68] : 
                     (N17)? data_i[130] : 
                     (N18)? data_i[192] : 
                     (N19)? data_i[254] : 
                     (N20)? data_i[316] : 
                     (N21)? data_i[378] : 
                     (N22)? data_i[440] : 
                     (N23)? data_i[502] : 
                     (N24)? data_i[564] : 1'b0;
  assign data_o[5] = (N15)? data_i[5] : 
                     (N16)? data_i[67] : 
                     (N17)? data_i[129] : 
                     (N18)? data_i[191] : 
                     (N19)? data_i[253] : 
                     (N20)? data_i[315] : 
                     (N21)? data_i[377] : 
                     (N22)? data_i[439] : 
                     (N23)? data_i[501] : 
                     (N24)? data_i[563] : 1'b0;
  assign data_o[4] = (N15)? data_i[4] : 
                     (N16)? data_i[66] : 
                     (N17)? data_i[128] : 
                     (N18)? data_i[190] : 
                     (N19)? data_i[252] : 
                     (N20)? data_i[314] : 
                     (N21)? data_i[376] : 
                     (N22)? data_i[438] : 
                     (N23)? data_i[500] : 
                     (N24)? data_i[562] : 1'b0;
  assign data_o[3] = (N15)? data_i[3] : 
                     (N16)? data_i[65] : 
                     (N17)? data_i[127] : 
                     (N18)? data_i[189] : 
                     (N19)? data_i[251] : 
                     (N20)? data_i[313] : 
                     (N21)? data_i[375] : 
                     (N22)? data_i[437] : 
                     (N23)? data_i[499] : 
                     (N24)? data_i[561] : 1'b0;
  assign data_o[2] = (N15)? data_i[2] : 
                     (N16)? data_i[64] : 
                     (N17)? data_i[126] : 
                     (N18)? data_i[188] : 
                     (N19)? data_i[250] : 
                     (N20)? data_i[312] : 
                     (N21)? data_i[374] : 
                     (N22)? data_i[436] : 
                     (N23)? data_i[498] : 
                     (N24)? data_i[560] : 1'b0;
  assign data_o[1] = (N15)? data_i[1] : 
                     (N16)? data_i[63] : 
                     (N17)? data_i[125] : 
                     (N18)? data_i[187] : 
                     (N19)? data_i[249] : 
                     (N20)? data_i[311] : 
                     (N21)? data_i[373] : 
                     (N22)? data_i[435] : 
                     (N23)? data_i[497] : 
                     (N24)? data_i[559] : 1'b0;
  assign data_o[0] = (N15)? data_i[0] : 
                     (N16)? data_i[62] : 
                     (N17)? data_i[124] : 
                     (N18)? data_i[186] : 
                     (N19)? data_i[248] : 
                     (N20)? data_i[310] : 
                     (N21)? data_i[372] : 
                     (N22)? data_i[434] : 
                     (N23)? data_i[496] : 
                     (N24)? data_i[558] : 1'b0;

endmodule