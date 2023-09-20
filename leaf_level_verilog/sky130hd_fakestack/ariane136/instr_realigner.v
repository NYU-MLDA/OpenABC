module instr_realigner
(
  clk_i,
  rst_ni,
  flush_i,
  fetch_entry_i,
  fetch_entry_valid_i,
  fetch_ack_o,
  fetch_entry_o,
  fetch_entry_valid_o,
  fetch_ack_i
);

  input [166:0] fetch_entry_i;
  output [292:0] fetch_entry_o;
  input clk_i;
  input rst_ni;
  input flush_i;
  input fetch_entry_valid_i;
  input fetch_ack_i;
  output fetch_ack_o;
  output fetch_entry_valid_o;
  wire [292:0] fetch_entry_o;
  wire fetch_ack_o,fetch_entry_valid_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,
  N14,N15,N16,N17,kill_upper_16_bit,N18,N19,unaligned_n,compressed_n,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,
  N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,
  N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,
  N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,
  N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,
  N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,
  N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,
  N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,
  N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,
  N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,
  N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,
  N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,
  N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,
  N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,
  N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,
  N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,
  N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,
  N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,N358,
  N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,N374,
  N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,N390,
  N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,N406,
  N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,N422,
  N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N435,N436,N437,N438,
  N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,N454,
  N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,N470,
  N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,N485,N486,
  N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,N501,N502,
  N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,N514,N515,N516,N517,N518,
  N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,N529,N530,N531,N532,N533,N534,
  N535,N536,N537,N538,N539,N540,N541,N542,N543,N544,N545,N546,N547,N548,N549,N550,
  N551,N552,N553,N554,N555,N556,N557,N558,N559,N560,N561,N562,N563,N564,N565,N566,
  N567,N568,N569,N570,N571,N572,N573,N574,N575,N576,N577,N578,N579,N580,N581,N582,
  N583,N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,N594,N595,N596,N597,N598,
  N599,N600,N601,N602,N603,N604,N605,N606,N607,N608,N609,N610,N611,N612,N613,N614,
  N615,N616,N617,N618,N619,N620,N621,N622,N623,N624,N625,N626,N627,N628,N629,N630,
  N631,N632,N633,N634,N635,N636,N637,N638,N639,N640,N641,N642,N643,N644,N645,N646,
  N647,N648,N649,N650,N651,N652,N653,N654,N655,N656,N657,N658,N659,N660,N661,N662,
  N663,N664,N665,N666,N667,N668,N669,N670,N671,N672,N673,N674,N675,N676,N677,N678,
  N679,N680,N681,N682,N683,N684,N685,N686,N687,N688,N689,N690,N691,N692,N693,N694,
  N695,N696,N697,N698,N699,N700,N701,N702,N703,N704,N705,N706,N707,N708,N709,N710,
  N711,N712,N713,N714,N715,N716,N717,N718,N719,N720,N721,N722,N723,N724,N725,N726,
  N727,N728,N729,N730,N731,N732,N733,N734,N735,N736,N737,N738,N739,N740,N741,N742,
  N743,N744,N745,N746,N747,N748,N749,N750,N751,N752,N753,N754,N755,N756,N757,N758,
  N759,N760,N761,N762,N763,N764,N765,N766,N767,N768,N769,N770,N771,N772,N773,N774,
  N775,N776,N777,N778,N779,N780,N781,N782,N783,N784,N785,N786,N787,N788,N789,N790,
  N791,N792,N793,N794,N795,N796,N797,N798,N799,N800,N801,N802,N803,N804,N805,N806,
  N807,N808,N809,N810,N811,N812,N813,N814,N815,N816,N817,N818,N819,N820,N821,N822,
  N823,N824,N825,N826,N827,N828,N829,N830,N831,N832,N833,N834,N835,N836,N837,N838,
  N839,N840,N841,N842,N843,N844,N845,N846,N847,N848,N849,N850,N851,N852,N853,N854,
  N855,N856,N857,N858,N859,N860,N861,N862,N863,N864,N865,N866,N867,N868,N869,N870,
  N871,N872,N873,N874,N875,N876,N877,N878,N879,N880,N881,N882,N883,N884,N885,N886,
  N887,N888,N889,N890,N891,N892,N893,N894,N895,N896,N897,N898,N899,N900,N901,N902,
  N903,N904,N905,N906,N907,N908,N909,N910,N911,N912,N913,N914,N915,N916,N917,N918,
  N919,N920,N921,N922,N923,N924,N925,N926,N927,N928,N929,N930,N931,N932,N933,N934,
  N935,N936,N937,N938,N939,N940,N941,N942,N943,N944,N945,N946,N947,N948,N949,N950,
  N951,N952,N953,N954,N955,N956,N957,N958,N959,N960,N961,N962,N963,N964,N965,N966,
  N967,N968,N969,N970,N971,N972,N973,N974,N975,N976,N977,N978,N979,N980,N981,N982,
  N983,N984,N985,N986,N987,N988,N989,N990,N991,N992,N993,N994,N995,N996,N997,N998,
  N999,N1000,N1001,N1002,N1003,N1004,N1005,N1006,N1007,N1008,N1009,N1010,N1011,
  N1012,N1013,N1014,N1015,N1016,N1017,N1018,N1019,N1020,N1021,N1022,N1023,N1024,
  N1025,N1026,N1027,N1028,N1029,N1030,N1031,N1032,N1033,N1034,N1035,N1036,N1037,N1038,
  N1039,N1040,N1041,N1042,N1043,N1044,N1045,N1046,N1047,N1048,N1049,N1050,N1051,
  N1052,N1053,N1054,N1055,N1056,N1057,N1058,N1059,N1060,N1061,N1062,N1063,N1064,
  N1065,N1066,N1067,N1068,N1069,N1070,N1071,N1072,N1073,N1074,N1075,N1076,N1077,N1078,
  N1079,N1080,N1081,N1082,N1083,N1084,N1085,N1086,N1087,N1088,N1089,N1090,N1091,
  N1092,N1093,N1094,N1095,N1096,N1097,N1098,N1099,N1100,N1101,N1102,N1103,N1104,
  N1105,N1106,N1107,N1108,N1109,N1110,N1111,N1112,N1113,N1114,N1115,N1116,N1117,N1118,
  N1119,N1120,N1121,N1122,N1123,N1124,N1125,N1126,N1127,N1128,N1129,N1130,N1131,
  N1132,N1133,N1134,N1135,N1136,N1137,N1138,N1139;
  wire [15:0] unaligned_instr_n;
  wire [63:0] unaligned_address_n;
  reg compressed_q,unaligned_q;
  reg [15:0] unaligned_instr_q;
  reg [63:0] unaligned_address_q;
  assign fetch_entry_o[65] = 1'b0;
  assign fetch_entry_o[66] = 1'b0;
  assign fetch_entry_o[69] = 1'b0;
  assign fetch_entry_o[70] = 1'b0;
  assign fetch_entry_o[71] = 1'b0;
  assign fetch_entry_o[72] = 1'b0;
  assign fetch_entry_o[73] = 1'b0;
  assign fetch_entry_o[74] = 1'b0;
  assign fetch_entry_o[75] = 1'b0;
  assign fetch_entry_o[76] = 1'b0;
  assign fetch_entry_o[77] = 1'b0;
  assign fetch_entry_o[78] = 1'b0;
  assign fetch_entry_o[79] = 1'b0;
  assign fetch_entry_o[80] = 1'b0;
  assign fetch_entry_o[81] = 1'b0;
  assign fetch_entry_o[82] = 1'b0;
  assign fetch_entry_o[83] = 1'b0;
  assign fetch_entry_o[84] = 1'b0;
  assign fetch_entry_o[85] = 1'b0;
  assign fetch_entry_o[86] = 1'b0;
  assign fetch_entry_o[87] = 1'b0;
  assign fetch_entry_o[88] = 1'b0;
  assign fetch_entry_o[89] = 1'b0;
  assign fetch_entry_o[90] = 1'b0;
  assign fetch_entry_o[91] = 1'b0;
  assign fetch_entry_o[92] = 1'b0;
  assign fetch_entry_o[93] = 1'b0;
  assign fetch_entry_o[94] = 1'b0;
  assign fetch_entry_o[95] = 1'b0;
  assign fetch_entry_o[96] = 1'b0;
  assign fetch_entry_o[97] = 1'b0;
  assign fetch_entry_o[98] = 1'b0;
  assign fetch_entry_o[99] = 1'b0;
  assign fetch_entry_o[100] = 1'b0;
  assign fetch_entry_o[101] = 1'b0;
  assign fetch_entry_o[102] = 1'b0;
  assign fetch_entry_o[103] = 1'b0;
  assign fetch_entry_o[104] = 1'b0;
  assign fetch_entry_o[105] = 1'b0;
  assign fetch_entry_o[106] = 1'b0;
  assign fetch_entry_o[107] = 1'b0;
  assign fetch_entry_o[108] = 1'b0;
  assign fetch_entry_o[109] = 1'b0;
  assign fetch_entry_o[110] = 1'b0;
  assign fetch_entry_o[111] = 1'b0;
  assign fetch_entry_o[112] = 1'b0;
  assign fetch_entry_o[113] = 1'b0;
  assign fetch_entry_o[114] = 1'b0;
  assign fetch_entry_o[115] = 1'b0;
  assign fetch_entry_o[116] = 1'b0;
  assign fetch_entry_o[117] = 1'b0;
  assign fetch_entry_o[118] = 1'b0;
  assign fetch_entry_o[119] = 1'b0;
  assign fetch_entry_o[120] = 1'b0;
  assign fetch_entry_o[121] = 1'b0;
  assign fetch_entry_o[122] = 1'b0;
  assign fetch_entry_o[123] = 1'b0;
  assign fetch_entry_o[124] = 1'b0;
  assign fetch_entry_o[125] = 1'b0;
  assign fetch_entry_o[126] = 1'b0;
  assign fetch_entry_o[127] = 1'b0;
  assign fetch_entry_o[128] = 1'b0;
  assign fetch_entry_o[64] = fetch_entry_o[292];
  assign fetch_entry_o[63] = fetch_entry_o[291];
  assign fetch_entry_o[62] = fetch_entry_o[290];
  assign fetch_entry_o[61] = fetch_entry_o[289];
  assign fetch_entry_o[60] = fetch_entry_o[288];
  assign fetch_entry_o[59] = fetch_entry_o[287];
  assign fetch_entry_o[58] = fetch_entry_o[286];
  assign fetch_entry_o[57] = fetch_entry_o[285];
  assign fetch_entry_o[56] = fetch_entry_o[284];
  assign fetch_entry_o[55] = fetch_entry_o[283];
  assign fetch_entry_o[54] = fetch_entry_o[282];
  assign fetch_entry_o[53] = fetch_entry_o[281];
  assign fetch_entry_o[52] = fetch_entry_o[280];
  assign fetch_entry_o[51] = fetch_entry_o[279];
  assign fetch_entry_o[50] = fetch_entry_o[278];
  assign fetch_entry_o[49] = fetch_entry_o[277];
  assign fetch_entry_o[48] = fetch_entry_o[276];
  assign fetch_entry_o[47] = fetch_entry_o[275];
  assign fetch_entry_o[46] = fetch_entry_o[274];
  assign fetch_entry_o[45] = fetch_entry_o[273];
  assign fetch_entry_o[44] = fetch_entry_o[272];
  assign fetch_entry_o[43] = fetch_entry_o[271];
  assign fetch_entry_o[42] = fetch_entry_o[270];
  assign fetch_entry_o[41] = fetch_entry_o[269];
  assign fetch_entry_o[40] = fetch_entry_o[268];
  assign fetch_entry_o[39] = fetch_entry_o[267];
  assign fetch_entry_o[38] = fetch_entry_o[266];
  assign fetch_entry_o[37] = fetch_entry_o[265];
  assign fetch_entry_o[36] = fetch_entry_o[264];
  assign fetch_entry_o[35] = fetch_entry_o[263];
  assign fetch_entry_o[34] = fetch_entry_o[262];
  assign fetch_entry_o[33] = fetch_entry_o[261];
  assign fetch_entry_o[32] = fetch_entry_o[260];
  assign fetch_entry_o[31] = fetch_entry_o[259];
  assign fetch_entry_o[30] = fetch_entry_o[258];
  assign fetch_entry_o[29] = fetch_entry_o[257];
  assign fetch_entry_o[28] = fetch_entry_o[256];
  assign fetch_entry_o[27] = fetch_entry_o[255];
  assign fetch_entry_o[26] = fetch_entry_o[254];
  assign fetch_entry_o[25] = fetch_entry_o[253];
  assign fetch_entry_o[24] = fetch_entry_o[252];
  assign fetch_entry_o[23] = fetch_entry_o[251];
  assign fetch_entry_o[22] = fetch_entry_o[250];
  assign fetch_entry_o[21] = fetch_entry_o[249];
  assign fetch_entry_o[20] = fetch_entry_o[248];
  assign fetch_entry_o[19] = fetch_entry_o[247];
  assign fetch_entry_o[18] = fetch_entry_o[246];
  assign fetch_entry_o[17] = fetch_entry_o[245];
  assign fetch_entry_o[16] = fetch_entry_o[244];
  assign fetch_entry_o[15] = fetch_entry_o[243];
  assign fetch_entry_o[14] = fetch_entry_o[242];
  assign fetch_entry_o[13] = fetch_entry_o[241];
  assign fetch_entry_o[12] = fetch_entry_o[240];
  assign fetch_entry_o[11] = fetch_entry_o[239];
  assign fetch_entry_o[10] = fetch_entry_o[238];
  assign fetch_entry_o[9] = fetch_entry_o[237];
  assign fetch_entry_o[8] = fetch_entry_o[236];
  assign fetch_entry_o[7] = fetch_entry_o[235];
  assign fetch_entry_o[6] = fetch_entry_o[234];
  assign fetch_entry_o[5] = fetch_entry_o[233];
  assign fetch_entry_o[4] = fetch_entry_o[232];
  assign fetch_entry_o[3] = fetch_entry_o[231];
  assign fetch_entry_o[2] = fetch_entry_o[230];
  assign fetch_entry_o[1] = fetch_entry_o[229];
  assign fetch_entry_o[67] = fetch_entry_o[68];
  assign fetch_entry_o[195] = fetch_entry_i[69];
  assign fetch_entry_o[194] = fetch_entry_i[68];
  assign fetch_entry_o[193] = fetch_entry_i[67];
  assign fetch_entry_o[192] = fetch_entry_i[66];
  assign fetch_entry_o[191] = fetch_entry_i[65];
  assign fetch_entry_o[190] = fetch_entry_i[64];
  assign fetch_entry_o[189] = fetch_entry_i[63];
  assign fetch_entry_o[188] = fetch_entry_i[62];
  assign fetch_entry_o[187] = fetch_entry_i[61];
  assign fetch_entry_o[186] = fetch_entry_i[60];
  assign fetch_entry_o[185] = fetch_entry_i[59];
  assign fetch_entry_o[184] = fetch_entry_i[58];
  assign fetch_entry_o[183] = fetch_entry_i[57];
  assign fetch_entry_o[182] = fetch_entry_i[56];
  assign fetch_entry_o[181] = fetch_entry_i[55];
  assign fetch_entry_o[180] = fetch_entry_i[54];
  assign fetch_entry_o[179] = fetch_entry_i[53];
  assign fetch_entry_o[178] = fetch_entry_i[52];
  assign fetch_entry_o[177] = fetch_entry_i[51];
  assign fetch_entry_o[176] = fetch_entry_i[50];
  assign fetch_entry_o[175] = fetch_entry_i[49];
  assign fetch_entry_o[174] = fetch_entry_i[48];
  assign fetch_entry_o[173] = fetch_entry_i[47];
  assign fetch_entry_o[172] = fetch_entry_i[46];
  assign fetch_entry_o[171] = fetch_entry_i[45];
  assign fetch_entry_o[170] = fetch_entry_i[44];
  assign fetch_entry_o[169] = fetch_entry_i[43];
  assign fetch_entry_o[168] = fetch_entry_i[42];
  assign fetch_entry_o[167] = fetch_entry_i[41];
  assign fetch_entry_o[166] = fetch_entry_i[40];
  assign fetch_entry_o[165] = fetch_entry_i[39];
  assign fetch_entry_o[164] = fetch_entry_i[38];
  assign fetch_entry_o[163] = fetch_entry_i[37];
  assign fetch_entry_o[162] = fetch_entry_i[36];
  assign fetch_entry_o[161] = fetch_entry_i[35];
  assign fetch_entry_o[160] = fetch_entry_i[34];
  assign fetch_entry_o[159] = fetch_entry_i[33];
  assign fetch_entry_o[158] = fetch_entry_i[32];
  assign fetch_entry_o[157] = fetch_entry_i[31];
  assign fetch_entry_o[156] = fetch_entry_i[30];
  assign fetch_entry_o[155] = fetch_entry_i[29];
  assign fetch_entry_o[154] = fetch_entry_i[28];
  assign fetch_entry_o[153] = fetch_entry_i[27];
  assign fetch_entry_o[152] = fetch_entry_i[26];
  assign fetch_entry_o[151] = fetch_entry_i[25];
  assign fetch_entry_o[150] = fetch_entry_i[24];
  assign fetch_entry_o[149] = fetch_entry_i[23];
  assign fetch_entry_o[148] = fetch_entry_i[22];
  assign fetch_entry_o[147] = fetch_entry_i[21];
  assign fetch_entry_o[146] = fetch_entry_i[20];
  assign fetch_entry_o[145] = fetch_entry_i[19];
  assign fetch_entry_o[144] = fetch_entry_i[18];
  assign fetch_entry_o[143] = fetch_entry_i[17];
  assign fetch_entry_o[142] = fetch_entry_i[16];
  assign fetch_entry_o[141] = fetch_entry_i[15];
  assign fetch_entry_o[140] = fetch_entry_i[14];
  assign fetch_entry_o[139] = fetch_entry_i[13];
  assign fetch_entry_o[138] = fetch_entry_i[12];
  assign fetch_entry_o[137] = fetch_entry_i[11];
  assign fetch_entry_o[136] = fetch_entry_i[10];
  assign fetch_entry_o[135] = fetch_entry_i[9];
  assign fetch_entry_o[134] = fetch_entry_i[8];
  assign fetch_entry_o[133] = fetch_entry_i[7];
  assign fetch_entry_o[132] = fetch_entry_i[6];
  assign fetch_entry_o[131] = fetch_entry_i[5];
  assign fetch_entry_o[130] = fetch_entry_i[4];
  assign fetch_entry_o[129] = fetch_entry_i[3];
  assign fetch_entry_o[0] = fetch_entry_i[0];

  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      compressed_q <= 1'b0;
    end else if(1'b1) begin
      compressed_q <= compressed_n;
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_q <= 1'b0;
    end else if(1'b1) begin
      unaligned_q <= unaligned_n;
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[15] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[15] <= unaligned_instr_n[15];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[14] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[14] <= unaligned_instr_n[14];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[13] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[13] <= unaligned_instr_n[13];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[12] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[12] <= unaligned_instr_n[12];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[11] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[11] <= unaligned_instr_n[11];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[10] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[10] <= unaligned_instr_n[10];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[9] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[9] <= unaligned_instr_n[9];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[8] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[8] <= unaligned_instr_n[8];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[7] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[7] <= unaligned_instr_n[7];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[6] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[6] <= unaligned_instr_n[6];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[5] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[5] <= unaligned_instr_n[5];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[4] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[4] <= unaligned_instr_n[4];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[3] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[3] <= unaligned_instr_n[3];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[2] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[2] <= unaligned_instr_n[2];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[1] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[1] <= unaligned_instr_n[1];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_instr_q[0] <= 1'b0;
    end else if(1'b1) begin
      unaligned_instr_q[0] <= unaligned_instr_n[0];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[63] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[63] <= unaligned_address_n[63];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[62] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[62] <= unaligned_address_n[62];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[61] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[61] <= unaligned_address_n[61];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[60] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[60] <= unaligned_address_n[60];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[59] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[59] <= unaligned_address_n[59];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[58] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[58] <= unaligned_address_n[58];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[57] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[57] <= unaligned_address_n[57];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[56] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[56] <= unaligned_address_n[56];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[55] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[55] <= unaligned_address_n[55];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[54] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[54] <= unaligned_address_n[54];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[53] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[53] <= unaligned_address_n[53];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[52] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[52] <= unaligned_address_n[52];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[51] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[51] <= unaligned_address_n[51];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[50] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[50] <= unaligned_address_n[50];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[49] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[49] <= unaligned_address_n[49];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[48] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[48] <= unaligned_address_n[48];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[47] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[47] <= unaligned_address_n[47];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[46] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[46] <= unaligned_address_n[46];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[45] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[45] <= unaligned_address_n[45];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[44] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[44] <= unaligned_address_n[44];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[43] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[43] <= unaligned_address_n[43];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[42] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[42] <= unaligned_address_n[42];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[41] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[41] <= unaligned_address_n[41];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[40] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[40] <= unaligned_address_n[40];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[39] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[39] <= unaligned_address_n[39];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[38] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[38] <= unaligned_address_n[38];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[37] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[37] <= unaligned_address_n[37];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[36] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[36] <= unaligned_address_n[36];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[35] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[35] <= unaligned_address_n[35];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[34] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[34] <= unaligned_address_n[34];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[33] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[33] <= unaligned_address_n[33];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[32] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[32] <= unaligned_address_n[32];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[31] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[31] <= unaligned_address_n[31];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[30] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[30] <= unaligned_address_n[30];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[29] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[29] <= unaligned_address_n[29];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[28] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[28] <= unaligned_address_n[28];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[27] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[27] <= unaligned_address_n[27];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[26] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[26] <= unaligned_address_n[26];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[25] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[25] <= unaligned_address_n[25];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[24] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[24] <= unaligned_address_n[24];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[23] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[23] <= unaligned_address_n[23];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[22] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[22] <= unaligned_address_n[22];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[21] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[21] <= unaligned_address_n[21];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[20] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[20] <= unaligned_address_n[20];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[19] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[19] <= unaligned_address_n[19];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[18] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[18] <= unaligned_address_n[18];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[17] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[17] <= unaligned_address_n[17];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[16] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[16] <= unaligned_address_n[16];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[15] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[15] <= unaligned_address_n[15];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[14] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[14] <= unaligned_address_n[14];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[13] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[13] <= unaligned_address_n[13];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[12] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[12] <= unaligned_address_n[12];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[11] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[11] <= unaligned_address_n[11];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[10] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[10] <= unaligned_address_n[10];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[9] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[9] <= unaligned_address_n[9];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[8] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[8] <= unaligned_address_n[8];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[7] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[7] <= unaligned_address_n[7];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[6] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[6] <= unaligned_address_n[6];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[5] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[5] <= unaligned_address_n[5];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[4] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[4] <= unaligned_address_n[4];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[3] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[3] <= unaligned_address_n[3];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[2] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[2] <= unaligned_address_n[2];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[1] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[1] <= unaligned_address_n[1];
    end 
  end


  always @(posedge clk_i or posedge N1129) begin
    if(N1129) begin
      unaligned_address_q[0] <= 1'b0;
    end else if(1'b1) begin
      unaligned_address_q[0] <= unaligned_address_n[0];
    end 
  end

  assign N1130 = fetch_entry_i[87] & fetch_entry_i[88];
  assign N1131 = ~N1130;
  assign N1132 = fetch_entry_i[71] & fetch_entry_i[72];
  assign N1133 = ~N1132;
  assign N1134 = ~fetch_entry_i[104];
  assign N26 = (N0)? 1'b0 : 
               (N25)? fetch_entry_i[70] : 1'b0;
  assign N0 = N18;
  assign N27 = (N1)? 1'b1 : 
               (N2)? compressed_q : 1'b0;
  assign N1 = N1131;
  assign N2 = N1130;
  assign N28 = (N1)? 1'b0 : 
               (N2)? fetch_ack_i : 1'b0;
  assign { N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29 } = (N1)? unaligned_instr_q : 
                                                                                              (N2)? fetch_entry_i[102:87] : 1'b0;
  assign { N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45 } = (N1)? unaligned_address_q : 
                                                                                                                                                                                                                                                                                                                                                       (N2)? { fetch_entry_i[166:105], 1'b1, 1'b0 } : 1'b0;
  assign N109 = (N3)? N1130 : 
                (N4)? 1'b0 : 1'b0;
  assign N3 = N19;
  assign N4 = kill_upper_16_bit;
  assign N110 = (N3)? N27 : 
                (N4)? compressed_q : 1'b0;
  assign N111 = (N3)? N28 : 
                (N4)? fetch_ack_i : 1'b0;
  assign { N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112 } = (N3)? { N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29 } : 
                                                                                                              (N4)? unaligned_instr_q : 1'b0;
  assign { N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128 } = (N3)? { N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N4)? unaligned_address_q : 1'b0;
  assign { N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192 } = (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N26 } : 
                                                                                                                    (N6)? { fetch_entry_i[102:87], fetch_entry_i[70:70] } : 1'b0;
  assign N5 = N1133;
  assign N6 = N1132;
  assign { N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209 } = (N5)? { N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N6)? unaligned_address_q : 1'b0;
  assign N273 = (N5)? N109 : 
                (N6)? 1'b0 : 1'b0;
  assign N274 = (N5)? N110 : 
                (N6)? compressed_q : 1'b0;
  assign N275 = (N5)? N111 : 
                (N6)? fetch_ack_i : 1'b0;
  assign { N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276 } = (N5)? { N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112 } : 
                                                                                                              (N6)? unaligned_instr_q : 1'b0;
  assign N296 = (N1)? 1'b1 : 
                (N2)? compressed_q : 
                (N7)? compressed_q : 1'b0;
  assign N7 = 1'b0;
  assign N297 = (N1)? 1'b0 : 
                (N2)? fetch_ack_i : 
                (N7)? fetch_ack_i : 1'b0;
  assign N298 = (N1)? 1'b0 : 
                (N1128)? 1'b1 : 
                (N295)? unaligned_q : 1'b0;
  assign N299 = (N1)? N26 : 
                (N2)? fetch_entry_i[70] : 
                (N7)? fetch_entry_i[70] : 1'b0;
  assign { N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300 } = (N1)? unaligned_instr_q : 
                                                                                                              (N1128)? fetch_entry_i[102:87] : 
                                                                                                              (N295)? unaligned_instr_q : 1'b0;
  assign { N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316 } = (N1)? unaligned_address_q : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N1128)? { fetch_entry_i[166:105], 1'b1, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N295)? unaligned_address_q : 1'b0;
  assign { N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380 } = (N3)? { N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N4)? unaligned_address_q : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N7)? unaligned_address_q : 1'b0;
  assign N444 = (N3)? N296 : 
                (N4)? compressed_q : 
                (N7)? compressed_q : 1'b0;
  assign N445 = (N3)? N297 : 
                (N4)? fetch_ack_i : 
                (N7)? fetch_ack_i : 1'b0;
  assign N446 = (N3)? N298 : 
                (N1127)? 1'b0 : 
                (N293)? unaligned_q : 1'b0;
  assign N447 = (N3)? N299 : 
                (N4)? fetch_entry_i[70] : 
                (N7)? fetch_entry_i[70] : 1'b0;
  assign { N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448 } = (N3)? { N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300 } : 
                                                                                                              (N4)? unaligned_instr_q : 
                                                                                                              (N7)? unaligned_instr_q : 1'b0;
  assign N464 = (N8)? N273 : 
                (N9)? N446 : 1'b0;
  assign N8 = N24;
  assign N9 = unaligned_q;
  assign { N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465 } = (N8)? { N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276 } : 
                                                                                                              (N9)? { N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448 } : 1'b0;
  assign { N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481 } = (N8)? { fetch_entry_i[166:103], N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, fetch_entry_i[86:71], N192 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    (N9)? { unaligned_address_q, fetch_entry_i[86:71], unaligned_instr_q, N447 } : 1'b0;
  assign { N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578 } = (N8)? { N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N9)? { N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380 } : 1'b0;
  assign N642 = (N8)? N274 : 
                (N9)? N444 : 1'b0;
  assign N643 = (N8)? N275 : 
                (N9)? N445 : 1'b0;
  assign { N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644 } = (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, fetch_entry_i[102:87] } : 
                                                                                                                                                                                                              (N2)? fetch_entry_i[102:71] : 1'b0;
  assign { N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676 } = (N1)? unaligned_instr_q : 
                                                                                                              (N2)? fetch_entry_i[102:87] : 1'b0;
  assign { N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692 } = (N1)? unaligned_address_q : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N2)? { fetch_entry_i[166:105], 1'b1, 1'b0 } : 1'b0;
  assign N756 = (N1)? fetch_entry_valid_i : 
                (N2)? 1'b0 : 1'b0;
  assign N757 = (N1)? fetch_ack_i : 
                (N2)? 1'b1 : 1'b0;
  assign N758 = (N10)? N643 : 
                (N11)? N757 : 
                (N23)? fetch_ack_i : 1'b0;
  assign N10 = N1134;
  assign N11 = fetch_entry_i[104];
  assign N759 = (N10)? N464 : 
                (N11)? N1130 : 
                (N23)? unaligned_q : 1'b0;
  assign { N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760 } = (N10)? { N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465 } : 
                                                                                                              (N11)? { N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676 } : 
                                                                                                              (N23)? unaligned_instr_q : 1'b0;
  assign { N872, N871, N870, N869, N868, N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, N809, N776 } = (N10)? { N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N481 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                    (N11)? { fetch_entry_i[166:103], fetch_entry_i[70:70] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                    (N7)? { fetch_entry_i[166:103], fetch_entry_i[70:70] } : 1'b0;
  assign { N808, N807, N806, N805, N804, N803, N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777 } = (N10)? { N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482 } : 
                                                                                                                                                                                                              (N11)? { N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644 } : 
                                                                                                                                                                                                              (N23)? fetch_entry_i[102:71] : 1'b0;
  assign { N936, N935, N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, N891, N890, N889, N888, N887, N886, N885, N884, N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, N873 } = (N10)? { N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N11)? { N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N23)? unaligned_address_q : 1'b0;
  assign N937 = (N10)? N642 : 
                (N11)? compressed_q : 
                (N7)? compressed_q : 1'b0;
  assign N938 = (N10)? 1'b0 : 
                (N11)? N1130 : 
                (N23)? 1'b0 : 1'b0;
  assign N939 = (N10)? fetch_entry_valid_i : 
                (N11)? N756 : 
                (N23)? fetch_entry_valid_i : 1'b0;
  assign N940 = (N12)? N939 : 
                (N21)? fetch_entry_valid_i : 1'b0;
  assign N12 = N20;
  assign N941 = (N12)? N758 : 
                (N21)? fetch_ack_i : 1'b0;
  assign N942 = (N12)? N759 : 
                (N21)? unaligned_q : 1'b0;
  assign { N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943 } = (N12)? { N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760 } : 
                                                                                                              (N21)? unaligned_instr_q : 1'b0;
  assign { N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962, N961, N960, N959, fetch_entry_o[196:196] } = (N12)? { N872, N871, N870, N869, N868, N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, N804, N803, N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (N21)? fetch_entry_i[166:70] : 1'b0;
  assign { N1118, N1117, N1116, N1115, N1114, N1113, N1112, N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059, N1058, N1057, N1056, N1055 } = (N12)? { N936, N935, N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, N891, N890, N889, N888, N887, N886, N885, N884, N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, N873 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N21)? unaligned_address_q : 1'b0;
  assign N1119 = (N12)? N937 : 
                 (N21)? compressed_q : 1'b0;
  assign N1120 = (N12)? N938 : 
                 (N21)? 1'b0 : 1'b0;
  assign fetch_ack_o = (N13)? fetch_ack_i : 
                       (N14)? N941 : 1'b0;
  assign N13 = compressed_q;
  assign N14 = N1137;
  assign N1121 = (N13)? 1'b0 : 
                 (N14)? N1119 : 1'b0;
  assign fetch_entry_o[292:197] = (N13)? { fetch_entry_i[166:105], 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, fetch_entry_i[102:87] } : 
                                  (N14)? { N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962, N961, N960, N959 } : 1'b0;
  assign fetch_entry_valid_o = (N13)? 1'b1 : 
                               (N14)? N940 : 1'b0;
  assign N1124 = (N15)? unaligned_q : 
                 (N1123)? N942 : 1'b0;
  assign N15 = N1122;
  assign unaligned_instr_n = (N15)? unaligned_instr_q : 
                             (N1123)? { N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943 } : 1'b0;
  assign N1125 = (N15)? compressed_q : 
                 (N1123)? N1121 : 1'b0;
  assign unaligned_address_n = (N15)? unaligned_address_q : 
                               (N1123)? { N1118, N1117, N1116, N1115, N1114, N1113, N1112, N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059, N1058, N1057, N1056, N1055 } : 1'b0;
  assign unaligned_n = (N16)? 1'b0 : 
                       (N17)? N1124 : 1'b0;
  assign N16 = flush_i;
  assign N17 = N1126;
  assign compressed_n = (N16)? 1'b0 : 
                        (N17)? N1125 : 1'b0;
  assign kill_upper_16_bit = N1135 & fetch_entry_i[1];
  assign N1135 = fetch_entry_i[70] & fetch_entry_i[5];
  assign N18 = fetch_entry_i[70] & N1136;
  assign N1136 = ~fetch_entry_i[1];
  assign N19 = ~kill_upper_16_bit;
  assign fetch_entry_o[68] = fetch_entry_i[0];
  assign N20 = fetch_entry_valid_i & N1137;
  assign N1137 = ~compressed_q;
  assign N21 = ~N20;
  assign N22 = fetch_entry_i[104] | N1134;
  assign N23 = ~N22;
  assign N24 = ~unaligned_q;
  assign N25 = ~N18;
  assign N292 = fetch_entry_i[70] | N19;
  assign N293 = ~N292;
  assign N294 = N19 | N1131;
  assign N295 = ~N294;
  assign N1122 = N1138 & N1139;
  assign N1138 = ~fetch_ack_i;
  assign N1139 = ~N1120;
  assign N1123 = ~N1122;
  assign N1126 = ~flush_i;
  assign N1127 = fetch_entry_i[70] & kill_upper_16_bit;
  assign N1128 = N19 & N1130;
  assign N1129 = ~rst_ni;

endmodule