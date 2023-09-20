module bp_cce_dir_lru_extract_tag_sets_per_row_p2_row_width_p496_num_lce_p8_lce_assoc_p8_rows_per_set_p4_tag_width_p28
(
  row_i,
  row_v_i,
  row_num_i,
  lce_i,
  lru_way_i,
  lru_v_o,
  lru_cached_excl_o,
  lru_tag_o
);

  input [495:0] row_i;
  input [1:0] row_v_i;
  input [1:0] row_num_i;
  input [2:0] lce_i;
  input [2:0] lru_way_i;
  output [27:0] lru_tag_o;
  output lru_v_o;
  output lru_cached_excl_o;
  wire [27:0] lru_tag_o;
  wire lru_v_o,lru_cached_excl_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,
  N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,
  N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,
  N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,
  N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,
  N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,
  N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,
  N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,
  N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,
  N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,
  N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,
  N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,
  N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303;
  wire [2:0] lru_coh_state;
  assign N3 = (N2)? row_v_i[0] : 
              (N0)? row_v_i[1] : 1'b0;
  assign N0 = lce_i[0];
  assign N4 = lce_i[2:1] == row_num_i;
  assign N5 = (N2)? row_i[219] : 
              (N0)? row_i[467] : 1'b0;
  assign N6 = (N2)? row_i[218] : 
              (N0)? row_i[466] : 1'b0;
  assign N7 = (N2)? row_i[217] : 
              (N0)? row_i[465] : 1'b0;
  assign N8 = (N2)? row_i[188] : 
              (N0)? row_i[436] : 1'b0;
  assign N9 = (N2)? row_i[187] : 
              (N0)? row_i[435] : 1'b0;
  assign N10 = (N2)? row_i[186] : 
               (N0)? row_i[434] : 1'b0;
  assign N11 = (N2)? row_i[157] : 
               (N0)? row_i[405] : 1'b0;
  assign N12 = (N2)? row_i[156] : 
               (N0)? row_i[404] : 1'b0;
  assign N13 = (N2)? row_i[155] : 
               (N0)? row_i[403] : 1'b0;
  assign N14 = (N2)? row_i[126] : 
               (N0)? row_i[374] : 1'b0;
  assign N15 = (N2)? row_i[125] : 
               (N0)? row_i[373] : 1'b0;
  assign N16 = (N2)? row_i[124] : 
               (N0)? row_i[372] : 1'b0;
  assign N17 = (N2)? row_i[95] : 
               (N0)? row_i[343] : 1'b0;
  assign N18 = (N2)? row_i[94] : 
               (N0)? row_i[342] : 1'b0;
  assign N19 = (N2)? row_i[93] : 
               (N0)? row_i[341] : 1'b0;
  assign N20 = (N2)? row_i[64] : 
               (N0)? row_i[312] : 1'b0;
  assign N21 = (N2)? row_i[63] : 
               (N0)? row_i[311] : 1'b0;
  assign N22 = (N2)? row_i[62] : 
               (N0)? row_i[310] : 1'b0;
  assign N23 = (N2)? row_i[33] : 
               (N0)? row_i[281] : 1'b0;
  assign N24 = (N2)? row_i[32] : 
               (N0)? row_i[280] : 1'b0;
  assign N25 = (N2)? row_i[31] : 
               (N0)? row_i[279] : 1'b0;
  assign N26 = (N2)? row_i[2] : 
               (N0)? row_i[250] : 1'b0;
  assign N27 = (N2)? row_i[1] : 
               (N0)? row_i[249] : 1'b0;
  assign N28 = (N2)? row_i[0] : 
               (N0)? row_i[248] : 1'b0;
  assign N29 = (N265)? N26 : 
               (N267)? N23 : 
               (N269)? N20 : 
               (N271)? N17 : 
               (N266)? N14 : 
               (N268)? N11 : 
               (N270)? N8 : 
               (N272)? N5 : 1'b0;
  assign N30 = (N265)? N27 : 
               (N267)? N24 : 
               (N269)? N21 : 
               (N271)? N18 : 
               (N266)? N15 : 
               (N268)? N12 : 
               (N270)? N9 : 
               (N272)? N6 : 1'b0;
  assign N31 = (N265)? N28 : 
               (N267)? N25 : 
               (N269)? N22 : 
               (N271)? N19 : 
               (N266)? N16 : 
               (N268)? N13 : 
               (N270)? N10 : 
               (N272)? N7 : 1'b0;
  assign N34 = (N2)? row_i[247] : 
               (N0)? row_i[495] : 1'b0;
  assign N35 = (N2)? row_i[246] : 
               (N0)? row_i[494] : 1'b0;
  assign N36 = (N2)? row_i[245] : 
               (N0)? row_i[493] : 1'b0;
  assign N37 = (N2)? row_i[244] : 
               (N0)? row_i[492] : 1'b0;
  assign N38 = (N2)? row_i[243] : 
               (N0)? row_i[491] : 1'b0;
  assign N39 = (N2)? row_i[242] : 
               (N0)? row_i[490] : 1'b0;
  assign N40 = (N2)? row_i[241] : 
               (N0)? row_i[489] : 1'b0;
  assign N41 = (N2)? row_i[240] : 
               (N0)? row_i[488] : 1'b0;
  assign N42 = (N2)? row_i[239] : 
               (N0)? row_i[487] : 1'b0;
  assign N43 = (N2)? row_i[238] : 
               (N0)? row_i[486] : 1'b0;
  assign N44 = (N2)? row_i[237] : 
               (N0)? row_i[485] : 1'b0;
  assign N45 = (N2)? row_i[236] : 
               (N0)? row_i[484] : 1'b0;
  assign N46 = (N2)? row_i[235] : 
               (N0)? row_i[483] : 1'b0;
  assign N47 = (N2)? row_i[234] : 
               (N0)? row_i[482] : 1'b0;
  assign N48 = (N2)? row_i[233] : 
               (N0)? row_i[481] : 1'b0;
  assign N49 = (N2)? row_i[232] : 
               (N0)? row_i[480] : 1'b0;
  assign N50 = (N2)? row_i[231] : 
               (N0)? row_i[479] : 1'b0;
  assign N51 = (N2)? row_i[230] : 
               (N0)? row_i[478] : 1'b0;
  assign N52 = (N2)? row_i[229] : 
               (N0)? row_i[477] : 1'b0;
  assign N53 = (N2)? row_i[228] : 
               (N0)? row_i[476] : 1'b0;
  assign N54 = (N2)? row_i[227] : 
               (N0)? row_i[475] : 1'b0;
  assign N55 = (N2)? row_i[226] : 
               (N0)? row_i[474] : 1'b0;
  assign N56 = (N2)? row_i[225] : 
               (N0)? row_i[473] : 1'b0;
  assign N57 = (N2)? row_i[224] : 
               (N0)? row_i[472] : 1'b0;
  assign N58 = (N2)? row_i[223] : 
               (N0)? row_i[471] : 1'b0;
  assign N59 = (N2)? row_i[222] : 
               (N0)? row_i[470] : 1'b0;
  assign N60 = (N2)? row_i[221] : 
               (N0)? row_i[469] : 1'b0;
  assign N61 = (N2)? row_i[220] : 
               (N0)? row_i[468] : 1'b0;
  assign N62 = (N2)? row_i[216] : 
               (N0)? row_i[464] : 1'b0;
  assign N63 = (N2)? row_i[215] : 
               (N0)? row_i[463] : 1'b0;
  assign N64 = (N2)? row_i[214] : 
               (N0)? row_i[462] : 1'b0;
  assign N65 = (N2)? row_i[213] : 
               (N0)? row_i[461] : 1'b0;
  assign N66 = (N2)? row_i[212] : 
               (N0)? row_i[460] : 1'b0;
  assign N67 = (N2)? row_i[211] : 
               (N0)? row_i[459] : 1'b0;
  assign N68 = (N2)? row_i[210] : 
               (N0)? row_i[458] : 1'b0;
  assign N69 = (N2)? row_i[209] : 
               (N0)? row_i[457] : 1'b0;
  assign N70 = (N2)? row_i[208] : 
               (N0)? row_i[456] : 1'b0;
  assign N71 = (N2)? row_i[207] : 
               (N0)? row_i[455] : 1'b0;
  assign N72 = (N2)? row_i[206] : 
               (N0)? row_i[454] : 1'b0;
  assign N73 = (N2)? row_i[205] : 
               (N0)? row_i[453] : 1'b0;
  assign N74 = (N2)? row_i[204] : 
               (N0)? row_i[452] : 1'b0;
  assign N75 = (N2)? row_i[203] : 
               (N0)? row_i[451] : 1'b0;
  assign N76 = (N2)? row_i[202] : 
               (N0)? row_i[450] : 1'b0;
  assign N77 = (N2)? row_i[201] : 
               (N0)? row_i[449] : 1'b0;
  assign N78 = (N2)? row_i[200] : 
               (N0)? row_i[448] : 1'b0;
  assign N79 = (N2)? row_i[199] : 
               (N0)? row_i[447] : 1'b0;
  assign N80 = (N2)? row_i[198] : 
               (N0)? row_i[446] : 1'b0;
  assign N81 = (N2)? row_i[197] : 
               (N0)? row_i[445] : 1'b0;
  assign N82 = (N2)? row_i[196] : 
               (N0)? row_i[444] : 1'b0;
  assign N83 = (N2)? row_i[195] : 
               (N0)? row_i[443] : 1'b0;
  assign N84 = (N2)? row_i[194] : 
               (N0)? row_i[442] : 1'b0;
  assign N85 = (N2)? row_i[193] : 
               (N0)? row_i[441] : 1'b0;
  assign N86 = (N2)? row_i[192] : 
               (N0)? row_i[440] : 1'b0;
  assign N87 = (N2)? row_i[191] : 
               (N0)? row_i[439] : 1'b0;
  assign N88 = (N2)? row_i[190] : 
               (N0)? row_i[438] : 1'b0;
  assign N89 = (N2)? row_i[189] : 
               (N0)? row_i[437] : 1'b0;
  assign N90 = (N2)? row_i[185] : 
               (N0)? row_i[433] : 1'b0;
  assign N91 = (N2)? row_i[184] : 
               (N0)? row_i[432] : 1'b0;
  assign N92 = (N2)? row_i[183] : 
               (N0)? row_i[431] : 1'b0;
  assign N93 = (N2)? row_i[182] : 
               (N0)? row_i[430] : 1'b0;
  assign N94 = (N2)? row_i[181] : 
               (N0)? row_i[429] : 1'b0;
  assign N95 = (N2)? row_i[180] : 
               (N0)? row_i[428] : 1'b0;
  assign N96 = (N2)? row_i[179] : 
               (N0)? row_i[427] : 1'b0;
  assign N97 = (N2)? row_i[178] : 
               (N0)? row_i[426] : 1'b0;
  assign N98 = (N2)? row_i[177] : 
               (N0)? row_i[425] : 1'b0;
  assign N99 = (N2)? row_i[176] : 
               (N0)? row_i[424] : 1'b0;
  assign N100 = (N2)? row_i[175] : 
                (N0)? row_i[423] : 1'b0;
  assign N101 = (N2)? row_i[174] : 
                (N0)? row_i[422] : 1'b0;
  assign N102 = (N2)? row_i[173] : 
                (N0)? row_i[421] : 1'b0;
  assign N103 = (N2)? row_i[172] : 
                (N0)? row_i[420] : 1'b0;
  assign N104 = (N2)? row_i[171] : 
                (N0)? row_i[419] : 1'b0;
  assign N105 = (N2)? row_i[170] : 
                (N0)? row_i[418] : 1'b0;
  assign N106 = (N2)? row_i[169] : 
                (N0)? row_i[417] : 1'b0;
  assign N107 = (N2)? row_i[168] : 
                (N0)? row_i[416] : 1'b0;
  assign N108 = (N2)? row_i[167] : 
                (N0)? row_i[415] : 1'b0;
  assign N109 = (N2)? row_i[166] : 
                (N0)? row_i[414] : 1'b0;
  assign N110 = (N2)? row_i[165] : 
                (N0)? row_i[413] : 1'b0;
  assign N111 = (N2)? row_i[164] : 
                (N0)? row_i[412] : 1'b0;
  assign N112 = (N2)? row_i[163] : 
                (N0)? row_i[411] : 1'b0;
  assign N113 = (N2)? row_i[162] : 
                (N0)? row_i[410] : 1'b0;
  assign N114 = (N2)? row_i[161] : 
                (N0)? row_i[409] : 1'b0;
  assign N115 = (N2)? row_i[160] : 
                (N0)? row_i[408] : 1'b0;
  assign N116 = (N2)? row_i[159] : 
                (N0)? row_i[407] : 1'b0;
  assign N117 = (N2)? row_i[158] : 
                (N0)? row_i[406] : 1'b0;
  assign N118 = (N2)? row_i[154] : 
                (N0)? row_i[402] : 1'b0;
  assign N119 = (N2)? row_i[153] : 
                (N0)? row_i[401] : 1'b0;
  assign N120 = (N2)? row_i[152] : 
                (N0)? row_i[400] : 1'b0;
  assign N121 = (N2)? row_i[151] : 
                (N0)? row_i[399] : 1'b0;
  assign N122 = (N2)? row_i[150] : 
                (N0)? row_i[398] : 1'b0;
  assign N123 = (N2)? row_i[149] : 
                (N0)? row_i[397] : 1'b0;
  assign N124 = (N2)? row_i[148] : 
                (N0)? row_i[396] : 1'b0;
  assign N125 = (N2)? row_i[147] : 
                (N0)? row_i[395] : 1'b0;
  assign N126 = (N2)? row_i[146] : 
                (N0)? row_i[394] : 1'b0;
  assign N127 = (N2)? row_i[145] : 
                (N0)? row_i[393] : 1'b0;
  assign N128 = (N2)? row_i[144] : 
                (N0)? row_i[392] : 1'b0;
  assign N129 = (N2)? row_i[143] : 
                (N0)? row_i[391] : 1'b0;
  assign N130 = (N2)? row_i[142] : 
                (N0)? row_i[390] : 1'b0;
  assign N131 = (N2)? row_i[141] : 
                (N0)? row_i[389] : 1'b0;
  assign N132 = (N2)? row_i[140] : 
                (N0)? row_i[388] : 1'b0;
  assign N133 = (N2)? row_i[139] : 
                (N0)? row_i[387] : 1'b0;
  assign N134 = (N2)? row_i[138] : 
                (N0)? row_i[386] : 1'b0;
  assign N135 = (N2)? row_i[137] : 
                (N0)? row_i[385] : 1'b0;
  assign N136 = (N2)? row_i[136] : 
                (N0)? row_i[384] : 1'b0;
  assign N137 = (N2)? row_i[135] : 
                (N0)? row_i[383] : 1'b0;
  assign N138 = (N2)? row_i[134] : 
                (N0)? row_i[382] : 1'b0;
  assign N139 = (N2)? row_i[133] : 
                (N0)? row_i[381] : 1'b0;
  assign N140 = (N2)? row_i[132] : 
                (N0)? row_i[380] : 1'b0;
  assign N141 = (N2)? row_i[131] : 
                (N0)? row_i[379] : 1'b0;
  assign N142 = (N2)? row_i[130] : 
                (N0)? row_i[378] : 1'b0;
  assign N143 = (N2)? row_i[129] : 
                (N0)? row_i[377] : 1'b0;
  assign N144 = (N2)? row_i[128] : 
                (N0)? row_i[376] : 1'b0;
  assign N145 = (N2)? row_i[127] : 
                (N0)? row_i[375] : 1'b0;
  assign N146 = (N2)? row_i[123] : 
                (N0)? row_i[371] : 1'b0;
  assign N147 = (N2)? row_i[122] : 
                (N0)? row_i[370] : 1'b0;
  assign N148 = (N2)? row_i[121] : 
                (N0)? row_i[369] : 1'b0;
  assign N149 = (N2)? row_i[120] : 
                (N0)? row_i[368] : 1'b0;
  assign N150 = (N2)? row_i[119] : 
                (N0)? row_i[367] : 1'b0;
  assign N151 = (N2)? row_i[118] : 
                (N0)? row_i[366] : 1'b0;
  assign N152 = (N2)? row_i[117] : 
                (N0)? row_i[365] : 1'b0;
  assign N153 = (N2)? row_i[116] : 
                (N0)? row_i[364] : 1'b0;
  assign N154 = (N2)? row_i[115] : 
                (N0)? row_i[363] : 1'b0;
  assign N155 = (N2)? row_i[114] : 
                (N0)? row_i[362] : 1'b0;
  assign N156 = (N2)? row_i[113] : 
                (N0)? row_i[361] : 1'b0;
  assign N157 = (N2)? row_i[112] : 
                (N0)? row_i[360] : 1'b0;
  assign N158 = (N2)? row_i[111] : 
                (N0)? row_i[359] : 1'b0;
  assign N159 = (N2)? row_i[110] : 
                (N0)? row_i[358] : 1'b0;
  assign N160 = (N2)? row_i[109] : 
                (N0)? row_i[357] : 1'b0;
  assign N161 = (N2)? row_i[108] : 
                (N0)? row_i[356] : 1'b0;
  assign N162 = (N2)? row_i[107] : 
                (N0)? row_i[355] : 1'b0;
  assign N163 = (N2)? row_i[106] : 
                (N0)? row_i[354] : 1'b0;
  assign N164 = (N2)? row_i[105] : 
                (N0)? row_i[353] : 1'b0;
  assign N165 = (N2)? row_i[104] : 
                (N0)? row_i[352] : 1'b0;
  assign N166 = (N2)? row_i[103] : 
                (N0)? row_i[351] : 1'b0;
  assign N167 = (N2)? row_i[102] : 
                (N0)? row_i[350] : 1'b0;
  assign N168 = (N2)? row_i[101] : 
                (N0)? row_i[349] : 1'b0;
  assign N169 = (N2)? row_i[100] : 
                (N0)? row_i[348] : 1'b0;
  assign N170 = (N2)? row_i[99] : 
                (N0)? row_i[347] : 1'b0;
  assign N171 = (N2)? row_i[98] : 
                (N0)? row_i[346] : 1'b0;
  assign N172 = (N2)? row_i[97] : 
                (N0)? row_i[345] : 1'b0;
  assign N173 = (N2)? row_i[96] : 
                (N0)? row_i[344] : 1'b0;
  assign N174 = (N2)? row_i[92] : 
                (N0)? row_i[340] : 1'b0;
  assign N175 = (N2)? row_i[91] : 
                (N0)? row_i[339] : 1'b0;
  assign N176 = (N2)? row_i[90] : 
                (N0)? row_i[338] : 1'b0;
  assign N177 = (N2)? row_i[89] : 
                (N0)? row_i[337] : 1'b0;
  assign N178 = (N2)? row_i[88] : 
                (N0)? row_i[336] : 1'b0;
  assign N179 = (N2)? row_i[87] : 
                (N0)? row_i[335] : 1'b0;
  assign N180 = (N2)? row_i[86] : 
                (N0)? row_i[334] : 1'b0;
  assign N181 = (N2)? row_i[85] : 
                (N0)? row_i[333] : 1'b0;
  assign N182 = (N2)? row_i[84] : 
                (N0)? row_i[332] : 1'b0;
  assign N183 = (N2)? row_i[83] : 
                (N0)? row_i[331] : 1'b0;
  assign N184 = (N2)? row_i[82] : 
                (N0)? row_i[330] : 1'b0;
  assign N185 = (N2)? row_i[81] : 
                (N0)? row_i[329] : 1'b0;
  assign N186 = (N2)? row_i[80] : 
                (N0)? row_i[328] : 1'b0;
  assign N187 = (N2)? row_i[79] : 
                (N0)? row_i[327] : 1'b0;
  assign N188 = (N2)? row_i[78] : 
                (N0)? row_i[326] : 1'b0;
  assign N189 = (N2)? row_i[77] : 
                (N0)? row_i[325] : 1'b0;
  assign N190 = (N2)? row_i[76] : 
                (N0)? row_i[324] : 1'b0;
  assign N191 = (N2)? row_i[75] : 
                (N0)? row_i[323] : 1'b0;
  assign N192 = (N2)? row_i[74] : 
                (N0)? row_i[322] : 1'b0;
  assign N193 = (N2)? row_i[73] : 
                (N0)? row_i[321] : 1'b0;
  assign N194 = (N2)? row_i[72] : 
                (N0)? row_i[320] : 1'b0;
  assign N195 = (N2)? row_i[71] : 
                (N0)? row_i[319] : 1'b0;
  assign N196 = (N2)? row_i[70] : 
                (N0)? row_i[318] : 1'b0;
  assign N197 = (N2)? row_i[69] : 
                (N0)? row_i[317] : 1'b0;
  assign N198 = (N2)? row_i[68] : 
                (N0)? row_i[316] : 1'b0;
  assign N199 = (N2)? row_i[67] : 
                (N0)? row_i[315] : 1'b0;
  assign N200 = (N2)? row_i[66] : 
                (N0)? row_i[314] : 1'b0;
  assign N201 = (N2)? row_i[65] : 
                (N0)? row_i[313] : 1'b0;
  assign N202 = (N2)? row_i[61] : 
                (N0)? row_i[309] : 1'b0;
  assign N203 = (N2)? row_i[60] : 
                (N0)? row_i[308] : 1'b0;
  assign N204 = (N2)? row_i[59] : 
                (N0)? row_i[307] : 1'b0;
  assign N205 = (N2)? row_i[58] : 
                (N0)? row_i[306] : 1'b0;
  assign N206 = (N2)? row_i[57] : 
                (N0)? row_i[305] : 1'b0;
  assign N207 = (N2)? row_i[56] : 
                (N0)? row_i[304] : 1'b0;
  assign N208 = (N2)? row_i[55] : 
                (N0)? row_i[303] : 1'b0;
  assign N209 = (N2)? row_i[54] : 
                (N0)? row_i[302] : 1'b0;
  assign N210 = (N2)? row_i[53] : 
                (N0)? row_i[301] : 1'b0;
  assign N211 = (N2)? row_i[52] : 
                (N0)? row_i[300] : 1'b0;
  assign N212 = (N2)? row_i[51] : 
                (N0)? row_i[299] : 1'b0;
  assign N213 = (N2)? row_i[50] : 
                (N0)? row_i[298] : 1'b0;
  assign N214 = (N2)? row_i[49] : 
                (N0)? row_i[297] : 1'b0;
  assign N215 = (N2)? row_i[48] : 
                (N0)? row_i[296] : 1'b0;
  assign N216 = (N2)? row_i[47] : 
                (N0)? row_i[295] : 1'b0;
  assign N217 = (N2)? row_i[46] : 
                (N0)? row_i[294] : 1'b0;
  assign N218 = (N2)? row_i[45] : 
                (N0)? row_i[293] : 1'b0;
  assign N219 = (N2)? row_i[44] : 
                (N0)? row_i[292] : 1'b0;
  assign N220 = (N2)? row_i[43] : 
                (N0)? row_i[291] : 1'b0;
  assign N221 = (N2)? row_i[42] : 
                (N0)? row_i[290] : 1'b0;
  assign N222 = (N2)? row_i[41] : 
                (N0)? row_i[289] : 1'b0;
  assign N223 = (N2)? row_i[40] : 
                (N0)? row_i[288] : 1'b0;
  assign N224 = (N2)? row_i[39] : 
                (N0)? row_i[287] : 1'b0;
  assign N225 = (N2)? row_i[38] : 
                (N0)? row_i[286] : 1'b0;
  assign N226 = (N2)? row_i[37] : 
                (N0)? row_i[285] : 1'b0;
  assign N227 = (N2)? row_i[36] : 
                (N0)? row_i[284] : 1'b0;
  assign N228 = (N2)? row_i[35] : 
                (N0)? row_i[283] : 1'b0;
  assign N229 = (N2)? row_i[34] : 
                (N0)? row_i[282] : 1'b0;
  assign N230 = (N2)? row_i[30] : 
                (N0)? row_i[278] : 1'b0;
  assign N231 = (N2)? row_i[29] : 
                (N0)? row_i[277] : 1'b0;
  assign N232 = (N2)? row_i[28] : 
                (N0)? row_i[276] : 1'b0;
  assign N233 = (N2)? row_i[27] : 
                (N0)? row_i[275] : 1'b0;
  assign N234 = (N2)? row_i[26] : 
                (N0)? row_i[274] : 1'b0;
  assign N235 = (N2)? row_i[25] : 
                (N0)? row_i[273] : 1'b0;
  assign N236 = (N2)? row_i[24] : 
                (N0)? row_i[272] : 1'b0;
  assign N237 = (N2)? row_i[23] : 
                (N0)? row_i[271] : 1'b0;
  assign N238 = (N2)? row_i[22] : 
                (N0)? row_i[270] : 1'b0;
  assign N239 = (N2)? row_i[21] : 
                (N0)? row_i[269] : 1'b0;
  assign N240 = (N2)? row_i[20] : 
                (N0)? row_i[268] : 1'b0;
  assign N241 = (N2)? row_i[19] : 
                (N0)? row_i[267] : 1'b0;
  assign N242 = (N2)? row_i[18] : 
                (N0)? row_i[266] : 1'b0;
  assign N243 = (N2)? row_i[17] : 
                (N0)? row_i[265] : 1'b0;
  assign N244 = (N2)? row_i[16] : 
                (N0)? row_i[264] : 1'b0;
  assign N245 = (N2)? row_i[15] : 
                (N0)? row_i[263] : 1'b0;
  assign N246 = (N2)? row_i[14] : 
                (N0)? row_i[262] : 1'b0;
  assign N247 = (N2)? row_i[13] : 
                (N0)? row_i[261] : 1'b0;
  assign N248 = (N2)? row_i[12] : 
                (N0)? row_i[260] : 1'b0;
  assign N249 = (N2)? row_i[11] : 
                (N0)? row_i[259] : 1'b0;
  assign N250 = (N2)? row_i[10] : 
                (N0)? row_i[258] : 1'b0;
  assign N251 = (N2)? row_i[9] : 
                (N0)? row_i[257] : 1'b0;
  assign N252 = (N2)? row_i[8] : 
                (N0)? row_i[256] : 1'b0;
  assign N253 = (N2)? row_i[7] : 
                (N0)? row_i[255] : 1'b0;
  assign N254 = (N2)? row_i[6] : 
                (N0)? row_i[254] : 1'b0;
  assign N255 = (N2)? row_i[5] : 
                (N0)? row_i[253] : 1'b0;
  assign N256 = (N2)? row_i[4] : 
                (N0)? row_i[252] : 1'b0;
  assign N257 = (N2)? row_i[3] : 
                (N0)? row_i[251] : 1'b0;
  assign N273 = (N265)? N230 : 
                (N267)? N202 : 
                (N269)? N174 : 
                (N271)? N146 : 
                (N266)? N118 : 
                (N268)? N90 : 
                (N270)? N62 : 
                (N272)? N34 : 1'b0;
  assign N274 = (N265)? N231 : 
                (N267)? N203 : 
                (N269)? N175 : 
                (N271)? N147 : 
                (N266)? N119 : 
                (N268)? N91 : 
                (N270)? N63 : 
                (N272)? N35 : 1'b0;
  assign N275 = (N265)? N232 : 
                (N267)? N204 : 
                (N269)? N176 : 
                (N271)? N148 : 
                (N266)? N120 : 
                (N268)? N92 : 
                (N270)? N64 : 
                (N272)? N36 : 1'b0;
  assign N276 = (N265)? N233 : 
                (N267)? N205 : 
                (N269)? N177 : 
                (N271)? N149 : 
                (N266)? N121 : 
                (N268)? N93 : 
                (N270)? N65 : 
                (N272)? N37 : 1'b0;
  assign N277 = (N265)? N234 : 
                (N267)? N206 : 
                (N269)? N178 : 
                (N271)? N150 : 
                (N266)? N122 : 
                (N268)? N94 : 
                (N270)? N66 : 
                (N272)? N38 : 1'b0;
  assign N278 = (N265)? N235 : 
                (N267)? N207 : 
                (N269)? N179 : 
                (N271)? N151 : 
                (N266)? N123 : 
                (N268)? N95 : 
                (N270)? N67 : 
                (N272)? N39 : 1'b0;
  assign N279 = (N265)? N236 : 
                (N267)? N208 : 
                (N269)? N180 : 
                (N271)? N152 : 
                (N266)? N124 : 
                (N268)? N96 : 
                (N270)? N68 : 
                (N272)? N40 : 1'b0;
  assign N280 = (N265)? N237 : 
                (N267)? N209 : 
                (N269)? N181 : 
                (N271)? N153 : 
                (N266)? N125 : 
                (N268)? N97 : 
                (N270)? N69 : 
                (N272)? N41 : 1'b0;
  assign N281 = (N265)? N238 : 
                (N267)? N210 : 
                (N269)? N182 : 
                (N271)? N154 : 
                (N266)? N126 : 
                (N268)? N98 : 
                (N270)? N70 : 
                (N272)? N42 : 1'b0;
  assign N282 = (N265)? N239 : 
                (N267)? N211 : 
                (N269)? N183 : 
                (N271)? N155 : 
                (N266)? N127 : 
                (N268)? N99 : 
                (N270)? N71 : 
                (N272)? N43 : 1'b0;
  assign N283 = (N265)? N240 : 
                (N267)? N212 : 
                (N269)? N184 : 
                (N271)? N156 : 
                (N266)? N128 : 
                (N268)? N100 : 
                (N270)? N72 : 
                (N272)? N44 : 1'b0;
  assign N284 = (N265)? N241 : 
                (N267)? N213 : 
                (N269)? N185 : 
                (N271)? N157 : 
                (N266)? N129 : 
                (N268)? N101 : 
                (N270)? N73 : 
                (N272)? N45 : 1'b0;
  assign N285 = (N265)? N242 : 
                (N267)? N214 : 
                (N269)? N186 : 
                (N271)? N158 : 
                (N266)? N130 : 
                (N268)? N102 : 
                (N270)? N74 : 
                (N272)? N46 : 1'b0;
  assign N286 = (N265)? N243 : 
                (N267)? N215 : 
                (N269)? N187 : 
                (N271)? N159 : 
                (N266)? N131 : 
                (N268)? N103 : 
                (N270)? N75 : 
                (N272)? N47 : 1'b0;
  assign N287 = (N265)? N244 : 
                (N267)? N216 : 
                (N269)? N188 : 
                (N271)? N160 : 
                (N266)? N132 : 
                (N268)? N104 : 
                (N270)? N76 : 
                (N272)? N48 : 1'b0;
  assign N288 = (N265)? N245 : 
                (N267)? N217 : 
                (N269)? N189 : 
                (N271)? N161 : 
                (N266)? N133 : 
                (N268)? N105 : 
                (N270)? N77 : 
                (N272)? N49 : 1'b0;
  assign N289 = (N265)? N246 : 
                (N267)? N218 : 
                (N269)? N190 : 
                (N271)? N162 : 
                (N266)? N134 : 
                (N268)? N106 : 
                (N270)? N78 : 
                (N272)? N50 : 1'b0;
  assign N290 = (N265)? N247 : 
                (N267)? N219 : 
                (N269)? N191 : 
                (N271)? N163 : 
                (N266)? N135 : 
                (N268)? N107 : 
                (N270)? N79 : 
                (N272)? N51 : 1'b0;
  assign N291 = (N265)? N248 : 
                (N267)? N220 : 
                (N269)? N192 : 
                (N271)? N164 : 
                (N266)? N136 : 
                (N268)? N108 : 
                (N270)? N80 : 
                (N272)? N52 : 1'b0;
  assign N292 = (N265)? N249 : 
                (N267)? N221 : 
                (N269)? N193 : 
                (N271)? N165 : 
                (N266)? N137 : 
                (N268)? N109 : 
                (N270)? N81 : 
                (N272)? N53 : 1'b0;
  assign N293 = (N265)? N250 : 
                (N267)? N222 : 
                (N269)? N194 : 
                (N271)? N166 : 
                (N266)? N138 : 
                (N268)? N110 : 
                (N270)? N82 : 
                (N272)? N54 : 1'b0;
  assign N294 = (N265)? N251 : 
                (N267)? N223 : 
                (N269)? N195 : 
                (N271)? N167 : 
                (N266)? N139 : 
                (N268)? N111 : 
                (N270)? N83 : 
                (N272)? N55 : 1'b0;
  assign N295 = (N265)? N252 : 
                (N267)? N224 : 
                (N269)? N196 : 
                (N271)? N168 : 
                (N266)? N140 : 
                (N268)? N112 : 
                (N270)? N84 : 
                (N272)? N56 : 1'b0;
  assign N296 = (N265)? N253 : 
                (N267)? N225 : 
                (N269)? N197 : 
                (N271)? N169 : 
                (N266)? N141 : 
                (N268)? N113 : 
                (N270)? N85 : 
                (N272)? N57 : 1'b0;
  assign N297 = (N265)? N254 : 
                (N267)? N226 : 
                (N269)? N198 : 
                (N271)? N170 : 
                (N266)? N142 : 
                (N268)? N114 : 
                (N270)? N86 : 
                (N272)? N58 : 1'b0;
  assign N298 = (N265)? N255 : 
                (N267)? N227 : 
                (N269)? N199 : 
                (N271)? N171 : 
                (N266)? N143 : 
                (N268)? N115 : 
                (N270)? N87 : 
                (N272)? N59 : 1'b0;
  assign N299 = (N265)? N256 : 
                (N267)? N228 : 
                (N269)? N200 : 
                (N271)? N172 : 
                (N266)? N144 : 
                (N268)? N116 : 
                (N270)? N88 : 
                (N272)? N60 : 1'b0;
  assign N300 = (N265)? N257 : 
                (N267)? N229 : 
                (N269)? N201 : 
                (N271)? N173 : 
                (N266)? N145 : 
                (N268)? N117 : 
                (N270)? N89 : 
                (N272)? N61 : 1'b0;
  assign lru_coh_state = (N1)? { N29, N30, N31 } : 
                         (N33)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = N32;
  assign lru_tag_o = (N1)? { N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299, N300 } : 
                     (N33)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N2 = ~lce_i[0];
  assign lru_v_o = N3 & N4;
  assign lru_cached_excl_o = N302 & N303;
  assign N302 = N301 | lru_coh_state[0];
  assign N301 = lru_coh_state[2] | lru_coh_state[1];
  assign N303 = ~lru_coh_state[0];
  assign N32 = row_v_i[1] | row_v_i[0];
  assign N33 = ~N32;
  assign N258 = ~lru_way_i[0];
  assign N259 = ~lru_way_i[1];
  assign N260 = N258 & N259;
  assign N261 = N258 & lru_way_i[1];
  assign N262 = lru_way_i[0] & N259;
  assign N263 = lru_way_i[0] & lru_way_i[1];
  assign N264 = ~lru_way_i[2];
  assign N265 = N260 & N264;
  assign N266 = N260 & lru_way_i[2];
  assign N267 = N262 & N264;
  assign N268 = N262 & lru_way_i[2];
  assign N269 = N261 & N264;
  assign N270 = N261 & lru_way_i[2];
  assign N271 = N263 & N264;
  assign N272 = N263 & lru_way_i[2];

endmodule