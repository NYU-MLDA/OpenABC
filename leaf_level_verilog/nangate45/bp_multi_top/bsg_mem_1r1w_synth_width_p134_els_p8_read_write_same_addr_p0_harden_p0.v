module bsg_mem_1r1w_synth_width_p134_els_p8_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [2:0] w_addr_i;
  input [133:0] w_data_i;
  input [2:0] r_addr_i;
  output [133:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [133:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53;
  reg [1071:0] mem;
  assign r_data_o[133] = (N17)? mem[133] :
                         (N19)? mem[267] :
                         (N21)? mem[401] :
                         (N23)? mem[535] :
                         (N18)? mem[669] :
                         (N20)? mem[803] :
                         (N22)? mem[937] :
                         (N24)? mem[1071] : 1'b0;
  assign r_data_o[132] = (N17)? mem[132] :
                         (N19)? mem[266] :
                         (N21)? mem[400] :
                         (N23)? mem[534] :
                         (N18)? mem[668] :
                         (N20)? mem[802] :
                         (N22)? mem[936] :
                         (N24)? mem[1070] : 1'b0;
  assign r_data_o[131] = (N17)? mem[131] :
                         (N19)? mem[265] :
                         (N21)? mem[399] :
                         (N23)? mem[533] :
                         (N18)? mem[667] :
                         (N20)? mem[801] :
                         (N22)? mem[935] :
                         (N24)? mem[1069] : 1'b0;
  assign r_data_o[130] = (N17)? mem[130] :
                         (N19)? mem[264] :
                         (N21)? mem[398] :
                         (N23)? mem[532] :
                         (N18)? mem[666] :
                         (N20)? mem[800] :
                         (N22)? mem[934] :
                         (N24)? mem[1068] : 1'b0;
  assign r_data_o[129] = (N17)? mem[129] :
                         (N19)? mem[263] :
                         (N21)? mem[397] :
                         (N23)? mem[531] :
                         (N18)? mem[665] :
                         (N20)? mem[799] :
                         (N22)? mem[933] :
                         (N24)? mem[1067] : 1'b0;
  assign r_data_o[128] = (N17)? mem[128] :
                         (N19)? mem[262] :
                         (N21)? mem[396] :
                         (N23)? mem[530] :
                         (N18)? mem[664] :
                         (N20)? mem[798] :
                         (N22)? mem[932] :
                         (N24)? mem[1066] : 1'b0;
  assign r_data_o[127] = (N17)? mem[127] :
                         (N19)? mem[261] :
                         (N21)? mem[395] :
                         (N23)? mem[529] :
                         (N18)? mem[663] :
                         (N20)? mem[797] :
                         (N22)? mem[931] :
                         (N24)? mem[1065] : 1'b0;
  assign r_data_o[126] = (N17)? mem[126] :
                         (N19)? mem[260] :
                         (N21)? mem[394] :
                         (N23)? mem[528] :
                         (N18)? mem[662] :
                         (N20)? mem[796] :
                         (N22)? mem[930] :
                         (N24)? mem[1064] : 1'b0;
  assign r_data_o[125] = (N17)? mem[125] :
                         (N19)? mem[259] :
                         (N21)? mem[393] :
                         (N23)? mem[527] :
                         (N18)? mem[661] :
                         (N20)? mem[795] :
                         (N22)? mem[929] :
                         (N24)? mem[1063] : 1'b0;
  assign r_data_o[124] = (N17)? mem[124] :
                         (N19)? mem[258] :
                         (N21)? mem[392] :
                         (N23)? mem[526] :
                         (N18)? mem[660] :
                         (N20)? mem[794] :
                         (N22)? mem[928] :
                         (N24)? mem[1062] : 1'b0;
  assign r_data_o[123] = (N17)? mem[123] :
                         (N19)? mem[257] :
                         (N21)? mem[391] :
                         (N23)? mem[525] :
                         (N18)? mem[659] :
                         (N20)? mem[793] :
                         (N22)? mem[927] :
                         (N24)? mem[1061] : 1'b0;
  assign r_data_o[122] = (N17)? mem[122] :
                         (N19)? mem[256] :
                         (N21)? mem[390] :
                         (N23)? mem[524] :
                         (N18)? mem[658] :
                         (N20)? mem[792] :
                         (N22)? mem[926] :
                         (N24)? mem[1060] : 1'b0;
  assign r_data_o[121] = (N17)? mem[121] :
                         (N19)? mem[255] :
                         (N21)? mem[389] :
                         (N23)? mem[523] :
                         (N18)? mem[657] :
                         (N20)? mem[791] :
                         (N22)? mem[925] :
                         (N24)? mem[1059] : 1'b0;
  assign r_data_o[120] = (N17)? mem[120] :
                         (N19)? mem[254] :
                         (N21)? mem[388] :
                         (N23)? mem[522] :
                         (N18)? mem[656] :
                         (N20)? mem[790] :
                         (N22)? mem[924] :
                         (N24)? mem[1058] : 1'b0;
  assign r_data_o[119] = (N17)? mem[119] :
                         (N19)? mem[253] :
                         (N21)? mem[387] :
                         (N23)? mem[521] :
                         (N18)? mem[655] :
                         (N20)? mem[789] :
                         (N22)? mem[923] :
                         (N24)? mem[1057] : 1'b0;
  assign r_data_o[118] = (N17)? mem[118] :
                         (N19)? mem[252] :
                         (N21)? mem[386] :
                         (N23)? mem[520] :
                         (N18)? mem[654] :
                         (N20)? mem[788] :
                         (N22)? mem[922] :
                         (N24)? mem[1056] : 1'b0;
  assign r_data_o[117] = (N17)? mem[117] :
                         (N19)? mem[251] :
                         (N21)? mem[385] :
                         (N23)? mem[519] :
                         (N18)? mem[653] :
                         (N20)? mem[787] :
                         (N22)? mem[921] :
                         (N24)? mem[1055] : 1'b0;
  assign r_data_o[116] = (N17)? mem[116] :
                         (N19)? mem[250] :
                         (N21)? mem[384] :
                         (N23)? mem[518] :
                         (N18)? mem[652] :
                         (N20)? mem[786] :
                         (N22)? mem[920] :
                         (N24)? mem[1054] : 1'b0;
  assign r_data_o[115] = (N17)? mem[115] :
                         (N19)? mem[249] :
                         (N21)? mem[383] :
                         (N23)? mem[517] :
                         (N18)? mem[651] :
                         (N20)? mem[785] :
                         (N22)? mem[919] :
                         (N24)? mem[1053] : 1'b0;
  assign r_data_o[114] = (N17)? mem[114] :
                         (N19)? mem[248] :
                         (N21)? mem[382] :
                         (N23)? mem[516] :
                         (N18)? mem[650] :
                         (N20)? mem[784] :
                         (N22)? mem[918] :
                         (N24)? mem[1052] : 1'b0;
  assign r_data_o[113] = (N17)? mem[113] :
                         (N19)? mem[247] :
                         (N21)? mem[381] :
                         (N23)? mem[515] :
                         (N18)? mem[649] :
                         (N20)? mem[783] :
                         (N22)? mem[917] :
                         (N24)? mem[1051] : 1'b0;
  assign r_data_o[112] = (N17)? mem[112] :
                         (N19)? mem[246] :
                         (N21)? mem[380] :
                         (N23)? mem[514] :
                         (N18)? mem[648] :
                         (N20)? mem[782] :
                         (N22)? mem[916] :
                         (N24)? mem[1050] : 1'b0;
  assign r_data_o[111] = (N17)? mem[111] :
                         (N19)? mem[245] :
                         (N21)? mem[379] :
                         (N23)? mem[513] :
                         (N18)? mem[647] :
                         (N20)? mem[781] :
                         (N22)? mem[915] :
                         (N24)? mem[1049] : 1'b0;
  assign r_data_o[110] = (N17)? mem[110] :
                         (N19)? mem[244] :
                         (N21)? mem[378] :
                         (N23)? mem[512] :
                         (N18)? mem[646] :
                         (N20)? mem[780] :
                         (N22)? mem[914] :
                         (N24)? mem[1048] : 1'b0;
  assign r_data_o[109] = (N17)? mem[109] :
                         (N19)? mem[243] :
                         (N21)? mem[377] :
                         (N23)? mem[511] :
                         (N18)? mem[645] :
                         (N20)? mem[779] :
                         (N22)? mem[913] :
                         (N24)? mem[1047] : 1'b0;
  assign r_data_o[108] = (N17)? mem[108] :
                         (N19)? mem[242] :
                         (N21)? mem[376] :
                         (N23)? mem[510] :
                         (N18)? mem[644] :
                         (N20)? mem[778] :
                         (N22)? mem[912] :
                         (N24)? mem[1046] : 1'b0;
  assign r_data_o[107] = (N17)? mem[107] :
                         (N19)? mem[241] :
                         (N21)? mem[375] :
                         (N23)? mem[509] :
                         (N18)? mem[643] :
                         (N20)? mem[777] :
                         (N22)? mem[911] :
                         (N24)? mem[1045] : 1'b0;
  assign r_data_o[106] = (N17)? mem[106] :
                         (N19)? mem[240] :
                         (N21)? mem[374] :
                         (N23)? mem[508] :
                         (N18)? mem[642] :
                         (N20)? mem[776] :
                         (N22)? mem[910] :
                         (N24)? mem[1044] : 1'b0;
  assign r_data_o[105] = (N17)? mem[105] :
                         (N19)? mem[239] :
                         (N21)? mem[373] :
                         (N23)? mem[507] :
                         (N18)? mem[641] :
                         (N20)? mem[775] :
                         (N22)? mem[909] :
                         (N24)? mem[1043] : 1'b0;
  assign r_data_o[104] = (N17)? mem[104] :
                         (N19)? mem[238] :
                         (N21)? mem[372] :
                         (N23)? mem[506] :
                         (N18)? mem[640] :
                         (N20)? mem[774] :
                         (N22)? mem[908] :
                         (N24)? mem[1042] : 1'b0;
  assign r_data_o[103] = (N17)? mem[103] :
                         (N19)? mem[237] :
                         (N21)? mem[371] :
                         (N23)? mem[505] :
                         (N18)? mem[639] :
                         (N20)? mem[773] :
                         (N22)? mem[907] :
                         (N24)? mem[1041] : 1'b0;
  assign r_data_o[102] = (N17)? mem[102] :
                         (N19)? mem[236] :
                         (N21)? mem[370] :
                         (N23)? mem[504] :
                         (N18)? mem[638] :
                         (N20)? mem[772] :
                         (N22)? mem[906] :
                         (N24)? mem[1040] : 1'b0;
  assign r_data_o[101] = (N17)? mem[101] :
                         (N19)? mem[235] :
                         (N21)? mem[369] :
                         (N23)? mem[503] :
                         (N18)? mem[637] :
                         (N20)? mem[771] :
                         (N22)? mem[905] :
                         (N24)? mem[1039] : 1'b0;
  assign r_data_o[100] = (N17)? mem[100] :
                         (N19)? mem[234] :
                         (N21)? mem[368] :
                         (N23)? mem[502] :
                         (N18)? mem[636] :
                         (N20)? mem[770] :
                         (N22)? mem[904] :
                         (N24)? mem[1038] : 1'b0;
  assign r_data_o[99] = (N17)? mem[99] :
                        (N19)? mem[233] :
                        (N21)? mem[367] :
                        (N23)? mem[501] :
                        (N18)? mem[635] :
                        (N20)? mem[769] :
                        (N22)? mem[903] :
                        (N24)? mem[1037] : 1'b0;
  assign r_data_o[98] = (N17)? mem[98] :
                        (N19)? mem[232] :
                        (N21)? mem[366] :
                        (N23)? mem[500] :
                        (N18)? mem[634] :
                        (N20)? mem[768] :
                        (N22)? mem[902] :
                        (N24)? mem[1036] : 1'b0;
  assign r_data_o[97] = (N17)? mem[97] :
                        (N19)? mem[231] :
                        (N21)? mem[365] :
                        (N23)? mem[499] :
                        (N18)? mem[633] :
                        (N20)? mem[767] :
                        (N22)? mem[901] :
                        (N24)? mem[1035] : 1'b0;
  assign r_data_o[96] = (N17)? mem[96] :
                        (N19)? mem[230] :
                        (N21)? mem[364] :
                        (N23)? mem[498] :
                        (N18)? mem[632] :
                        (N20)? mem[766] :
                        (N22)? mem[900] :
                        (N24)? mem[1034] : 1'b0;
  assign r_data_o[95] = (N17)? mem[95] :
                        (N19)? mem[229] :
                        (N21)? mem[363] :
                        (N23)? mem[497] :
                        (N18)? mem[631] :
                        (N20)? mem[765] :
                        (N22)? mem[899] :
                        (N24)? mem[1033] : 1'b0;
  assign r_data_o[94] = (N17)? mem[94] :
                        (N19)? mem[228] :
                        (N21)? mem[362] :
                        (N23)? mem[496] :
                        (N18)? mem[630] :
                        (N20)? mem[764] :
                        (N22)? mem[898] :
                        (N24)? mem[1032] : 1'b0;
  assign r_data_o[93] = (N17)? mem[93] :
                        (N19)? mem[227] :
                        (N21)? mem[361] :
                        (N23)? mem[495] :
                        (N18)? mem[629] :
                        (N20)? mem[763] :
                        (N22)? mem[897] :
                        (N24)? mem[1031] : 1'b0;
  assign r_data_o[92] = (N17)? mem[92] :
                        (N19)? mem[226] :
                        (N21)? mem[360] :
                        (N23)? mem[494] :
                        (N18)? mem[628] :
                        (N20)? mem[762] :
                        (N22)? mem[896] :
                        (N24)? mem[1030] : 1'b0;
  assign r_data_o[91] = (N17)? mem[91] :
                        (N19)? mem[225] :
                        (N21)? mem[359] :
                        (N23)? mem[493] :
                        (N18)? mem[627] :
                        (N20)? mem[761] :
                        (N22)? mem[895] :
                        (N24)? mem[1029] : 1'b0;
  assign r_data_o[90] = (N17)? mem[90] :
                        (N19)? mem[224] :
                        (N21)? mem[358] :
                        (N23)? mem[492] :
                        (N18)? mem[626] :
                        (N20)? mem[760] :
                        (N22)? mem[894] :
                        (N24)? mem[1028] : 1'b0;
  assign r_data_o[89] = (N17)? mem[89] :
                        (N19)? mem[223] :
                        (N21)? mem[357] :
                        (N23)? mem[491] :
                        (N18)? mem[625] :
                        (N20)? mem[759] :
                        (N22)? mem[893] :
                        (N24)? mem[1027] : 1'b0;
  assign r_data_o[88] = (N17)? mem[88] :
                        (N19)? mem[222] :
                        (N21)? mem[356] :
                        (N23)? mem[490] :
                        (N18)? mem[624] :
                        (N20)? mem[758] :
                        (N22)? mem[892] :
                        (N24)? mem[1026] : 1'b0;
  assign r_data_o[87] = (N17)? mem[87] :
                        (N19)? mem[221] :
                        (N21)? mem[355] :
                        (N23)? mem[489] :
                        (N18)? mem[623] :
                        (N20)? mem[757] :
                        (N22)? mem[891] :
                        (N24)? mem[1025] : 1'b0;
  assign r_data_o[86] = (N17)? mem[86] :
                        (N19)? mem[220] :
                        (N21)? mem[354] :
                        (N23)? mem[488] :
                        (N18)? mem[622] :
                        (N20)? mem[756] :
                        (N22)? mem[890] :
                        (N24)? mem[1024] : 1'b0;
  assign r_data_o[85] = (N17)? mem[85] :
                        (N19)? mem[219] :
                        (N21)? mem[353] :
                        (N23)? mem[487] :
                        (N18)? mem[621] :
                        (N20)? mem[755] :
                        (N22)? mem[889] :
                        (N24)? mem[1023] : 1'b0;
  assign r_data_o[84] = (N17)? mem[84] :
                        (N19)? mem[218] :
                        (N21)? mem[352] :
                        (N23)? mem[486] :
                        (N18)? mem[620] :
                        (N20)? mem[754] :
                        (N22)? mem[888] :
                        (N24)? mem[1022] : 1'b0;
  assign r_data_o[83] = (N17)? mem[83] :
                        (N19)? mem[217] :
                        (N21)? mem[351] :
                        (N23)? mem[485] :
                        (N18)? mem[619] :
                        (N20)? mem[753] :
                        (N22)? mem[887] :
                        (N24)? mem[1021] : 1'b0;
  assign r_data_o[82] = (N17)? mem[82] :
                        (N19)? mem[216] :
                        (N21)? mem[350] :
                        (N23)? mem[484] :
                        (N18)? mem[618] :
                        (N20)? mem[752] :
                        (N22)? mem[886] :
                        (N24)? mem[1020] : 1'b0;
  assign r_data_o[81] = (N17)? mem[81] :
                        (N19)? mem[215] :
                        (N21)? mem[349] :
                        (N23)? mem[483] :
                        (N18)? mem[617] :
                        (N20)? mem[751] :
                        (N22)? mem[885] :
                        (N24)? mem[1019] : 1'b0;
  assign r_data_o[80] = (N17)? mem[80] :
                        (N19)? mem[214] :
                        (N21)? mem[348] :
                        (N23)? mem[482] :
                        (N18)? mem[616] :
                        (N20)? mem[750] :
                        (N22)? mem[884] :
                        (N24)? mem[1018] : 1'b0;
  assign r_data_o[79] = (N17)? mem[79] :
                        (N19)? mem[213] :
                        (N21)? mem[347] :
                        (N23)? mem[481] :
                        (N18)? mem[615] :
                        (N20)? mem[749] :
                        (N22)? mem[883] :
                        (N24)? mem[1017] : 1'b0;
  assign r_data_o[78] = (N17)? mem[78] :
                        (N19)? mem[212] :
                        (N21)? mem[346] :
                        (N23)? mem[480] :
                        (N18)? mem[614] :
                        (N20)? mem[748] :
                        (N22)? mem[882] :
                        (N24)? mem[1016] : 1'b0;
  assign r_data_o[77] = (N17)? mem[77] :
                        (N19)? mem[211] :
                        (N21)? mem[345] :
                        (N23)? mem[479] :
                        (N18)? mem[613] :
                        (N20)? mem[747] :
                        (N22)? mem[881] :
                        (N24)? mem[1015] : 1'b0;
  assign r_data_o[76] = (N17)? mem[76] :
                        (N19)? mem[210] :
                        (N21)? mem[344] :
                        (N23)? mem[478] :
                        (N18)? mem[612] :
                        (N20)? mem[746] :
                        (N22)? mem[880] :
                        (N24)? mem[1014] : 1'b0;
  assign r_data_o[75] = (N17)? mem[75] :
                        (N19)? mem[209] :
                        (N21)? mem[343] :
                        (N23)? mem[477] :
                        (N18)? mem[611] :
                        (N20)? mem[745] :
                        (N22)? mem[879] :
                        (N24)? mem[1013] : 1'b0;
  assign r_data_o[74] = (N17)? mem[74] :
                        (N19)? mem[208] :
                        (N21)? mem[342] :
                        (N23)? mem[476] :
                        (N18)? mem[610] :
                        (N20)? mem[744] :
                        (N22)? mem[878] :
                        (N24)? mem[1012] : 1'b0;
  assign r_data_o[73] = (N17)? mem[73] :
                        (N19)? mem[207] :
                        (N21)? mem[341] :
                        (N23)? mem[475] :
                        (N18)? mem[609] :
                        (N20)? mem[743] :
                        (N22)? mem[877] :
                        (N24)? mem[1011] : 1'b0;
  assign r_data_o[72] = (N17)? mem[72] :
                        (N19)? mem[206] :
                        (N21)? mem[340] :
                        (N23)? mem[474] :
                        (N18)? mem[608] :
                        (N20)? mem[742] :
                        (N22)? mem[876] :
                        (N24)? mem[1010] : 1'b0;
  assign r_data_o[71] = (N17)? mem[71] :
                        (N19)? mem[205] :
                        (N21)? mem[339] :
                        (N23)? mem[473] :
                        (N18)? mem[607] :
                        (N20)? mem[741] :
                        (N22)? mem[875] :
                        (N24)? mem[1009] : 1'b0;
  assign r_data_o[70] = (N17)? mem[70] :
                        (N19)? mem[204] :
                        (N21)? mem[338] :
                        (N23)? mem[472] :
                        (N18)? mem[606] :
                        (N20)? mem[740] :
                        (N22)? mem[874] :
                        (N24)? mem[1008] : 1'b0;
  assign r_data_o[69] = (N17)? mem[69] :
                        (N19)? mem[203] :
                        (N21)? mem[337] :
                        (N23)? mem[471] :
                        (N18)? mem[605] :
                        (N20)? mem[739] :
                        (N22)? mem[873] :
                        (N24)? mem[1007] : 1'b0;
  assign r_data_o[68] = (N17)? mem[68] :
                        (N19)? mem[202] :
                        (N21)? mem[336] :
                        (N23)? mem[470] :
                        (N18)? mem[604] :
                        (N20)? mem[738] :
                        (N22)? mem[872] :
                        (N24)? mem[1006] : 1'b0;
  assign r_data_o[67] = (N17)? mem[67] :
                        (N19)? mem[201] :
                        (N21)? mem[335] :
                        (N23)? mem[469] :
                        (N18)? mem[603] :
                        (N20)? mem[737] :
                        (N22)? mem[871] :
                        (N24)? mem[1005] : 1'b0;
  assign r_data_o[66] = (N17)? mem[66] :
                        (N19)? mem[200] :
                        (N21)? mem[334] :
                        (N23)? mem[468] :
                        (N18)? mem[602] :
                        (N20)? mem[736] :
                        (N22)? mem[870] :
                        (N24)? mem[1004] : 1'b0;
  assign r_data_o[65] = (N17)? mem[65] :
                        (N19)? mem[199] :
                        (N21)? mem[333] :
                        (N23)? mem[467] :
                        (N18)? mem[601] :
                        (N20)? mem[735] :
                        (N22)? mem[869] :
                        (N24)? mem[1003] : 1'b0;
  assign r_data_o[64] = (N17)? mem[64] :
                        (N19)? mem[198] :
                        (N21)? mem[332] :
                        (N23)? mem[466] :
                        (N18)? mem[600] :
                        (N20)? mem[734] :
                        (N22)? mem[868] :
                        (N24)? mem[1002] : 1'b0;
  assign r_data_o[63] = (N17)? mem[63] :
                        (N19)? mem[197] :
                        (N21)? mem[331] :
                        (N23)? mem[465] :
                        (N18)? mem[599] :
                        (N20)? mem[733] :
                        (N22)? mem[867] :
                        (N24)? mem[1001] : 1'b0;
  assign r_data_o[62] = (N17)? mem[62] :
                        (N19)? mem[196] :
                        (N21)? mem[330] :
                        (N23)? mem[464] :
                        (N18)? mem[598] :
                        (N20)? mem[732] :
                        (N22)? mem[866] :
                        (N24)? mem[1000] : 1'b0;
  assign r_data_o[61] = (N17)? mem[61] :
                        (N19)? mem[195] :
                        (N21)? mem[329] :
                        (N23)? mem[463] :
                        (N18)? mem[597] :
                        (N20)? mem[731] :
                        (N22)? mem[865] :
                        (N24)? mem[999] : 1'b0;
  assign r_data_o[60] = (N17)? mem[60] :
                        (N19)? mem[194] :
                        (N21)? mem[328] :
                        (N23)? mem[462] :
                        (N18)? mem[596] :
                        (N20)? mem[730] :
                        (N22)? mem[864] :
                        (N24)? mem[998] : 1'b0;
  assign r_data_o[59] = (N17)? mem[59] :
                        (N19)? mem[193] :
                        (N21)? mem[327] :
                        (N23)? mem[461] :
                        (N18)? mem[595] :
                        (N20)? mem[729] :
                        (N22)? mem[863] :
                        (N24)? mem[997] : 1'b0;
  assign r_data_o[58] = (N17)? mem[58] :
                        (N19)? mem[192] :
                        (N21)? mem[326] :
                        (N23)? mem[460] :
                        (N18)? mem[594] :
                        (N20)? mem[728] :
                        (N22)? mem[862] :
                        (N24)? mem[996] : 1'b0;
  assign r_data_o[57] = (N17)? mem[57] :
                        (N19)? mem[191] :
                        (N21)? mem[325] :
                        (N23)? mem[459] :
                        (N18)? mem[593] :
                        (N20)? mem[727] :
                        (N22)? mem[861] :
                        (N24)? mem[995] : 1'b0;
  assign r_data_o[56] = (N17)? mem[56] :
                        (N19)? mem[190] :
                        (N21)? mem[324] :
                        (N23)? mem[458] :
                        (N18)? mem[592] :
                        (N20)? mem[726] :
                        (N22)? mem[860] :
                        (N24)? mem[994] : 1'b0;
  assign r_data_o[55] = (N17)? mem[55] :
                        (N19)? mem[189] :
                        (N21)? mem[323] :
                        (N23)? mem[457] :
                        (N18)? mem[591] :
                        (N20)? mem[725] :
                        (N22)? mem[859] :
                        (N24)? mem[993] : 1'b0;
  assign r_data_o[54] = (N17)? mem[54] :
                        (N19)? mem[188] :
                        (N21)? mem[322] :
                        (N23)? mem[456] :
                        (N18)? mem[590] :
                        (N20)? mem[724] :
                        (N22)? mem[858] :
                        (N24)? mem[992] : 1'b0;
  assign r_data_o[53] = (N17)? mem[53] :
                        (N19)? mem[187] :
                        (N21)? mem[321] :
                        (N23)? mem[455] :
                        (N18)? mem[589] :
                        (N20)? mem[723] :
                        (N22)? mem[857] :
                        (N24)? mem[991] : 1'b0;
  assign r_data_o[52] = (N17)? mem[52] :
                        (N19)? mem[186] :
                        (N21)? mem[320] :
                        (N23)? mem[454] :
                        (N18)? mem[588] :
                        (N20)? mem[722] :
                        (N22)? mem[856] :
                        (N24)? mem[990] : 1'b0;
  assign r_data_o[51] = (N17)? mem[51] :
                        (N19)? mem[185] :
                        (N21)? mem[319] :
                        (N23)? mem[453] :
                        (N18)? mem[587] :
                        (N20)? mem[721] :
                        (N22)? mem[855] :
                        (N24)? mem[989] : 1'b0;
  assign r_data_o[50] = (N17)? mem[50] :
                        (N19)? mem[184] :
                        (N21)? mem[318] :
                        (N23)? mem[452] :
                        (N18)? mem[586] :
                        (N20)? mem[720] :
                        (N22)? mem[854] :
                        (N24)? mem[988] : 1'b0;
  assign r_data_o[49] = (N17)? mem[49] :
                        (N19)? mem[183] :
                        (N21)? mem[317] :
                        (N23)? mem[451] :
                        (N18)? mem[585] :
                        (N20)? mem[719] :
                        (N22)? mem[853] :
                        (N24)? mem[987] : 1'b0;
  assign r_data_o[48] = (N17)? mem[48] :
                        (N19)? mem[182] :
                        (N21)? mem[316] :
                        (N23)? mem[450] :
                        (N18)? mem[584] :
                        (N20)? mem[718] :
                        (N22)? mem[852] :
                        (N24)? mem[986] : 1'b0;
  assign r_data_o[47] = (N17)? mem[47] :
                        (N19)? mem[181] :
                        (N21)? mem[315] :
                        (N23)? mem[449] :
                        (N18)? mem[583] :
                        (N20)? mem[717] :
                        (N22)? mem[851] :
                        (N24)? mem[985] : 1'b0;
  assign r_data_o[46] = (N17)? mem[46] :
                        (N19)? mem[180] :
                        (N21)? mem[314] :
                        (N23)? mem[448] :
                        (N18)? mem[582] :
                        (N20)? mem[716] :
                        (N22)? mem[850] :
                        (N24)? mem[984] : 1'b0;
  assign r_data_o[45] = (N17)? mem[45] :
                        (N19)? mem[179] :
                        (N21)? mem[313] :
                        (N23)? mem[447] :
                        (N18)? mem[581] :
                        (N20)? mem[715] :
                        (N22)? mem[849] :
                        (N24)? mem[983] : 1'b0;
  assign r_data_o[44] = (N17)? mem[44] :
                        (N19)? mem[178] :
                        (N21)? mem[312] :
                        (N23)? mem[446] :
                        (N18)? mem[580] :
                        (N20)? mem[714] :
                        (N22)? mem[848] :
                        (N24)? mem[982] : 1'b0;
  assign r_data_o[43] = (N17)? mem[43] :
                        (N19)? mem[177] :
                        (N21)? mem[311] :
                        (N23)? mem[445] :
                        (N18)? mem[579] :
                        (N20)? mem[713] :
                        (N22)? mem[847] :
                        (N24)? mem[981] : 1'b0;
  assign r_data_o[42] = (N17)? mem[42] :
                        (N19)? mem[176] :
                        (N21)? mem[310] :
                        (N23)? mem[444] :
                        (N18)? mem[578] :
                        (N20)? mem[712] :
                        (N22)? mem[846] :
                        (N24)? mem[980] : 1'b0;
  assign r_data_o[41] = (N17)? mem[41] :
                        (N19)? mem[175] :
                        (N21)? mem[309] :
                        (N23)? mem[443] :
                        (N18)? mem[577] :
                        (N20)? mem[711] :
                        (N22)? mem[845] :
                        (N24)? mem[979] : 1'b0;
  assign r_data_o[40] = (N17)? mem[40] :
                        (N19)? mem[174] :
                        (N21)? mem[308] :
                        (N23)? mem[442] :
                        (N18)? mem[576] :
                        (N20)? mem[710] :
                        (N22)? mem[844] :
                        (N24)? mem[978] : 1'b0;
  assign r_data_o[39] = (N17)? mem[39] :
                        (N19)? mem[173] :
                        (N21)? mem[307] :
                        (N23)? mem[441] :
                        (N18)? mem[575] :
                        (N20)? mem[709] :
                        (N22)? mem[843] :
                        (N24)? mem[977] : 1'b0;
  assign r_data_o[38] = (N17)? mem[38] :
                        (N19)? mem[172] :
                        (N21)? mem[306] :
                        (N23)? mem[440] :
                        (N18)? mem[574] :
                        (N20)? mem[708] :
                        (N22)? mem[842] :
                        (N24)? mem[976] : 1'b0;
  assign r_data_o[37] = (N17)? mem[37] :
                        (N19)? mem[171] :
                        (N21)? mem[305] :
                        (N23)? mem[439] :
                        (N18)? mem[573] :
                        (N20)? mem[707] :
                        (N22)? mem[841] :
                        (N24)? mem[975] : 1'b0;
  assign r_data_o[36] = (N17)? mem[36] :
                        (N19)? mem[170] :
                        (N21)? mem[304] :
                        (N23)? mem[438] :
                        (N18)? mem[572] :
                        (N20)? mem[706] :
                        (N22)? mem[840] :
                        (N24)? mem[974] : 1'b0;
  assign r_data_o[35] = (N17)? mem[35] :
                        (N19)? mem[169] :
                        (N21)? mem[303] :
                        (N23)? mem[437] :
                        (N18)? mem[571] :
                        (N20)? mem[705] :
                        (N22)? mem[839] :
                        (N24)? mem[973] : 1'b0;
  assign r_data_o[34] = (N17)? mem[34] :
                        (N19)? mem[168] :
                        (N21)? mem[302] :
                        (N23)? mem[436] :
                        (N18)? mem[570] :
                        (N20)? mem[704] :
                        (N22)? mem[838] :
                        (N24)? mem[972] : 1'b0;
  assign r_data_o[33] = (N17)? mem[33] :
                        (N19)? mem[167] :
                        (N21)? mem[301] :
                        (N23)? mem[435] :
                        (N18)? mem[569] :
                        (N20)? mem[703] :
                        (N22)? mem[837] :
                        (N24)? mem[971] : 1'b0;
  assign r_data_o[32] = (N17)? mem[32] :
                        (N19)? mem[166] :
                        (N21)? mem[300] :
                        (N23)? mem[434] :
                        (N18)? mem[568] :
                        (N20)? mem[702] :
                        (N22)? mem[836] :
                        (N24)? mem[970] : 1'b0;
  assign r_data_o[31] = (N17)? mem[31] :
                        (N19)? mem[165] :
                        (N21)? mem[299] :
                        (N23)? mem[433] :
                        (N18)? mem[567] :
                        (N20)? mem[701] :
                        (N22)? mem[835] :
                        (N24)? mem[969] : 1'b0;
  assign r_data_o[30] = (N17)? mem[30] :
                        (N19)? mem[164] :
                        (N21)? mem[298] :
                        (N23)? mem[432] :
                        (N18)? mem[566] :
                        (N20)? mem[700] :
                        (N22)? mem[834] :
                        (N24)? mem[968] : 1'b0;
  assign r_data_o[29] = (N17)? mem[29] :
                        (N19)? mem[163] :
                        (N21)? mem[297] :
                        (N23)? mem[431] :
                        (N18)? mem[565] :
                        (N20)? mem[699] :
                        (N22)? mem[833] :
                        (N24)? mem[967] : 1'b0;
  assign r_data_o[28] = (N17)? mem[28] :
                        (N19)? mem[162] :
                        (N21)? mem[296] :
                        (N23)? mem[430] :
                        (N18)? mem[564] :
                        (N20)? mem[698] :
                        (N22)? mem[832] :
                        (N24)? mem[966] : 1'b0;
  assign r_data_o[27] = (N17)? mem[27] :
                        (N19)? mem[161] :
                        (N21)? mem[295] :
                        (N23)? mem[429] :
                        (N18)? mem[563] :
                        (N20)? mem[697] :
                        (N22)? mem[831] :
                        (N24)? mem[965] : 1'b0;
  assign r_data_o[26] = (N17)? mem[26] :
                        (N19)? mem[160] :
                        (N21)? mem[294] :
                        (N23)? mem[428] :
                        (N18)? mem[562] :
                        (N20)? mem[696] :
                        (N22)? mem[830] :
                        (N24)? mem[964] : 1'b0;
  assign r_data_o[25] = (N17)? mem[25] :
                        (N19)? mem[159] :
                        (N21)? mem[293] :
                        (N23)? mem[427] :
                        (N18)? mem[561] :
                        (N20)? mem[695] :
                        (N22)? mem[829] :
                        (N24)? mem[963] : 1'b0;
  assign r_data_o[24] = (N17)? mem[24] :
                        (N19)? mem[158] :
                        (N21)? mem[292] :
                        (N23)? mem[426] :
                        (N18)? mem[560] :
                        (N20)? mem[694] :
                        (N22)? mem[828] :
                        (N24)? mem[962] : 1'b0;
  assign r_data_o[23] = (N17)? mem[23] :
                        (N19)? mem[157] :
                        (N21)? mem[291] :
                        (N23)? mem[425] :
                        (N18)? mem[559] :
                        (N20)? mem[693] :
                        (N22)? mem[827] :
                        (N24)? mem[961] : 1'b0;
  assign r_data_o[22] = (N17)? mem[22] :
                        (N19)? mem[156] :
                        (N21)? mem[290] :
                        (N23)? mem[424] :
                        (N18)? mem[558] :
                        (N20)? mem[692] :
                        (N22)? mem[826] :
                        (N24)? mem[960] : 1'b0;
  assign r_data_o[21] = (N17)? mem[21] :
                        (N19)? mem[155] :
                        (N21)? mem[289] :
                        (N23)? mem[423] :
                        (N18)? mem[557] :
                        (N20)? mem[691] :
                        (N22)? mem[825] :
                        (N24)? mem[959] : 1'b0;
  assign r_data_o[20] = (N17)? mem[20] :
                        (N19)? mem[154] :
                        (N21)? mem[288] :
                        (N23)? mem[422] :
                        (N18)? mem[556] :
                        (N20)? mem[690] :
                        (N22)? mem[824] :
                        (N24)? mem[958] : 1'b0;
  assign r_data_o[19] = (N17)? mem[19] :
                        (N19)? mem[153] :
                        (N21)? mem[287] :
                        (N23)? mem[421] :
                        (N18)? mem[555] :
                        (N20)? mem[689] :
                        (N22)? mem[823] :
                        (N24)? mem[957] : 1'b0;
  assign r_data_o[18] = (N17)? mem[18] :
                        (N19)? mem[152] :
                        (N21)? mem[286] :
                        (N23)? mem[420] :
                        (N18)? mem[554] :
                        (N20)? mem[688] :
                        (N22)? mem[822] :
                        (N24)? mem[956] : 1'b0;
  assign r_data_o[17] = (N17)? mem[17] :
                        (N19)? mem[151] :
                        (N21)? mem[285] :
                        (N23)? mem[419] :
                        (N18)? mem[553] :
                        (N20)? mem[687] :
                        (N22)? mem[821] :
                        (N24)? mem[955] : 1'b0;
  assign r_data_o[16] = (N17)? mem[16] :
                        (N19)? mem[150] :
                        (N21)? mem[284] :
                        (N23)? mem[418] :
                        (N18)? mem[552] :
                        (N20)? mem[686] :
                        (N22)? mem[820] :
                        (N24)? mem[954] : 1'b0;
  assign r_data_o[15] = (N17)? mem[15] :
                        (N19)? mem[149] :
                        (N21)? mem[283] :
                        (N23)? mem[417] :
                        (N18)? mem[551] :
                        (N20)? mem[685] :
                        (N22)? mem[819] :
                        (N24)? mem[953] : 1'b0;
  assign r_data_o[14] = (N17)? mem[14] :
                        (N19)? mem[148] :
                        (N21)? mem[282] :
                        (N23)? mem[416] :
                        (N18)? mem[550] :
                        (N20)? mem[684] :
                        (N22)? mem[818] :
                        (N24)? mem[952] : 1'b0;
  assign r_data_o[13] = (N17)? mem[13] :
                        (N19)? mem[147] :
                        (N21)? mem[281] :
                        (N23)? mem[415] :
                        (N18)? mem[549] :
                        (N20)? mem[683] :
                        (N22)? mem[817] :
                        (N24)? mem[951] : 1'b0;
  assign r_data_o[12] = (N17)? mem[12] :
                        (N19)? mem[146] :
                        (N21)? mem[280] :
                        (N23)? mem[414] :
                        (N18)? mem[548] :
                        (N20)? mem[682] :
                        (N22)? mem[816] :
                        (N24)? mem[950] : 1'b0;
  assign r_data_o[11] = (N17)? mem[11] :
                        (N19)? mem[145] :
                        (N21)? mem[279] :
                        (N23)? mem[413] :
                        (N18)? mem[547] :
                        (N20)? mem[681] :
                        (N22)? mem[815] :
                        (N24)? mem[949] : 1'b0;
  assign r_data_o[10] = (N17)? mem[10] :
                        (N19)? mem[144] :
                        (N21)? mem[278] :
                        (N23)? mem[412] :
                        (N18)? mem[546] :
                        (N20)? mem[680] :
                        (N22)? mem[814] :
                        (N24)? mem[948] : 1'b0;
  assign r_data_o[9] = (N17)? mem[9] :
                       (N19)? mem[143] :
                       (N21)? mem[277] :
                       (N23)? mem[411] :
                       (N18)? mem[545] :
                       (N20)? mem[679] :
                       (N22)? mem[813] :
                       (N24)? mem[947] : 1'b0;
  assign r_data_o[8] = (N17)? mem[8] :
                       (N19)? mem[142] :
                       (N21)? mem[276] :
                       (N23)? mem[410] :
                       (N18)? mem[544] :
                       (N20)? mem[678] :
                       (N22)? mem[812] :
                       (N24)? mem[946] : 1'b0;
  assign r_data_o[7] = (N17)? mem[7] :
                       (N19)? mem[141] :
                       (N21)? mem[275] :
                       (N23)? mem[409] :
                       (N18)? mem[543] :
                       (N20)? mem[677] :
                       (N22)? mem[811] :
                       (N24)? mem[945] : 1'b0;
  assign r_data_o[6] = (N17)? mem[6] :
                       (N19)? mem[140] :
                       (N21)? mem[274] :
                       (N23)? mem[408] :
                       (N18)? mem[542] :
                       (N20)? mem[676] :
                       (N22)? mem[810] :
                       (N24)? mem[944] : 1'b0;
  assign r_data_o[5] = (N17)? mem[5] :
                       (N19)? mem[139] :
                       (N21)? mem[273] :
                       (N23)? mem[407] :
                       (N18)? mem[541] :
                       (N20)? mem[675] :
                       (N22)? mem[809] :
                       (N24)? mem[943] : 1'b0;
  assign r_data_o[4] = (N17)? mem[4] :
                       (N19)? mem[138] :
                       (N21)? mem[272] :
                       (N23)? mem[406] :
                       (N18)? mem[540] :
                       (N20)? mem[674] :
                       (N22)? mem[808] :
                       (N24)? mem[942] : 1'b0;
  assign r_data_o[3] = (N17)? mem[3] :
                       (N19)? mem[137] :
                       (N21)? mem[271] :
                       (N23)? mem[405] :
                       (N18)? mem[539] :
                       (N20)? mem[673] :
                       (N22)? mem[807] :
                       (N24)? mem[941] : 1'b0;
  assign r_data_o[2] = (N17)? mem[2] :
                       (N19)? mem[136] :
                       (N21)? mem[270] :
                       (N23)? mem[404] :
                       (N18)? mem[538] :
                       (N20)? mem[672] :
                       (N22)? mem[806] :
                       (N24)? mem[940] : 1'b0;
  assign r_data_o[1] = (N17)? mem[1] :
                       (N19)? mem[135] :
                       (N21)? mem[269] :
                       (N23)? mem[403] :
                       (N18)? mem[537] :
                       (N20)? mem[671] :
                       (N22)? mem[805] :
                       (N24)? mem[939] : 1'b0;
  assign r_data_o[0] = (N17)? mem[0] :
                       (N19)? mem[134] :
                       (N21)? mem[268] :
                       (N23)? mem[402] :
                       (N18)? mem[536] :
                       (N20)? mem[670] :
                       (N22)? mem[804] :
                       (N24)? mem[938] : 1'b0;
  assign N50 = w_addr_i[0] & w_addr_i[1];
  assign N33 = N50 & w_addr_i[2];
  assign N51 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N32 = N51 & w_addr_i[2];
  assign N52 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N31 = N52 & w_addr_i[2];
  assign N53 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign N30 = N53 & w_addr_i[2];
  assign N29 = N50 & N4;
  assign N4 = ~w_addr_i[2];
  assign N28 = N51 & N5;
  assign N5 = ~w_addr_i[2];
  assign N27 = N52 & N6;
  assign N6 = ~w_addr_i[2];
  assign N26 = N53 & N7;
  assign N7 = ~w_addr_i[2];
  assign { N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34 } = (N8)? { N33, N33, N32, N32, N31, N31, N30, N30, N29, N29, N28, N28, N27, N27, N26, N26 } :
                                                                                              (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N25;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N48) begin
      { mem[1071:973], mem[938:938] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N49) begin
      { mem[972:939] } <= { w_data_i[34:1] };
    end
    if(N46) begin
      { mem[937:839], mem[804:804] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N47) begin
      { mem[838:805] } <= { w_data_i[34:1] };
    end
    if(N44) begin
      { mem[803:705], mem[670:670] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N45) begin
      { mem[704:671] } <= { w_data_i[34:1] };
    end
    if(N42) begin
      { mem[669:571], mem[536:536] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N43) begin
      { mem[570:537] } <= { w_data_i[34:1] };
    end
    if(N40) begin
      { mem[535:437], mem[402:402] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N41) begin
      { mem[436:403] } <= { w_data_i[34:1] };
    end
    if(N38) begin
      { mem[401:303], mem[268:268] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N39) begin
      { mem[302:269] } <= { w_data_i[34:1] };
    end
    if(N36) begin
      { mem[267:169], mem[134:134] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N37) begin
      { mem[168:135] } <= { w_data_i[34:1] };
    end
    if(N34) begin
      { mem[133:35], mem[0:0] } <= { w_data_i[133:35], w_data_i[0:0] };
    end
    if(N35) begin
      { mem[34:1] } <= { w_data_i[34:1] };
    end
  end


endmodule