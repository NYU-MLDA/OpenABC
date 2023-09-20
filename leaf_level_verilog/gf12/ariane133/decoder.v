module decoder
(
  pc_i,
  is_compressed_i,
  compressed_instr_i,
  is_illegal_i,
  instruction_i,
  branch_predict_i,
  ex_i,
  priv_lvl_i,
  debug_mode_i,
  fs_i,
  frm_i,
  tvm_i,
  tw_i,
  tsr_i,
  instruction_o,
  is_control_flow_instr_o
);

  input [63:0] pc_i;
  input [15:0] compressed_instr_i;
  input [31:0] instruction_i;
  input [67:0] branch_predict_i;
  input [128:0] ex_i;
  input [1:0] priv_lvl_i;
  input [1:0] fs_i;
  input [2:0] frm_i;
  output [361:0] instruction_o;
  input is_compressed_i;
  input is_illegal_i;
  input debug_mode_i;
  input tvm_i;
  input tw_i;
  input tsr_i;
  output is_control_flow_instr_o;
  wire [361:0] instruction_o;
  wire is_control_flow_instr_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,
  N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,is_compressed_i,N124,N125,
  N126,N127,N128,illegal_instr,ecall,ebreak,N129,N130,N131,N132,N133,N134,N135,
  N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,
  N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,
  N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,
  N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,
  N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,
  N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,
  N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,
  N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,
  N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,
  N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,
  N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,
  N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,
  N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,
  N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,N358,N359,
  N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,N374,N375,
  N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,N390,N391,
  N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,N406,N407,
  N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,N422,N423,
  N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N435,N436,N437,N438,N439,
  N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,N454,N455,
  N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,N470,N471,
  N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,N485,N486,N487,
  N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,N501,N502,N503,
  N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,N514,N515,N516,N517,N518,N519,
  N520,N521,N522,N523,N524,N525,N526,N527,N528,N529,N530,N531,N532,N533,N534,N535,
  N536,N537,N538,N539,N540,N541,N542,N543,N544,N545,N546,N547,N548,N549,N550,N551,
  N552,N553,N554,N555,N556,N557,N558,N559,N560,N561,N562,N563,N564,N565,N566,N567,
  N568,N569,N570,N571,N572,N573,N574,N575,N576,N577,N578,N579,N580,N581,N582,N583,
  N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,N594,N595,N596,N597,N598,N599,
  N600,N601,N602,N603,N604,N605,N606,N607,N608,N609,N610,N611,N612,N613,N614,N615,
  N616,N617,N618,N619,N620,N621,N622,N623,N624,N625,N626,N627,N628,N629,N630,N631,
  N632,N633,N634,N635,N636,N637,N638,N639,N640,N641,N642,N643,N644,N645,N646,N647,
  N648,N649,N650,N651,N652,N653,N654,N655,N656,N657,N658,N659,N660,N661,N662,N663,
  N664,N665,N666,N667,N668,N669,N670,N671,N672,N673,N674,N675,N676,N677,N678,N679,
  N680,N681,N682,N683,N684,N685,N686,N687,N688,N689,N690,N691,N692,N693,N694,N695,
  N696,N697,N698,N699,N700,N701,N702,N703,N704,N705,N706,N707,N708,N709,N710,N711,
  N712,N713,N714,N715,N716,N717,N718,N719,N720,N721,N722,N723,N724,N725,N726,N727,
  N728,N729,N730,N731,N732,N733,N734,N735,N736,N737,N738,N739,N740,N741,N742,N743,
  N744,N745,N746,N747,N748,N749,N750,N751,N752,N753,N754,N755,N756,N757,N758,N759,
  N760,N761,N762,N763,N764,N765,N766,N767,N768,N769,N770,N771,N772,N773,N774,N775,
  N776,N777,N778,N779,N780,N781,N782,N783,N784,N785,N786,N787,N788,N789,N790,N791,
  N792,N793,N794,N795,N796,N797,N798,N799,N800,N801,N802,N803,N804,N805,N806,N807,
  N808,N809,N810,N811,N812,N813,N814,N815,N816,N817,N818,N819,N820,N821,N822,N823,
  N824,N825,N826,N827,N828,N829,N830,N831,N832,N833,N834,N835,N836,N837,N838,N839,
  N840,N841,N842,N843,N844,N845,N846,N847,N848,N849,N850,N851,N852,N853,N854,N855,
  N856,N857,N858,N859,N860,N861,N862,N863,N864,N865,N866,N867,N868,N869,N870,N871,
  N872,N873,N874,N875,N876,N877,N878,N879,N880,N881,N882,N883,N884,N885,N886,N887,
  N888,N889,N890,N891,N892,N893,N894,N895,N896,N897,N898,N899,N900,N901,N902,N903,
  N904,N905,N906,N907,N908,N909,N910,N911,N912,N913,N914,N915,N916,N917,N918,N919,
  N920,N921,N922,N923,N924,N925,N926,N927,N928,N929,N930,N931,N932,N933,N934,N935,
  N936,N937,N938,N939,N940,N941,N942,N943,N944,N945,N946,N947,N948,N949,N950,N951,
  N952,N953,N954,N955,N956,N957,N958,N959,N960,N961,N962,N963,N964,N965,N966,N967,
  N968,N969,N970;
  wire [2:0] imm_select;
  assign instruction_o[271] = 1'b0;
  assign instruction_o[277] = 1'b0;
  assign instruction_o[283] = 1'b0;
  assign instruction_o[294] = 1'b0;
  assign instruction_o[295] = 1'b0;
  assign instruction_o[296] = 1'b0;
  assign instruction_o[297] = 1'b0;
  assign instruction_o[361] = pc_i[63];
  assign instruction_o[360] = pc_i[62];
  assign instruction_o[359] = pc_i[61];
  assign instruction_o[358] = pc_i[60];
  assign instruction_o[357] = pc_i[59];
  assign instruction_o[356] = pc_i[58];
  assign instruction_o[355] = pc_i[57];
  assign instruction_o[354] = pc_i[56];
  assign instruction_o[353] = pc_i[55];
  assign instruction_o[352] = pc_i[54];
  assign instruction_o[351] = pc_i[53];
  assign instruction_o[350] = pc_i[52];
  assign instruction_o[349] = pc_i[51];
  assign instruction_o[348] = pc_i[50];
  assign instruction_o[347] = pc_i[49];
  assign instruction_o[346] = pc_i[48];
  assign instruction_o[345] = pc_i[47];
  assign instruction_o[344] = pc_i[46];
  assign instruction_o[343] = pc_i[45];
  assign instruction_o[342] = pc_i[44];
  assign instruction_o[341] = pc_i[43];
  assign instruction_o[340] = pc_i[42];
  assign instruction_o[339] = pc_i[41];
  assign instruction_o[338] = pc_i[40];
  assign instruction_o[337] = pc_i[39];
  assign instruction_o[336] = pc_i[38];
  assign instruction_o[335] = pc_i[37];
  assign instruction_o[334] = pc_i[36];
  assign instruction_o[333] = pc_i[35];
  assign instruction_o[332] = pc_i[34];
  assign instruction_o[331] = pc_i[33];
  assign instruction_o[330] = pc_i[32];
  assign instruction_o[329] = pc_i[31];
  assign instruction_o[328] = pc_i[30];
  assign instruction_o[327] = pc_i[29];
  assign instruction_o[326] = pc_i[28];
  assign instruction_o[325] = pc_i[27];
  assign instruction_o[324] = pc_i[26];
  assign instruction_o[323] = pc_i[25];
  assign instruction_o[322] = pc_i[24];
  assign instruction_o[321] = pc_i[23];
  assign instruction_o[320] = pc_i[22];
  assign instruction_o[319] = pc_i[21];
  assign instruction_o[318] = pc_i[20];
  assign instruction_o[317] = pc_i[19];
  assign instruction_o[316] = pc_i[18];
  assign instruction_o[315] = pc_i[17];
  assign instruction_o[314] = pc_i[16];
  assign instruction_o[313] = pc_i[15];
  assign instruction_o[312] = pc_i[14];
  assign instruction_o[311] = pc_i[13];
  assign instruction_o[310] = pc_i[12];
  assign instruction_o[309] = pc_i[11];
  assign instruction_o[308] = pc_i[10];
  assign instruction_o[307] = pc_i[9];
  assign instruction_o[306] = pc_i[8];
  assign instruction_o[305] = pc_i[7];
  assign instruction_o[304] = pc_i[6];
  assign instruction_o[303] = pc_i[5];
  assign instruction_o[302] = pc_i[4];
  assign instruction_o[301] = pc_i[3];
  assign instruction_o[300] = pc_i[2];
  assign instruction_o[299] = pc_i[1];
  assign instruction_o[298] = pc_i[0];
  assign instruction_o[68] = branch_predict_i[67];
  assign instruction_o[67] = branch_predict_i[66];
  assign instruction_o[66] = branch_predict_i[65];
  assign instruction_o[65] = branch_predict_i[64];
  assign instruction_o[64] = branch_predict_i[63];
  assign instruction_o[63] = branch_predict_i[62];
  assign instruction_o[62] = branch_predict_i[61];
  assign instruction_o[61] = branch_predict_i[60];
  assign instruction_o[60] = branch_predict_i[59];
  assign instruction_o[59] = branch_predict_i[58];
  assign instruction_o[58] = branch_predict_i[57];
  assign instruction_o[57] = branch_predict_i[56];
  assign instruction_o[56] = branch_predict_i[55];
  assign instruction_o[55] = branch_predict_i[54];
  assign instruction_o[54] = branch_predict_i[53];
  assign instruction_o[53] = branch_predict_i[52];
  assign instruction_o[52] = branch_predict_i[51];
  assign instruction_o[51] = branch_predict_i[50];
  assign instruction_o[50] = branch_predict_i[49];
  assign instruction_o[49] = branch_predict_i[48];
  assign instruction_o[48] = branch_predict_i[47];
  assign instruction_o[47] = branch_predict_i[46];
  assign instruction_o[46] = branch_predict_i[45];
  assign instruction_o[45] = branch_predict_i[44];
  assign instruction_o[44] = branch_predict_i[43];
  assign instruction_o[43] = branch_predict_i[42];
  assign instruction_o[42] = branch_predict_i[41];
  assign instruction_o[41] = branch_predict_i[40];
  assign instruction_o[40] = branch_predict_i[39];
  assign instruction_o[39] = branch_predict_i[38];
  assign instruction_o[38] = branch_predict_i[37];
  assign instruction_o[37] = branch_predict_i[36];
  assign instruction_o[36] = branch_predict_i[35];
  assign instruction_o[35] = branch_predict_i[34];
  assign instruction_o[34] = branch_predict_i[33];
  assign instruction_o[33] = branch_predict_i[32];
  assign instruction_o[32] = branch_predict_i[31];
  assign instruction_o[31] = branch_predict_i[30];
  assign instruction_o[30] = branch_predict_i[29];
  assign instruction_o[29] = branch_predict_i[28];
  assign instruction_o[28] = branch_predict_i[27];
  assign instruction_o[27] = branch_predict_i[26];
  assign instruction_o[26] = branch_predict_i[25];
  assign instruction_o[25] = branch_predict_i[24];
  assign instruction_o[24] = branch_predict_i[23];
  assign instruction_o[23] = branch_predict_i[22];
  assign instruction_o[22] = branch_predict_i[21];
  assign instruction_o[21] = branch_predict_i[20];
  assign instruction_o[20] = branch_predict_i[19];
  assign instruction_o[19] = branch_predict_i[18];
  assign instruction_o[18] = branch_predict_i[17];
  assign instruction_o[17] = branch_predict_i[16];
  assign instruction_o[16] = branch_predict_i[15];
  assign instruction_o[15] = branch_predict_i[14];
  assign instruction_o[14] = branch_predict_i[13];
  assign instruction_o[13] = branch_predict_i[12];
  assign instruction_o[12] = branch_predict_i[11];
  assign instruction_o[11] = branch_predict_i[10];
  assign instruction_o[10] = branch_predict_i[9];
  assign instruction_o[9] = branch_predict_i[8];
  assign instruction_o[8] = branch_predict_i[7];
  assign instruction_o[7] = branch_predict_i[6];
  assign instruction_o[6] = branch_predict_i[5];
  assign instruction_o[5] = branch_predict_i[4];
  assign instruction_o[4] = branch_predict_i[3];
  assign instruction_o[3] = branch_predict_i[2];
  assign instruction_o[2] = branch_predict_i[1];
  assign instruction_o[1] = branch_predict_i[0];
  assign instruction_o[0] = is_compressed_i;
  assign N129 = instruction_i[1] & instruction_i[0];
  assign N131 = N159 | N160;
  assign N132 = N161 | instruction_i[3];
  assign N133 = N131 | N132;
  assign N134 = N133 | instruction_i[2];
  assign N136 = instruction_i[6] | instruction_i[5];
  assign N137 = instruction_i[4] | N162;
  assign N138 = N136 | N137;
  assign N139 = N138 | N163;
  assign N141 = instruction_i[6] | N160;
  assign N142 = N141 | N132;
  assign N143 = N142 | instruction_i[2];
  assign N145 = N161 | N162;
  assign N146 = N141 | N145;
  assign N147 = N146 | instruction_i[2];
  assign N149 = N136 | N132;
  assign N150 = N149 | instruction_i[2];
  assign N152 = N136 | N145;
  assign N153 = N152 | instruction_i[2];
  assign N155 = instruction_i[4] | instruction_i[3];
  assign N156 = N141 | N155;
  assign N157 = N156 | instruction_i[2];
  assign N164 = N159 & N160;
  assign N165 = N161 & N162;
  assign N166 = N164 & N165;
  assign N167 = N166 & N163;
  assign N168 = N156 | N163;
  assign N170 = N136 | N155;
  assign N171 = N170 | N163;
  assign N173 = N159 | instruction_i[5];
  assign N174 = N173 | N155;
  assign N175 = N174 | instruction_i[2];
  assign N176 = N174 | N163;
  assign N177 = N173 | N137;
  assign N178 = N177 | instruction_i[2];
  assign N179 = N177 | N163;
  assign N181 = N173 | N132;
  assign N182 = N181 | instruction_i[2];
  assign N184 = N141 | N137;
  assign N185 = N184 | N163;
  assign N187 = N131 | N155;
  assign N188 = N187 | instruction_i[2];
  assign N190 = N187 | N163;
  assign N192 = N131 | N137;
  assign N193 = N192 | N163;
  assign N195 = N149 | N163;
  assign N197 = N142 | N163;
  assign N199 = instruction_i[4] & instruction_i[3];
  assign N200 = N199 & instruction_i[2];
  assign N201 = instruction_i[6] & instruction_i[4];
  assign N202 = N201 & instruction_i[2];
  assign N203 = N201 & instruction_i[3];
  assign N204 = instruction_i[5] & N161;
  assign N205 = instruction_i[3] & N163;
  assign N206 = N204 & N205;
  assign N207 = N159 & N161;
  assign N208 = N207 & N205;
  assign N210 = N934 & N923;
  assign N211 = N210 & N924;
  assign N212 = instruction_i[14] | instruction_i[13];
  assign N213 = N212 | N924;
  assign N215 = N559 | instruction_i[12];
  assign N217 = N559 | N924;
  assign N219 = N934 | instruction_i[13];
  assign N220 = N219 | N924;
  assign N222 = N934 | N923;
  assign N223 = N222 | instruction_i[12];
  assign N225 = instruction_i[14] & instruction_i[13];
  assign N226 = N225 & instruction_i[12];
  assign N227 = N219 | instruction_i[12];
  assign N231 = N940 & N942;
  assign N232 = N873 & N249;
  assign N233 = N230 & N262;
  assign N234 = N250 & N263;
  assign N235 = N231 & N232;
  assign N236 = N233 & N234;
  assign N237 = N499 & N235;
  assign N238 = N237 & N236;
  assign N239 = N254 | N267;
  assign N240 = N503 | N268;
  assign N241 = N240 | N239;
  assign N243 = N270 | N258;
  assign N245 = N501 | N251;
  assign N246 = N245 | N268;
  assign N247 = N246 | N258;
  assign N251 = N937 | N928;
  assign N252 = N940 | instruction_i[26];
  assign N253 = N873 | N249;
  assign N254 = instruction_i[23] | instruction_i[22];
  assign N255 = N250 | instruction_i[20];
  assign N256 = N516 | N251;
  assign N257 = N252 | N253;
  assign N258 = N254 | N255;
  assign N259 = N256 | N257;
  assign N260 = N259 | N258;
  assign N264 = instruction_i[27] | instruction_i[26];
  assign N265 = instruction_i[25] | instruction_i[24];
  assign N266 = instruction_i[23] | N262;
  assign N267 = instruction_i[21] | N263;
  assign N268 = N264 | N265;
  assign N269 = N266 | N267;
  assign N270 = N507 | N268;
  assign N271 = N270 | N269;
  assign N331 = N397 | N559;
  assign N332 = N331 | instruction_i[12];
  assign N334 = N331 | N924;
  assign N336 = N401 | instruction_i[12];
  assign N338 = N397 | N222;
  assign N339 = N338 | instruction_i[12];
  assign N341 = N338 | N924;
  assign N343 = N408 | N924;
  assign N345 = N407 | N559;
  assign N346 = N345 | instruction_i[12];
  assign N348 = N345 | N924;
  assign N350 = instruction_i[30] & instruction_i[13];
  assign N390 = N898 & N873;
  assign N391 = N390 & N210;
  assign N392 = N391 & N924;
  assign N393 = N898 | instruction_i[25];
  assign N394 = N393 | N212;
  assign N395 = N394 | instruction_i[12];
  assign N397 = instruction_i[30] | instruction_i[25];
  assign N398 = N397 | N212;
  assign N399 = N398 | N924;
  assign N401 = N397 | N219;
  assign N402 = N401 | N924;
  assign N404 = N393 | N219;
  assign N405 = N404 | N924;
  assign N407 = instruction_i[30] | N873;
  assign N408 = N407 | N212;
  assign N409 = N408 | instruction_i[12];
  assign N411 = N407 | N219;
  assign N412 = N411 | instruction_i[12];
  assign N414 = N411 | N924;
  assign N416 = N407 | N222;
  assign N417 = N416 | instruction_i[12];
  assign N419 = N416 | N924;
  assign N421 = instruction_i[25] & N934;
  assign N422 = N421 & instruction_i[12];
  assign N423 = N873 & instruction_i[13];
  assign N424 = N423 & instruction_i[12];
  assign N425 = N873 & instruction_i[14];
  assign N426 = N425 & N924;
  assign N427 = N934 & instruction_i[13];
  assign N428 = N427 & N924;
  assign N453 = N934 & N924;
  assign N454 = instruction_i[14] | N924;
  assign N456 = instruction_i[14] & instruction_i[12];
  assign N457 = N934 | instruction_i[12];
  assign N476 = N923 & N924;
  assign N477 = instruction_i[13] | N924;
  assign N479 = N923 | instruction_i[12];
  assign N481 = instruction_i[13] & instruction_i[12];
  assign N497 = N886 & N898;
  assign N498 = N937 & N928;
  assign N499 = N497 & N498;
  assign N500 = N499 & N940;
  assign N501 = instruction_i[31] | instruction_i[30];
  assign N502 = instruction_i[29] | instruction_i[28];
  assign N503 = N501 | N502;
  assign N504 = N503 | N940;
  assign N506 = instruction_i[29] | N928;
  assign N507 = N501 | N506;
  assign N508 = N507 | instruction_i[27];
  assign N510 = N507 | N940;
  assign N512 = N937 | instruction_i[28];
  assign N513 = N501 | N512;
  assign N514 = N513 | instruction_i[27];
  assign N516 = instruction_i[31] | N898;
  assign N517 = N516 | N502;
  assign N518 = N517 | instruction_i[27];
  assign N520 = N516 | N512;
  assign N521 = N520 | instruction_i[27];
  assign N523 = N886 | instruction_i[30];
  assign N524 = N523 | N502;
  assign N525 = N524 | instruction_i[27];
  assign N527 = N523 | N512;
  assign N528 = N527 | instruction_i[27];
  assign N530 = N886 | N898;
  assign N531 = N530 | N502;
  assign N532 = N531 | instruction_i[27];
  assign N534 = N530 | N512;
  assign N535 = N534 | instruction_i[27];
  assign N559 = instruction_i[14] | N923;
  assign N637 = imm_select[2] | imm_select[1];
  assign N638 = N637 | N636;
  assign N641 = imm_select[2] | N640;
  assign N642 = N641 | imm_select[0];
  assign N644 = imm_select[2] | N640;
  assign N645 = N644 | N636;
  assign N648 = N647 | imm_select[1];
  assign N649 = N648 | imm_select[0];
  assign N651 = N647 | imm_select[1];
  assign N652 = N651 | N636;
  assign N654 = N647 | N640;
  assign N655 = N654 | imm_select[0];
  assign N657 = imm_select[2] & imm_select[1];
  assign N658 = N657 & imm_select[0];
  assign N659 = N647 & N640;
  assign N660 = N659 & N636;
  assign N733 = priv_lvl_i[1] & priv_lvl_i[0];
  assign N734 = priv_lvl_i[1] | N911;
  assign N736 = N962 & N911;
  assign N737 = N962 | priv_lvl_i[0];
  assign N873 = ~instruction_i[25];
  assign N874 = instruction_i[30] | instruction_i[31];
  assign N875 = instruction_i[29] | N874;
  assign N876 = instruction_i[28] | N875;
  assign N877 = instruction_i[27] | N876;
  assign N878 = instruction_i[26] | N877;
  assign N879 = N873 | N878;
  assign N880 = ~N879;
  assign N881 = instruction_i[18] | instruction_i[19];
  assign N882 = instruction_i[17] | N881;
  assign N883 = instruction_i[16] | N882;
  assign N884 = instruction_i[15] | N883;
  assign N885 = ~N884;
  assign N886 = ~instruction_i[31];
  assign N887 = instruction_i[30] | N886;
  assign N888 = ~N887;
  assign N889 = instruction_i[13] | instruction_i[14];
  assign N890 = instruction_i[12] | N889;
  assign N891 = instruction_i[10] | instruction_i[11];
  assign N892 = instruction_i[9] | N891;
  assign N893 = instruction_i[8] | N892;
  assign N894 = instruction_i[7] | N893;
  assign N895 = ~N878;
  assign N896 = priv_lvl_i[0] | priv_lvl_i[1];
  assign N897 = ~N896;
  assign N898 = ~instruction_i[30];
  assign N899 = N898 | instruction_i[31];
  assign N900 = instruction_i[29] | N899;
  assign N901 = instruction_i[28] | N900;
  assign N902 = instruction_i[27] | N901;
  assign N903 = instruction_i[26] | N902;
  assign N904 = ~N903;
  assign N905 = instruction_i[25] | N878;
  assign N906 = ~N905;
  assign N907 = instruction_i[23] | instruction_i[24];
  assign N908 = instruction_i[22] | N907;
  assign N909 = instruction_i[21] | N908;
  assign N910 = instruction_i[20] | N909;
  assign N911 = ~priv_lvl_i[0];
  assign N912 = N911 | priv_lvl_i[1];
  assign N913 = ~N912;
  assign N914 = instruction_i[24] | N905;
  assign N915 = instruction_i[23] | N914;
  assign N916 = instruction_i[22] | N915;
  assign N917 = instruction_i[21] | N916;
  assign N918 = instruction_i[20] | N917;
  assign N919 = instruction_i[25] | N903;
  assign N920 = ~N919;
  assign N921 = instruction_i[12] | N925;
  assign N922 = ~N921;
  assign N923 = ~instruction_i[13];
  assign N924 = ~instruction_i[12];
  assign N925 = N923 | instruction_i[14];
  assign N926 = N924 | N925;
  assign N927 = ~N926;
  assign N928 = ~instruction_i[28];
  assign N929 = N928 | N875;
  assign N930 = instruction_i[27] | N929;
  assign N931 = instruction_i[26] | N930;
  assign N932 = N873 | N931;
  assign N933 = ~N932;
  assign N279 = (N0)? 1'b1 : 
                (N1)? N229 : 1'b0;
  assign N0 = N897;
  assign N1 = N896;
  assign N282 = (N2)? 1'b1 : 
                (N281)? N279 : 1'b0;
  assign N2 = N280;
  assign N283 = (N2)? 1'b0 : 
                (N281)? N896 : 1'b0;
  assign N285 = (N3)? N284 : 
                (N4)? 1'b0 : 1'b0;
  assign N3 = N962;
  assign N4 = priv_lvl_i[1];
  assign N287 = (N5)? 1'b1 : 
                (N6)? N229 : 1'b0;
  assign N5 = N285;
  assign N6 = N286;
  assign N291 = (N7)? 1'b1 : 
                (N290)? N229 : 1'b0;
  assign N7 = N289;
  assign N292 = ~N289;
  assign N293 = (N0)? 1'b1 : 
                (N1)? N291 : 1'b0;
  assign N294 = (N0)? 1'b0 : 
                (N1)? N292 : 1'b0;
  assign N297 = (N8)? N295 : 
                (N296)? 1'b0 : 1'b0;
  assign N8 = priv_lvl_i[0];
  assign N301 = (N9)? 1'b1 : 
                (N300)? N298 : 1'b0;
  assign N9 = N299;
  assign N302 = (N10)? N301 : 
                (N11)? N229 : 1'b0;
  assign N10 = N933;
  assign N11 = N932;
  assign N303 = (N12)? 1'b1 : 
                (N13)? 1'b0 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 
                (N16)? 1'b0 : 
                (N17)? 1'b0 : 
                (N278)? 1'b0 : 1'b0;
  assign N12 = N238;
  assign N13 = N242;
  assign N14 = N244;
  assign N15 = N248;
  assign N16 = N261;
  assign N17 = N272;
  assign N304 = (N12)? 1'b0 : 
                (N13)? 1'b1 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 
                (N16)? 1'b0 : 
                (N17)? 1'b0 : 
                (N278)? 1'b0 : 1'b0;
  assign { N309, N308, N307, N306, N305 } = (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N14)? { N283, 1'b0, N283, N283, N283 } : 
                                            (N15)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                            (N16)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                            (N17)? { N294, N294, 1'b0, N294, 1'b0 } : 
                                            (N278)? { N933, N933, N933, 1'b0, N933 } : 1'b0;
  assign N310 = (N12)? N229 : 
                (N13)? N229 : 
                (N14)? N282 : 
                (N15)? N287 : 
                (N16)? N288 : 
                (N17)? N293 : 
                (N278)? N302 : 1'b0;
  assign N311 = (N18)? N310 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N21)? 1'b0 : 
                (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b1 : 1'b0;
  assign N18 = N211;
  assign N19 = N214;
  assign N20 = N216;
  assign N21 = N218;
  assign N22 = N221;
  assign N23 = N224;
  assign N24 = N226;
  assign N25 = N228;
  assign { N318, N317, N316, N315, N314, N313, N312 } = (N18)? { 1'b0, N309, N308, N307, N306, N305, 1'b0 } : 
                                                        (N19)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                                        (N20)? { N884, N885, N885, N885, N885, N885, 1'b0 } : 
                                                        (N21)? { N884, N885, N885, N885, N885, 1'b1, 1'b0 } : 
                                                        (N22)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                                        (N23)? { N884, N885, N885, N885, N885, N885, 1'b1 } : 
                                                        (N24)? { N884, N885, N885, N885, N885, 1'b1, 1'b1 } : 
                                                        (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N319 = (N18)? N303 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N21)? 1'b0 : 
                (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 1'b0;
  assign N320 = (N18)? N304 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N21)? 1'b0 : 
                (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 1'b0;
  assign N321 = (N18)? 1'b0 : 
                (N19)? 1'b1 : 
                (N20)? 1'b1 : 
                (N21)? 1'b1 : 
                (N22)? 1'b1 : 
                (N23)? 1'b1 : 
                (N24)? 1'b1 : 
                (N25)? 1'b0 : 1'b0;
  assign N323 = (N26)? 1'b0 : 
                (N27)? N918 : 1'b0;
  assign N26 = N924;
  assign N27 = instruction_i[12];
  assign { N325, N324 } = (N28)? { instruction_i[12:12], N924 } : 
                          (N322)? { 1'b0, 1'b0 } : 1'b0;
  assign N28 = N210;
  assign N326 = (N28)? N323 : 
                (N322)? 1'b1 : 1'b0;
  assign N329 = (N29)? 1'b1 : 
                (N328)? N326 : 1'b0;
  assign N29 = N327;
  assign { N357, N356, N355, N354, N353, N352 } = (N30)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                  (N31)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                  (N32)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                                  (N33)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                  (N34)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                                  (N35)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                  (N36)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                                  (N37)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                                  (N38)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                                  (N39)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                                  (N40)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                  (N41)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                                  (N42)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                                  (N43)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                  (N44)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                                  (N45)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                                  (N46)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                                  (N47)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                                  (N48)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N30 = N392;
  assign N31 = N396;
  assign N32 = N333;
  assign N33 = N335;
  assign N34 = N337;
  assign N35 = N340;
  assign N36 = N342;
  assign N37 = N400;
  assign N38 = N403;
  assign N39 = N406;
  assign N40 = N410;
  assign N41 = N344;
  assign N42 = N347;
  assign N43 = N349;
  assign N44 = N413;
  assign N45 = N415;
  assign N46 = N418;
  assign N47 = N420;
  assign N48 = N351;
  assign N358 = (N30)? 1'b0 : 
                (N31)? 1'b0 : 
                (N32)? 1'b0 : 
                (N33)? 1'b0 : 
                (N34)? 1'b0 : 
                (N35)? 1'b0 : 
                (N36)? 1'b0 : 
                (N37)? 1'b0 : 
                (N38)? 1'b0 : 
                (N39)? 1'b0 : 
                (N40)? 1'b0 : 
                (N41)? 1'b0 : 
                (N42)? 1'b0 : 
                (N43)? 1'b0 : 
                (N44)? 1'b0 : 
                (N45)? 1'b0 : 
                (N46)? 1'b0 : 
                (N47)? 1'b0 : 
                (N48)? 1'b1 : 1'b0;
  assign { N364, N363, N362, N361, N360, N359 } = (N49)? { N357, N356, N355, N354, N353, N352 } : 
                                                  (N330)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N49 = N127;
  assign N365 = (N49)? N358 : 
                (N330)? 1'b1 : 1'b0;
  assign N366 = (N50)? 1'b1 : 
                (N51)? N365 : 1'b0;
  assign N50 = N888;
  assign N51 = N887;
  assign { N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367 } = (N50)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                        (N51)? { N880, N879, N364, N363, N362, N361, N360, N359, instruction_i[19:15], instruction_i[24:20], instruction_i[11:7] } : 1'b0;
  assign { N434, N433, N432, N431, N430 } = (N30)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                            (N31)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                            (N37)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                            (N38)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                            (N39)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                            (N40)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                            (N44)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                            (N45)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                            (N46)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                            (N47)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                            (N52)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N52 = N429;
  assign N435 = (N30)? 1'b0 : 
                (N31)? 1'b0 : 
                (N37)? 1'b0 : 
                (N38)? 1'b0 : 
                (N39)? 1'b0 : 
                (N40)? 1'b0 : 
                (N44)? 1'b0 : 
                (N45)? 1'b0 : 
                (N46)? 1'b0 : 
                (N47)? 1'b0 : 
                (N52)? 1'b1 : 1'b0;
  assign { N440, N439, N438, N437, N436 } = (N49)? { N434, N433, N432, N431, N430 } : 
                                            (N330)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N441 = (N49)? N435 : 
                (N330)? 1'b1 : 1'b0;
  assign N444 = (N53)? 1'b0 : 
                (N54)? 1'b1 : 
                (N443)? 1'b0 : 1'b0;
  assign N53 = N895;
  assign N54 = N904;
  assign N445 = (N53)? 1'b1 : 
                (N55)? 1'b0 : 
                (N56)? 1'b0 : 1'b0;
  assign N55 = N878;
  assign N56 = 1'b0;
  assign N446 = (N53)? 1'b0 : 
                (N54)? 1'b0 : 
                (N443)? 1'b1 : 1'b0;
  assign { N451, N450, N449, N448, N447 } = (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N20)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                            (N21)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                            (N25)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                            (N23)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                            (N24)? { 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                            (N19)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                            (N22)? { 1'b0, N445, N444, N444, N444 } : 1'b0;
  assign N452 = (N18)? 1'b0 : 
                (N20)? 1'b0 : 
                (N21)? 1'b0 : 
                (N25)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N19)? N878 : 
                (N22)? N446 : 1'b0;
  assign N461 = (N57)? 1'b1 : 
                (N58)? 1'b0 : 
                (N56)? 1'b0 : 1'b0;
  assign N57 = N906;
  assign N58 = N905;
  assign { N463, N462 } = (N57)? { 1'b1, 1'b0 } : 
                          (N59)? { 1'b1, 1'b1 } : 
                          (N460)? { 1'b0, 1'b0 } : 1'b0;
  assign N59 = N920;
  assign N464 = (N57)? 1'b0 : 
                (N59)? 1'b0 : 
                (N460)? 1'b1 : 1'b0;
  assign { N469, N465 } = (N60)? { 1'b0, 1'b1 } : 
                          (N61)? { 1'b1, 1'b1 } : 
                          (N62)? { N463, N461 } : 
                          (N63)? { 1'b0, 1'b0 } : 1'b0;
  assign N60 = N453;
  assign N61 = N455;
  assign N62 = N456;
  assign N63 = N458;
  assign N468 = (N62)? N462 : 
                (N467)? 1'b0 : 1'b0;
  assign N470 = (N60)? 1'b0 : 
                (N61)? N905 : 
                (N62)? N464 : 
                (N63)? 1'b1 : 1'b0;
  assign { N474, N473, N472, N471 } = (N64)? { N469, N468, N465, N455 } : 
                                      (N65)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N64 = N923;
  assign N65 = instruction_i[13];
  assign N475 = (N64)? N470 : 
                (N65)? 1'b1 : 1'b0;
  assign { N484, N483, N482 } = (N66)? { 1'b1, 1'b1, 1'b1 } : 
                                (N67)? { 1'b1, 1'b0, 1'b1 } : 
                                (N68)? { 1'b0, 1'b1, 1'b0 } : 
                                (N69)? { 1'b0, 1'b1, 1'b1 } : 1'b0;
  assign N66 = N476;
  assign N67 = N478;
  assign N68 = N480;
  assign N69 = N481;
  assign { N488, N487, N486, N485 } = (N70)? { N484, N480, N483, N482 } : 
                                      (N71)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N70 = N934;
  assign N71 = instruction_i[14];
  assign { N493, N492, N491, N490, N489 } = (N18)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                            (N19)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                            (N20)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                            (N25)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                            (N22)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                            (N23)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                            (N21)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                            (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N494 = (N18)? 1'b0 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N25)? 1'b0 : 
                (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N21)? 1'b0 : 
                (N24)? 1'b1 : 1'b0;
  assign { N542, N541, N540, N539, N538, N537 } = (N72)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                  (N73)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                  (N74)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                                  (N75)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                                  (N76)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                  (N77)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                                  (N78)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                  (N79)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                                  (N80)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                                  (N81)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                                  (N82)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                                  (N83)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N72 = N500;
  assign N73 = N505;
  assign N74 = N509;
  assign N75 = N511;
  assign N76 = N515;
  assign N77 = N519;
  assign N78 = N522;
  assign N79 = N526;
  assign N80 = N529;
  assign N81 = N533;
  assign N82 = N536;
  assign N83 = N128;
  assign N543 = (N72)? 1'b0 : 
                (N73)? 1'b0 : 
                (N74)? N910 : 
                (N75)? 1'b0 : 
                (N76)? 1'b0 : 
                (N77)? 1'b0 : 
                (N78)? 1'b0 : 
                (N79)? 1'b0 : 
                (N80)? 1'b0 : 
                (N81)? 1'b0 : 
                (N82)? 1'b0 : 
                (N83)? 1'b1 : 1'b0;
  assign { N550, N549, N548, N547, N546, N545, N544 } = (N72)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                                        (N73)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                                        (N74)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                                        (N75)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                        (N76)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                                        (N77)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                                        (N78)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                                        (N79)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                        (N80)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                                        (N81)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                        (N82)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                        (N83)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N557, N556, N555, N554, N553, N552, N551 } = (N84)? { 1'b0, N542, N541, N540, N539, N538, N537 } : 
                                                        (N85)? { N550, N549, N548, N547, N546, N545, N544 } : 
                                                        (N496)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N84 = N922;
  assign N85 = N927;
  assign N558 = (N84)? N543 : 
                (N85)? N543 : 
                (N496)? 1'b1 : 1'b0;
  assign { N564, N563, N562, N561 } = (N18)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                      (N19)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                      (N25)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                      (N22)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                      (N23)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                      (N24)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                      (N86)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N86 = N560;
  assign N565 = (N18)? 1'b1 : 
                (N19)? 1'b1 : 
                (N25)? 1'b1 : 
                (N22)? 1'b1 : 
                (N23)? 1'b1 : 
                (N24)? 1'b1 : 
                (N86)? 1'b0 : 1'b0;
  assign N566 = (N18)? 1'b0 : 
                (N19)? 1'b0 : 
                (N25)? 1'b0 : 
                (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N86)? 1'b1 : 1'b0;
  assign N568 = (N87)? N312 : 
                (N567)? 1'b0 : 1'b0;
  assign N87 = N135;
  assign { N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569 } = (N87)? { 1'b1, 1'b1, 1'b0, 1'b0, N318, N317, N316, N315, N314, N313, instruction_i[19:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N88)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, N210, N210, N325, N324, N324, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N89)? { N389, N388, N887, N387, 1'b0, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367 } : 
                                                                                                                                                                    (N90)? { N880, N879, 1'b1, N440, 1'b0, 1'b0, N439, N438, N437, N436, instruction_i[19:15], instruction_i[24:20], instruction_i[11:7] } : 
                                                                                                                                                                    (N91)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, N451, N450, N449, N448, N447, instruction_i[19:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N92)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, N474, N473, N472, N471, instruction_i[19:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N93)? { 1'b0, 1'b1, 1'b0, 1'b0, N934, 1'b0, N488, N487, N486, N485, instruction_i[19:15], instruction_i[24:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N94)? { 1'b0, 1'b0, 1'b1, 1'b0, N493, 1'b0, N492, N491, N490, N489, instruction_i[19:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N95)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N96)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N97)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N98)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N99)? { 1'b0, 1'b1, 1'b0, N557, N556, N555, N554, N553, N552, N551, instruction_i[19:15], instruction_i[24:20], instruction_i[11:7] } : 
                                                                                                                                                                    (N100)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, N564, N563, N563, N562, N561, instruction_i[19:15], instruction_i[24:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                    (N101)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, instruction_i[19:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N102)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N103)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N104)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[11:7] } : 
                                                                                                                                                                    (N105)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N88 = N140;
  assign N89 = N144;
  assign N90 = N148;
  assign N91 = N151;
  assign N92 = N154;
  assign N93 = N158;
  assign N94 = N167;
  assign N95 = N169;
  assign N96 = N172;
  assign N97 = N180;
  assign N98 = N183;
  assign N99 = N186;
  assign N100 = N189;
  assign N101 = N191;
  assign N102 = N194;
  assign N103 = N196;
  assign N104 = N198;
  assign N105 = N209;
  assign N594 = (N87)? N320 : 
                (N88)? 1'b0 : 
                (N89)? 1'b0 : 
                (N90)? 1'b0 : 
                (N91)? 1'b0 : 
                (N92)? 1'b0 : 
                (N93)? 1'b0 : 
                (N94)? 1'b0 : 
                (N95)? 1'b0 : 
                (N96)? 1'b0 : 
                (N97)? 1'b0 : 
                (N98)? 1'b0 : 
                (N99)? 1'b0 : 
                (N100)? 1'b0 : 
                (N101)? 1'b0 : 
                (N102)? 1'b0 : 
                (N103)? 1'b0 : 
                (N104)? 1'b0 : 
                (N105)? 1'b0 : 1'b0;
  assign { N597, N596, N595 } = (N87)? { 1'b0, 1'b0, N321 } : 
                                (N88)? { 1'b0, 1'b0, 1'b0 } : 
                                (N89)? { 1'b0, 1'b0, 1'b0 } : 
                                (N90)? { 1'b0, 1'b0, 1'b0 } : 
                                (N91)? { 1'b0, 1'b0, 1'b1 } : 
                                (N92)? { 1'b0, 1'b0, 1'b1 } : 
                                (N93)? { 1'b0, 1'b1, 1'b0 } : 
                                (N94)? { 1'b0, 1'b0, 1'b1 } : 
                                (N95)? { 1'b0, 1'b0, 1'b0 } : 
                                (N96)? { 1'b0, 1'b0, 1'b0 } : 
                                (N97)? { 1'b0, 1'b0, 1'b0 } : 
                                (N98)? { 1'b0, 1'b0, 1'b0 } : 
                                (N99)? { 1'b0, 1'b0, 1'b0 } : 
                                (N100)? { 1'b0, 1'b1, 1'b1 } : 
                                (N101)? { 1'b0, 1'b0, 1'b1 } : 
                                (N102)? { 1'b1, 1'b0, 1'b1 } : 
                                (N103)? { 1'b1, 1'b0, 1'b0 } : 
                                (N104)? { 1'b1, 1'b0, 1'b0 } : 
                                (N105)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N598 = (N87)? N311 : 
                (N88)? N329 : 
                (N89)? N366 : 
                (N90)? N441 : 
                (N91)? N452 : 
                (N92)? N475 : 
                (N93)? instruction_i[14] : 
                (N94)? N494 : 
                (N95)? 1'b1 : 
                (N96)? 1'b1 : 
                (N97)? 1'b1 : 
                (N98)? 1'b1 : 
                (N99)? N558 : 
                (N100)? N566 : 
                (N101)? N890 : 
                (N102)? 1'b0 : 
                (N103)? 1'b0 : 
                (N104)? 1'b0 : 
                (N105)? 1'b1 : 1'b0;
  assign N599 = (N87)? N319 : 
                (N88)? 1'b0 : 
                (N89)? 1'b0 : 
                (N90)? 1'b0 : 
                (N91)? 1'b0 : 
                (N92)? 1'b0 : 
                (N93)? 1'b0 : 
                (N94)? 1'b0 : 
                (N95)? 1'b0 : 
                (N96)? 1'b0 : 
                (N97)? 1'b0 : 
                (N98)? 1'b0 : 
                (N99)? 1'b0 : 
                (N100)? 1'b0 : 
                (N101)? 1'b0 : 
                (N102)? 1'b0 : 
                (N103)? 1'b0 : 
                (N104)? 1'b0 : 
                (N105)? 1'b0 : 1'b0;
  assign N600 = (N87)? 1'b0 : 
                (N88)? 1'b0 : 
                (N89)? 1'b0 : 
                (N90)? 1'b0 : 
                (N91)? 1'b0 : 
                (N92)? 1'b0 : 
                (N93)? 1'b0 : 
                (N94)? 1'b0 : 
                (N95)? 1'b0 : 
                (N96)? 1'b0 : 
                (N97)? 1'b0 : 
                (N98)? 1'b0 : 
                (N99)? 1'b0 : 
                (N100)? N565 : 
                (N101)? 1'b1 : 
                (N102)? 1'b1 : 
                (N103)? 1'b0 : 
                (N104)? 1'b0 : 
                (N105)? 1'b0 : 1'b0;
  assign N601 = (N106)? N599 : 
                (N130)? 1'b0 : 1'b0;
  assign N106 = N129;
  assign N602 = (N106)? N600 : 
                (N130)? 1'b0 : 1'b0;
  assign { N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603 } = (N106)? { N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N196 } : 
                                                                                                                                                                                (N130)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N630 = (N106)? N594 : 
                (N130)? 1'b0 : 1'b0;
  assign { N633, N632, N631 } = (N106)? { N597, N596, N595 } : 
                                (N130)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N634 = (N106)? N598 : 
                (N130)? 1'b1 : 1'b0;
  assign ecall = (N107)? N601 : 
                 (N108)? 1'b0 : 1'b0;
  assign N107 = N695;
  assign N108 = ex_i[0];
  assign is_control_flow_instr_o = (N107)? N602 : 
                                   (N108)? 1'b0 : 1'b0;
  assign { instruction_o[293:284], instruction_o[282:278], instruction_o[276:272], instruction_o[270:266], instruction_o[199:198] } = (N107)? { N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603 } : 
                                                                                                                                      (N108)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign ebreak = (N107)? N630 : 
                  (N108)? 1'b0 : 1'b0;
  assign imm_select = (N107)? { N633, N632, N631 } : 
                      (N108)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign illegal_instr = (N107)? N634 : 
                         (N108)? 1'b0 : 1'b0;
  assign { N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662 } = (N109)? { instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:20], 1'b1 } : 
                                                                                                                                                                                                                    (N110)? { instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:25], instruction_i[11:7], 1'b1 } : 
                                                                                                                                                                                                                    (N111)? { instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[7:7], instruction_i[30:25], instruction_i[11:8], 1'b0, 1'b1 } : 
                                                                                                                                                                                                                    (N112)? { instruction_i[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                                                                    (N113)? { instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[31:31], instruction_i[19:12], instruction_i[20:20], instruction_i[30:21], 1'b0, 1'b1 } : 
                                                                                                                                                                                                                    (N114)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instruction_i[31:27], 1'b0 } : 
                                                                                                                                                                                                                    (N115)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N109 = N639;
  assign N110 = N643;
  assign N111 = N646;
  assign N112 = N650;
  assign N113 = N653;
  assign N114 = N656;
  assign N115 = N661;
  assign { instruction_o[265:202], instruction_o[200:200] } = (N116)? { N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662 } : 
                                                              (N56)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N116 = N635;
  assign { N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697 } = (N117)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, compressed_instr_i } : 
                                                                                                                                                                                                              (N118)? instruction_i : 1'b0;
  assign N117 = is_compressed_i;
  assign N118 = N696;
  assign { N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739 } = (N119)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N120)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N121)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N122)? ex_i[128:65] : 1'b0;
  assign N119 = N733;
  assign N120 = N735;
  assign N121 = N736;
  assign N122 = N738;
  assign { N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, N804, N803 } = (N123)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                    (N869)? { N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                    (N872)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                    (N732)? { ex_i[128:65], ex_i[0:0] } : 1'b0;
  assign N123 = N729;
  assign { instruction_o[201:201], instruction_o[197:69] } = (N107)? { N803, N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, N804, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N803 } : 
                                                             (N108)? { ex_i[0:0], ex_i } : 1'b0;
  assign N124 = N935 & instruction_i[12];
  assign N935 = instruction_i[30] & N934;
  assign N934 = ~instruction_i[14];
  assign N125 = N936 & N924;
  assign N936 = instruction_i[30] & instruction_i[14];
  assign N126 = instruction_i[30] & instruction_i[25];
  assign N127 = N941 & N942;
  assign N941 = N939 & N940;
  assign N939 = N938 & N928;
  assign N938 = N886 & N937;
  assign N937 = ~instruction_i[29];
  assign N940 = ~instruction_i[27];
  assign N942 = ~instruction_i[26];
  assign N128 = N943 | N952;
  assign N943 = instruction_i[29] & instruction_i[28];
  assign N952 = N944 | N951;
  assign N944 = instruction_i[29] & instruction_i[27];
  assign N951 = N945 | N950;
  assign N945 = instruction_i[31] & instruction_i[27];
  assign N950 = N946 | N949;
  assign N946 = instruction_i[30] & instruction_i[27];
  assign N949 = N947 | N948;
  assign N947 = instruction_i[30] & instruction_i[28];
  assign N948 = instruction_i[31] & instruction_i[28];
  assign N130 = ~N129;
  assign N135 = ~N134;
  assign N140 = ~N139;
  assign N144 = ~N143;
  assign N148 = ~N147;
  assign N151 = ~N150;
  assign N154 = ~N153;
  assign N158 = ~N157;
  assign N159 = ~instruction_i[6];
  assign N160 = ~instruction_i[5];
  assign N161 = ~instruction_i[4];
  assign N162 = ~instruction_i[3];
  assign N163 = ~instruction_i[2];
  assign N169 = ~N168;
  assign N172 = ~N171;
  assign N180 = N957 | N958;
  assign N957 = N955 | N956;
  assign N955 = N953 | N954;
  assign N953 = ~N175;
  assign N954 = ~N176;
  assign N956 = ~N178;
  assign N958 = ~N179;
  assign N183 = ~N182;
  assign N186 = ~N185;
  assign N189 = ~N188;
  assign N191 = ~N190;
  assign N194 = ~N193;
  assign N196 = ~N195;
  assign N198 = ~N197;
  assign N209 = N200 | N961;
  assign N961 = N202 | N960;
  assign N960 = N203 | N959;
  assign N959 = N206 | N208;
  assign N214 = ~N213;
  assign N216 = ~N215;
  assign N218 = ~N217;
  assign N221 = ~N220;
  assign N224 = ~N223;
  assign N228 = ~N227;
  assign N229 = N884 | N894;
  assign N230 = ~instruction_i[23];
  assign N242 = ~N241;
  assign N244 = ~N243;
  assign N248 = ~N247;
  assign N249 = ~instruction_i[24];
  assign N250 = ~instruction_i[21];
  assign N261 = ~N260;
  assign N262 = ~instruction_i[22];
  assign N263 = ~instruction_i[20];
  assign N272 = ~N271;
  assign N273 = N242 | N238;
  assign N274 = N244 | N273;
  assign N275 = N248 | N274;
  assign N276 = N261 | N275;
  assign N277 = N272 | N276;
  assign N278 = ~N277;
  assign N280 = N913 & tsr_i;
  assign N281 = ~N280;
  assign N284 = N911 | priv_lvl_i[0];
  assign N286 = ~N285;
  assign N288 = ~debug_mode_i;
  assign N289 = N913 & tw_i;
  assign N290 = ~N289;
  assign N295 = priv_lvl_i[1] | N962;
  assign N962 = ~priv_lvl_i[1];
  assign N296 = ~priv_lvl_i[0];
  assign N298 = ~N297;
  assign N299 = N913 & tvm_i;
  assign N300 = ~N299;
  assign N322 = ~N210;
  assign N327 = N963 | N876;
  assign N963 = N884 | N894;
  assign N328 = ~N327;
  assign N330 = ~N127;
  assign N333 = ~N332;
  assign N335 = ~N334;
  assign N337 = ~N336;
  assign N340 = ~N339;
  assign N342 = ~N341;
  assign N344 = ~N343;
  assign N347 = ~N346;
  assign N349 = ~N348;
  assign N351 = N124 | N965;
  assign N965 = N350 | N964;
  assign N964 = N125 | N126;
  assign N396 = ~N395;
  assign N400 = ~N399;
  assign N403 = ~N402;
  assign N406 = ~N405;
  assign N410 = ~N409;
  assign N413 = ~N412;
  assign N415 = ~N414;
  assign N418 = ~N417;
  assign N420 = ~N419;
  assign N429 = N422 | N970;
  assign N970 = N424 | N969;
  assign N969 = N124 | N968;
  assign N968 = N125 | N967;
  assign N967 = N426 | N966;
  assign N966 = N428 | N126;
  assign N442 = N904 | N895;
  assign N443 = ~N442;
  assign N455 = ~N454;
  assign N458 = ~N457;
  assign N459 = N920 | N906;
  assign N460 = ~N459;
  assign N466 = ~N456;
  assign N467 = N466;
  assign N478 = ~N477;
  assign N480 = ~N479;
  assign N495 = N927 | N922;
  assign N496 = ~N495;
  assign N505 = ~N504;
  assign N509 = ~N508;
  assign N511 = ~N510;
  assign N515 = ~N514;
  assign N519 = ~N518;
  assign N522 = ~N521;
  assign N526 = ~N525;
  assign N529 = ~N528;
  assign N533 = ~N532;
  assign N536 = ~N535;
  assign N560 = ~N559;
  assign N567 = N134;
  assign N635 = ~1'b0;
  assign N636 = ~imm_select[0];
  assign N639 = ~N638;
  assign N640 = ~imm_select[1];
  assign N643 = ~N642;
  assign N646 = ~N645;
  assign N647 = ~imm_select[2];
  assign N650 = ~N649;
  assign N653 = ~N652;
  assign N656 = ~N655;
  assign N661 = N658 | N660;
  assign N695 = ~ex_i[0];
  assign N696 = ~is_compressed_i;
  assign N729 = illegal_instr | is_illegal_i;
  assign N730 = ecall | N729;
  assign N731 = ebreak | N730;
  assign N732 = ~N731;
  assign N735 = ~N734;
  assign N738 = ~N737;
  assign N868 = ~N729;
  assign N869 = ecall & N868;
  assign N870 = ~ecall;
  assign N871 = N868 & N870;
  assign N872 = ebreak & N871;

endmodule