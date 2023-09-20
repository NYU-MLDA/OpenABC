module axi_adapter_00000080_4_00000004
(
  clk_i,
  rst_ni,
  req_i,
  type_i,
  gnt_o,
  gnt_id_o,
  addr_i,
  we_i,
  wdata_i,
  be_i,
  size_i,
  id_i,
  valid_o,
  rdata_o,
  id_o,
  critical_word_o,
  critical_word_valid_o,
  axi_req_o,
  axi_resp_i
);

  output [3:0] gnt_id_o;
  input [63:0] addr_i;
  input [127:0] wdata_i;
  input [15:0] be_i;
  input [1:0] size_i;
  input [3:0] id_i;
  output [127:0] rdata_o;
  output [3:0] id_o;
  output [63:0] critical_word_o;
  output [277:0] axi_req_o;
  input [81:0] axi_resp_i;
  input clk_i;
  input rst_ni;
  input req_i;
  input type_i;
  input we_i;
  output gnt_o;
  output valid_o;
  output critical_word_valid_o;
  wire [3:0] gnt_id_o,id_o,state_d,id_d;
  wire [63:0] critical_word_o;
  wire [277:0] axi_req_o;
  wire gnt_o,valid_o,critical_word_valid_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,
  N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,
  N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,
  N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,
  N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,
  N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,
  N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,
  N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,
  N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,
  N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,
  N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,
  N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,
  N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,
  N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,
  N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,
  N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,
  N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,
  N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N318,
  N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,
  N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,
  N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,
  N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,
  N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,
  N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,
  N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,N425,N426,N427,N428,N429,N430,
  N431,N432,N433,N434,N435,N436,N437,N438,N439,N440,N441,N442,N443,N444,N445,N446,
  N447,N448,N449,N450,N451,N452,N453,N454,N455,N456,N457,N458,N459,N460,N461,N462,
  N463,N464,N465,N466,N467,N468,N469,N470,N471,N472,N473,N474,N475,N476,N477,N478,
  N479,N480,N481,N482,N483,N484,N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,
  N495,N496,N497,N498,N499,N500,N501,N502,N503,N504,N505,N506,N507,N508,N509,N510,
  N511,N512,N513,N514,N515,N516,N517,N518,N519,N520,N521,N522,N523,N524,N525,N526,
  N527,N528,N529,N530,N531,N532,N533,N534,N535,N536,N537,N538,N539,N540,N541,N542,
  N543,N544,N545,N546,N547,N548,N549,N550,N551,N552,N553,N554,N555,N556,N557,N558,
  N559,N560,N561,N562,N563,N564,N565,N566,N567,N568,N569,N570,N571,N572,N573,N574,
  N575,N576,N577,N578,N579,N580,N581,N582,N583,N584,N585,N586,N587,N588,N589,N590,
  N591,N592,N593,N594,N595,N596,N597,N598,N599,N600,N601,N602,N603,N604,N605,N606,
  N607,N608,N609,N610,N611,N612,N613,N614,N615,N616,N617,N618,N619,N620,N621,N622,
  N623,N624,N625,N626,N627,N628,N629,N630,N631,N632,N633,N634,N635,N636,N637,N638,
  N639,N640,N641,N642,N643,N644,N645,N646,N647,N648,N649,N650,N651,N652,N653,N654,
  N655,N656,N657,N658,N659,N660,N661,N662,N663,N664,N665,N666,N667,N668,N669,N670,
  N671,N672,N673,N674,N675,N676,N677,N678,N679,N680,N681,N682,N683,N684,N685,N686,
  N687,N688,N689,N690,N691,N692,N693,N694,N695,N696,N697,N698,N699,N700,N701,N702,
  N703,N704,N705,N706,N707,N708,N709,N710,N711,N712,N713,N714,N715,N716,N717,N718,
  N719,N720,N721,N722,N723,N724,N725,N726,N727,N728,N729,N730,N731,N732,N733,N734,
  N735,N736,N737,N738,N739,N740,N741,N742,N743,N744,N745,N746,N747,N748,N749,N750,
  N751,N752,N753,N754,N755,N756,N757,N758,N759,N760,N761,N762,N763,N764,N765,N766,
  N767,N768,N769,N770,N771;
  wire [0:0] cnt_d;
  wire [127:0] cache_line_d;
  wire [1:0] addr_offset_d;
  reg [3:0] id_q,state_q;
  reg N317;
  reg [127:0] rdata_o;
  reg [1:0] addr_offset_q;
  assign axi_req_o[2] = 1'b0;
  assign axi_req_o[3] = 1'b0;
  assign axi_req_o[4] = 1'b0;
  assign axi_req_o[5] = 1'b0;
  assign axi_req_o[6] = 1'b0;
  assign axi_req_o[7] = 1'b0;
  assign axi_req_o[8] = 1'b0;
  assign axi_req_o[9] = 1'b0;
  assign axi_req_o[10] = 1'b0;
  assign axi_req_o[11] = 1'b0;
  assign axi_req_o[12] = 1'b0;
  assign axi_req_o[13] = 1'b0;
  assign axi_req_o[14] = 1'b0;
  assign axi_req_o[15] = 1'b0;
  assign axi_req_o[16] = 1'b0;
  assign axi_req_o[17] = 1'b0;
  assign axi_req_o[19] = 1'b0;
  assign axi_req_o[22] = 1'b0;
  assign axi_req_o[24] = 1'b0;
  assign axi_req_o[25] = 1'b0;
  assign axi_req_o[26] = 1'b0;
  assign axi_req_o[27] = 1'b0;
  assign axi_req_o[28] = 1'b0;
  assign axi_req_o[29] = 1'b0;
  assign axi_req_o[30] = 1'b0;
  assign axi_req_o[175] = 1'b0;
  assign axi_req_o[176] = 1'b0;
  assign axi_req_o[177] = 1'b0;
  assign axi_req_o[178] = 1'b0;
  assign axi_req_o[179] = 1'b0;
  assign axi_req_o[180] = 1'b0;
  assign axi_req_o[181] = 1'b0;
  assign axi_req_o[182] = 1'b0;
  assign axi_req_o[183] = 1'b0;
  assign axi_req_o[184] = 1'b0;
  assign axi_req_o[185] = 1'b0;
  assign axi_req_o[186] = 1'b0;
  assign axi_req_o[187] = 1'b0;
  assign axi_req_o[188] = 1'b0;
  assign axi_req_o[189] = 1'b0;
  assign axi_req_o[190] = 1'b0;
  assign axi_req_o[191] = 1'b0;
  assign axi_req_o[192] = 1'b0;
  assign axi_req_o[193] = 1'b0;
  assign axi_req_o[194] = 1'b0;
  assign axi_req_o[195] = 1'b0;
  assign axi_req_o[196] = 1'b0;
  assign axi_req_o[198] = 1'b0;
  assign axi_req_o[201] = 1'b0;
  assign axi_req_o[203] = 1'b0;
  assign axi_req_o[204] = 1'b0;
  assign axi_req_o[205] = 1'b0;
  assign axi_req_o[206] = 1'b0;
  assign axi_req_o[207] = 1'b0;
  assign axi_req_o[208] = 1'b0;
  assign axi_req_o[209] = 1'b0;
  assign critical_word_o[63] = axi_resp_i[66];
  assign critical_word_o[62] = axi_resp_i[65];
  assign critical_word_o[61] = axi_resp_i[64];
  assign critical_word_o[60] = axi_resp_i[63];
  assign critical_word_o[59] = axi_resp_i[62];
  assign critical_word_o[58] = axi_resp_i[61];
  assign critical_word_o[57] = axi_resp_i[60];
  assign critical_word_o[56] = axi_resp_i[59];
  assign critical_word_o[55] = axi_resp_i[58];
  assign critical_word_o[54] = axi_resp_i[57];
  assign critical_word_o[53] = axi_resp_i[56];
  assign critical_word_o[52] = axi_resp_i[55];
  assign critical_word_o[51] = axi_resp_i[54];
  assign critical_word_o[50] = axi_resp_i[53];
  assign critical_word_o[49] = axi_resp_i[52];
  assign critical_word_o[48] = axi_resp_i[51];
  assign critical_word_o[47] = axi_resp_i[50];
  assign critical_word_o[46] = axi_resp_i[49];
  assign critical_word_o[45] = axi_resp_i[48];
  assign critical_word_o[44] = axi_resp_i[47];
  assign critical_word_o[43] = axi_resp_i[46];
  assign critical_word_o[42] = axi_resp_i[45];
  assign critical_word_o[41] = axi_resp_i[44];
  assign critical_word_o[40] = axi_resp_i[43];
  assign critical_word_o[39] = axi_resp_i[42];
  assign critical_word_o[38] = axi_resp_i[41];
  assign critical_word_o[37] = axi_resp_i[40];
  assign critical_word_o[36] = axi_resp_i[39];
  assign critical_word_o[35] = axi_resp_i[38];
  assign critical_word_o[34] = axi_resp_i[37];
  assign critical_word_o[33] = axi_resp_i[36];
  assign critical_word_o[32] = axi_resp_i[35];
  assign critical_word_o[31] = axi_resp_i[34];
  assign critical_word_o[30] = axi_resp_i[33];
  assign critical_word_o[29] = axi_resp_i[32];
  assign critical_word_o[28] = axi_resp_i[31];
  assign critical_word_o[27] = axi_resp_i[30];
  assign critical_word_o[26] = axi_resp_i[29];
  assign critical_word_o[25] = axi_resp_i[28];
  assign critical_word_o[24] = axi_resp_i[27];
  assign critical_word_o[23] = axi_resp_i[26];
  assign critical_word_o[22] = axi_resp_i[25];
  assign critical_word_o[21] = axi_resp_i[24];
  assign critical_word_o[20] = axi_resp_i[23];
  assign critical_word_o[19] = axi_resp_i[22];
  assign critical_word_o[18] = axi_resp_i[21];
  assign critical_word_o[17] = axi_resp_i[20];
  assign critical_word_o[16] = axi_resp_i[19];
  assign critical_word_o[15] = axi_resp_i[18];
  assign critical_word_o[14] = axi_resp_i[17];
  assign critical_word_o[13] = axi_resp_i[16];
  assign critical_word_o[12] = axi_resp_i[15];
  assign critical_word_o[11] = axi_resp_i[14];
  assign critical_word_o[10] = axi_resp_i[13];
  assign critical_word_o[9] = axi_resp_i[12];
  assign critical_word_o[8] = axi_resp_i[11];
  assign critical_word_o[7] = axi_resp_i[10];
  assign critical_word_o[6] = axi_resp_i[9];
  assign critical_word_o[5] = axi_resp_i[8];
  assign critical_word_o[4] = axi_resp_i[7];
  assign critical_word_o[3] = axi_resp_i[6];
  assign critical_word_o[2] = axi_resp_i[5];
  assign critical_word_o[1] = axi_resp_i[4];
  assign critical_word_o[0] = axi_resp_i[3];
  assign gnt_id_o[3] = id_i[3];
  assign axi_req_o[98] = id_i[3];
  assign axi_req_o[277] = id_i[3];
  assign gnt_id_o[2] = id_i[2];
  assign axi_req_o[97] = id_i[2];
  assign axi_req_o[276] = id_i[2];
  assign gnt_id_o[1] = id_i[1];
  assign axi_req_o[96] = id_i[1];
  assign axi_req_o[275] = id_i[1];
  assign gnt_id_o[0] = id_i[0];
  assign axi_req_o[95] = id_i[0];
  assign axi_req_o[274] = id_i[0];
  assign axi_req_o[94] = addr_i[63];
  assign axi_req_o[273] = addr_i[63];
  assign axi_req_o[93] = addr_i[62];
  assign axi_req_o[272] = addr_i[62];
  assign axi_req_o[92] = addr_i[61];
  assign axi_req_o[271] = addr_i[61];
  assign axi_req_o[91] = addr_i[60];
  assign axi_req_o[270] = addr_i[60];
  assign axi_req_o[90] = addr_i[59];
  assign axi_req_o[269] = addr_i[59];
  assign axi_req_o[89] = addr_i[58];
  assign axi_req_o[268] = addr_i[58];
  assign axi_req_o[88] = addr_i[57];
  assign axi_req_o[267] = addr_i[57];
  assign axi_req_o[87] = addr_i[56];
  assign axi_req_o[266] = addr_i[56];
  assign axi_req_o[86] = addr_i[55];
  assign axi_req_o[265] = addr_i[55];
  assign axi_req_o[85] = addr_i[54];
  assign axi_req_o[264] = addr_i[54];
  assign axi_req_o[84] = addr_i[53];
  assign axi_req_o[263] = addr_i[53];
  assign axi_req_o[83] = addr_i[52];
  assign axi_req_o[262] = addr_i[52];
  assign axi_req_o[82] = addr_i[51];
  assign axi_req_o[261] = addr_i[51];
  assign axi_req_o[81] = addr_i[50];
  assign axi_req_o[260] = addr_i[50];
  assign axi_req_o[80] = addr_i[49];
  assign axi_req_o[259] = addr_i[49];
  assign axi_req_o[79] = addr_i[48];
  assign axi_req_o[258] = addr_i[48];
  assign axi_req_o[78] = addr_i[47];
  assign axi_req_o[257] = addr_i[47];
  assign axi_req_o[77] = addr_i[46];
  assign axi_req_o[256] = addr_i[46];
  assign axi_req_o[76] = addr_i[45];
  assign axi_req_o[255] = addr_i[45];
  assign axi_req_o[75] = addr_i[44];
  assign axi_req_o[254] = addr_i[44];
  assign axi_req_o[74] = addr_i[43];
  assign axi_req_o[253] = addr_i[43];
  assign axi_req_o[73] = addr_i[42];
  assign axi_req_o[252] = addr_i[42];
  assign axi_req_o[72] = addr_i[41];
  assign axi_req_o[251] = addr_i[41];
  assign axi_req_o[71] = addr_i[40];
  assign axi_req_o[250] = addr_i[40];
  assign axi_req_o[70] = addr_i[39];
  assign axi_req_o[249] = addr_i[39];
  assign axi_req_o[69] = addr_i[38];
  assign axi_req_o[248] = addr_i[38];
  assign axi_req_o[68] = addr_i[37];
  assign axi_req_o[247] = addr_i[37];
  assign axi_req_o[67] = addr_i[36];
  assign axi_req_o[246] = addr_i[36];
  assign axi_req_o[66] = addr_i[35];
  assign axi_req_o[245] = addr_i[35];
  assign axi_req_o[65] = addr_i[34];
  assign axi_req_o[244] = addr_i[34];
  assign axi_req_o[64] = addr_i[33];
  assign axi_req_o[243] = addr_i[33];
  assign axi_req_o[63] = addr_i[32];
  assign axi_req_o[242] = addr_i[32];
  assign axi_req_o[62] = addr_i[31];
  assign axi_req_o[241] = addr_i[31];
  assign axi_req_o[61] = addr_i[30];
  assign axi_req_o[240] = addr_i[30];
  assign axi_req_o[60] = addr_i[29];
  assign axi_req_o[239] = addr_i[29];
  assign axi_req_o[59] = addr_i[28];
  assign axi_req_o[238] = addr_i[28];
  assign axi_req_o[58] = addr_i[27];
  assign axi_req_o[237] = addr_i[27];
  assign axi_req_o[57] = addr_i[26];
  assign axi_req_o[236] = addr_i[26];
  assign axi_req_o[56] = addr_i[25];
  assign axi_req_o[235] = addr_i[25];
  assign axi_req_o[55] = addr_i[24];
  assign axi_req_o[234] = addr_i[24];
  assign axi_req_o[54] = addr_i[23];
  assign axi_req_o[233] = addr_i[23];
  assign axi_req_o[53] = addr_i[22];
  assign axi_req_o[232] = addr_i[22];
  assign axi_req_o[52] = addr_i[21];
  assign axi_req_o[231] = addr_i[21];
  assign axi_req_o[51] = addr_i[20];
  assign axi_req_o[230] = addr_i[20];
  assign axi_req_o[50] = addr_i[19];
  assign axi_req_o[229] = addr_i[19];
  assign axi_req_o[49] = addr_i[18];
  assign axi_req_o[228] = addr_i[18];
  assign axi_req_o[48] = addr_i[17];
  assign axi_req_o[227] = addr_i[17];
  assign axi_req_o[47] = addr_i[16];
  assign axi_req_o[226] = addr_i[16];
  assign axi_req_o[46] = addr_i[15];
  assign axi_req_o[225] = addr_i[15];
  assign axi_req_o[45] = addr_i[14];
  assign axi_req_o[224] = addr_i[14];
  assign axi_req_o[44] = addr_i[13];
  assign axi_req_o[223] = addr_i[13];
  assign axi_req_o[43] = addr_i[12];
  assign axi_req_o[222] = addr_i[12];
  assign axi_req_o[42] = addr_i[11];
  assign axi_req_o[221] = addr_i[11];
  assign axi_req_o[41] = addr_i[10];
  assign axi_req_o[220] = addr_i[10];
  assign axi_req_o[40] = addr_i[9];
  assign axi_req_o[219] = addr_i[9];
  assign axi_req_o[39] = addr_i[8];
  assign axi_req_o[218] = addr_i[8];
  assign axi_req_o[38] = addr_i[7];
  assign axi_req_o[217] = addr_i[7];
  assign axi_req_o[37] = addr_i[6];
  assign axi_req_o[216] = addr_i[6];
  assign axi_req_o[36] = addr_i[5];
  assign axi_req_o[215] = addr_i[5];
  assign axi_req_o[35] = addr_i[4];
  assign axi_req_o[214] = addr_i[4];
  assign axi_req_o[213] = addr_i[3];
  assign axi_req_o[212] = addr_i[2];
  assign axi_req_o[211] = addr_i[1];
  assign axi_req_o[210] = addr_i[0];
  assign axi_req_o[21] = size_i[1];
  assign axi_req_o[200] = size_i[1];
  assign axi_req_o[20] = size_i[0];
  assign axi_req_o[199] = size_i[0];
  assign N30 = N29 & N763;
  assign N31 = N764 & N765;
  assign N32 = N30 & N31;
  assign N33 = state_q[3] | state_q[2];
  assign N34 = N764 | state_q[0];
  assign N35 = N33 | N34;
  assign N37 = state_q[3] | N763;
  assign N38 = state_q[1] | state_q[0];
  assign N39 = N37 | N38;
  assign N41 = state_q[3] | N763;
  assign N42 = state_q[1] | N765;
  assign N43 = N41 | N42;
  assign N45 = state_q[3] | state_q[2];
  assign N46 = N764 | N765;
  assign N47 = N45 | N46;
  assign N49 = state_q[3] | state_q[2];
  assign N50 = state_q[1] | N765;
  assign N51 = N49 | N50;
  assign N53 = state_q[3] | N763;
  assign N54 = N764 | N765;
  assign N55 = N53 | N54;
  assign N56 = state_q[3] | N763;
  assign N57 = N764 | state_q[0];
  assign N58 = N56 | N57;
  assign N60 = N29 | state_q[2];
  assign N61 = state_q[1] | state_q[0];
  assign N62 = N60 | N61;
  assign N67 = axi_resp_i[81] | N78;
  assign N69 = N77 | axi_resp_i[79];
  assign N71 = N77 & N78;
  assign N405 = N408 == addr_offset_q;

  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      id_q[3] <= 1'b0;
    end else if(N690) begin
      id_q[3] <= id_d[3];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      id_q[2] <= 1'b0;
    end else if(N700) begin
      id_q[2] <= id_d[2];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      id_q[1] <= 1'b0;
    end else if(N700) begin
      id_q[1] <= id_d[1];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      id_q[0] <= 1'b0;
    end else if(N700) begin
      id_q[0] <= id_d[0];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      state_q[3] <= 1'b0;
    end else if(N728) begin
      state_q[3] <= state_d[3];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      state_q[2] <= 1'b0;
    end else if(N728) begin
      state_q[2] <= state_d[2];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      state_q[1] <= 1'b0;
    end else if(N728) begin
      state_q[1] <= state_d[1];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      state_q[0] <= 1'b0;
    end else if(N728) begin
      state_q[0] <= state_d[0];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      N317 <= 1'b0;
    end else if(N744) begin
      N317 <= cnt_d[0];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[127] <= 1'b0;
    end else if(N747) begin
      rdata_o[127] <= cache_line_d[127];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[126] <= 1'b0;
    end else if(N747) begin
      rdata_o[126] <= cache_line_d[126];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[125] <= 1'b0;
    end else if(N747) begin
      rdata_o[125] <= cache_line_d[125];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[124] <= 1'b0;
    end else if(N747) begin
      rdata_o[124] <= cache_line_d[124];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[123] <= 1'b0;
    end else if(N747) begin
      rdata_o[123] <= cache_line_d[123];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[122] <= 1'b0;
    end else if(N747) begin
      rdata_o[122] <= cache_line_d[122];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[121] <= 1'b0;
    end else if(N747) begin
      rdata_o[121] <= cache_line_d[121];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[120] <= 1'b0;
    end else if(N747) begin
      rdata_o[120] <= cache_line_d[120];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[119] <= 1'b0;
    end else if(N747) begin
      rdata_o[119] <= cache_line_d[119];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[118] <= 1'b0;
    end else if(N747) begin
      rdata_o[118] <= cache_line_d[118];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[117] <= 1'b0;
    end else if(N747) begin
      rdata_o[117] <= cache_line_d[117];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[116] <= 1'b0;
    end else if(N747) begin
      rdata_o[116] <= cache_line_d[116];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[115] <= 1'b0;
    end else if(N747) begin
      rdata_o[115] <= cache_line_d[115];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[114] <= 1'b0;
    end else if(N747) begin
      rdata_o[114] <= cache_line_d[114];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[113] <= 1'b0;
    end else if(N747) begin
      rdata_o[113] <= cache_line_d[113];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[112] <= 1'b0;
    end else if(N747) begin
      rdata_o[112] <= cache_line_d[112];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[111] <= 1'b0;
    end else if(N747) begin
      rdata_o[111] <= cache_line_d[111];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[110] <= 1'b0;
    end else if(N747) begin
      rdata_o[110] <= cache_line_d[110];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[109] <= 1'b0;
    end else if(N747) begin
      rdata_o[109] <= cache_line_d[109];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[108] <= 1'b0;
    end else if(N747) begin
      rdata_o[108] <= cache_line_d[108];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[107] <= 1'b0;
    end else if(N747) begin
      rdata_o[107] <= cache_line_d[107];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[106] <= 1'b0;
    end else if(N747) begin
      rdata_o[106] <= cache_line_d[106];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[105] <= 1'b0;
    end else if(N747) begin
      rdata_o[105] <= cache_line_d[105];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[104] <= 1'b0;
    end else if(N747) begin
      rdata_o[104] <= cache_line_d[104];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[103] <= 1'b0;
    end else if(N747) begin
      rdata_o[103] <= cache_line_d[103];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[102] <= 1'b0;
    end else if(N747) begin
      rdata_o[102] <= cache_line_d[102];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[101] <= 1'b0;
    end else if(N747) begin
      rdata_o[101] <= cache_line_d[101];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[100] <= 1'b0;
    end else if(N747) begin
      rdata_o[100] <= cache_line_d[100];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[99] <= 1'b0;
    end else if(N747) begin
      rdata_o[99] <= cache_line_d[99];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[98] <= 1'b0;
    end else if(N750) begin
      rdata_o[98] <= cache_line_d[98];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[97] <= 1'b0;
    end else if(N750) begin
      rdata_o[97] <= cache_line_d[97];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[96] <= 1'b0;
    end else if(N750) begin
      rdata_o[96] <= cache_line_d[96];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[95] <= 1'b0;
    end else if(N750) begin
      rdata_o[95] <= cache_line_d[95];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[94] <= 1'b0;
    end else if(N750) begin
      rdata_o[94] <= cache_line_d[94];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[93] <= 1'b0;
    end else if(N750) begin
      rdata_o[93] <= cache_line_d[93];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[92] <= 1'b0;
    end else if(N750) begin
      rdata_o[92] <= cache_line_d[92];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[91] <= 1'b0;
    end else if(N750) begin
      rdata_o[91] <= cache_line_d[91];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[90] <= 1'b0;
    end else if(N750) begin
      rdata_o[90] <= cache_line_d[90];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[89] <= 1'b0;
    end else if(N750) begin
      rdata_o[89] <= cache_line_d[89];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[88] <= 1'b0;
    end else if(N750) begin
      rdata_o[88] <= cache_line_d[88];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[87] <= 1'b0;
    end else if(N750) begin
      rdata_o[87] <= cache_line_d[87];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[86] <= 1'b0;
    end else if(N750) begin
      rdata_o[86] <= cache_line_d[86];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[85] <= 1'b0;
    end else if(N750) begin
      rdata_o[85] <= cache_line_d[85];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[84] <= 1'b0;
    end else if(N750) begin
      rdata_o[84] <= cache_line_d[84];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[83] <= 1'b0;
    end else if(N750) begin
      rdata_o[83] <= cache_line_d[83];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[82] <= 1'b0;
    end else if(N750) begin
      rdata_o[82] <= cache_line_d[82];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[81] <= 1'b0;
    end else if(N750) begin
      rdata_o[81] <= cache_line_d[81];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[80] <= 1'b0;
    end else if(N750) begin
      rdata_o[80] <= cache_line_d[80];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[79] <= 1'b0;
    end else if(N750) begin
      rdata_o[79] <= cache_line_d[79];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[78] <= 1'b0;
    end else if(N750) begin
      rdata_o[78] <= cache_line_d[78];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[77] <= 1'b0;
    end else if(N750) begin
      rdata_o[77] <= cache_line_d[77];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[76] <= 1'b0;
    end else if(N750) begin
      rdata_o[76] <= cache_line_d[76];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[75] <= 1'b0;
    end else if(N750) begin
      rdata_o[75] <= cache_line_d[75];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[74] <= 1'b0;
    end else if(N750) begin
      rdata_o[74] <= cache_line_d[74];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[73] <= 1'b0;
    end else if(N750) begin
      rdata_o[73] <= cache_line_d[73];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[72] <= 1'b0;
    end else if(N750) begin
      rdata_o[72] <= cache_line_d[72];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[71] <= 1'b0;
    end else if(N750) begin
      rdata_o[71] <= cache_line_d[71];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[70] <= 1'b0;
    end else if(N750) begin
      rdata_o[70] <= cache_line_d[70];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[69] <= 1'b0;
    end else if(N750) begin
      rdata_o[69] <= cache_line_d[69];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[68] <= 1'b0;
    end else if(N750) begin
      rdata_o[68] <= cache_line_d[68];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[67] <= 1'b0;
    end else if(N750) begin
      rdata_o[67] <= cache_line_d[67];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[66] <= 1'b0;
    end else if(N750) begin
      rdata_o[66] <= cache_line_d[66];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[65] <= 1'b0;
    end else if(N750) begin
      rdata_o[65] <= cache_line_d[65];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[64] <= 1'b0;
    end else if(N750) begin
      rdata_o[64] <= cache_line_d[64];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[63] <= 1'b0;
    end else if(N750) begin
      rdata_o[63] <= cache_line_d[63];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[62] <= 1'b0;
    end else if(N750) begin
      rdata_o[62] <= cache_line_d[62];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[61] <= 1'b0;
    end else if(N750) begin
      rdata_o[61] <= cache_line_d[61];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[60] <= 1'b0;
    end else if(N750) begin
      rdata_o[60] <= cache_line_d[60];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[59] <= 1'b0;
    end else if(N750) begin
      rdata_o[59] <= cache_line_d[59];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[58] <= 1'b0;
    end else if(N750) begin
      rdata_o[58] <= cache_line_d[58];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[57] <= 1'b0;
    end else if(N750) begin
      rdata_o[57] <= cache_line_d[57];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[56] <= 1'b0;
    end else if(N750) begin
      rdata_o[56] <= cache_line_d[56];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[55] <= 1'b0;
    end else if(N750) begin
      rdata_o[55] <= cache_line_d[55];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[54] <= 1'b0;
    end else if(N750) begin
      rdata_o[54] <= cache_line_d[54];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[53] <= 1'b0;
    end else if(N750) begin
      rdata_o[53] <= cache_line_d[53];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[52] <= 1'b0;
    end else if(N750) begin
      rdata_o[52] <= cache_line_d[52];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[51] <= 1'b0;
    end else if(N750) begin
      rdata_o[51] <= cache_line_d[51];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[50] <= 1'b0;
    end else if(N750) begin
      rdata_o[50] <= cache_line_d[50];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[49] <= 1'b0;
    end else if(N750) begin
      rdata_o[49] <= cache_line_d[49];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[48] <= 1'b0;
    end else if(N750) begin
      rdata_o[48] <= cache_line_d[48];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[47] <= 1'b0;
    end else if(N750) begin
      rdata_o[47] <= cache_line_d[47];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[46] <= 1'b0;
    end else if(N750) begin
      rdata_o[46] <= cache_line_d[46];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[45] <= 1'b0;
    end else if(N750) begin
      rdata_o[45] <= cache_line_d[45];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[44] <= 1'b0;
    end else if(N750) begin
      rdata_o[44] <= cache_line_d[44];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[43] <= 1'b0;
    end else if(N750) begin
      rdata_o[43] <= cache_line_d[43];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[42] <= 1'b0;
    end else if(N750) begin
      rdata_o[42] <= cache_line_d[42];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[41] <= 1'b0;
    end else if(N750) begin
      rdata_o[41] <= cache_line_d[41];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[40] <= 1'b0;
    end else if(N750) begin
      rdata_o[40] <= cache_line_d[40];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[39] <= 1'b0;
    end else if(N750) begin
      rdata_o[39] <= cache_line_d[39];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[38] <= 1'b0;
    end else if(N750) begin
      rdata_o[38] <= cache_line_d[38];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[37] <= 1'b0;
    end else if(N750) begin
      rdata_o[37] <= cache_line_d[37];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[36] <= 1'b0;
    end else if(N750) begin
      rdata_o[36] <= cache_line_d[36];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[35] <= 1'b0;
    end else if(N750) begin
      rdata_o[35] <= cache_line_d[35];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[34] <= 1'b0;
    end else if(N750) begin
      rdata_o[34] <= cache_line_d[34];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[33] <= 1'b0;
    end else if(N750) begin
      rdata_o[33] <= cache_line_d[33];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[32] <= 1'b0;
    end else if(N750) begin
      rdata_o[32] <= cache_line_d[32];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[31] <= 1'b0;
    end else if(N750) begin
      rdata_o[31] <= cache_line_d[31];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[30] <= 1'b0;
    end else if(N750) begin
      rdata_o[30] <= cache_line_d[30];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[29] <= 1'b0;
    end else if(N750) begin
      rdata_o[29] <= cache_line_d[29];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[28] <= 1'b0;
    end else if(N750) begin
      rdata_o[28] <= cache_line_d[28];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[27] <= 1'b0;
    end else if(N750) begin
      rdata_o[27] <= cache_line_d[27];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[26] <= 1'b0;
    end else if(N750) begin
      rdata_o[26] <= cache_line_d[26];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[25] <= 1'b0;
    end else if(N750) begin
      rdata_o[25] <= cache_line_d[25];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[24] <= 1'b0;
    end else if(N750) begin
      rdata_o[24] <= cache_line_d[24];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[23] <= 1'b0;
    end else if(N750) begin
      rdata_o[23] <= cache_line_d[23];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[22] <= 1'b0;
    end else if(N750) begin
      rdata_o[22] <= cache_line_d[22];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[21] <= 1'b0;
    end else if(N750) begin
      rdata_o[21] <= cache_line_d[21];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[20] <= 1'b0;
    end else if(N750) begin
      rdata_o[20] <= cache_line_d[20];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[19] <= 1'b0;
    end else if(N750) begin
      rdata_o[19] <= cache_line_d[19];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[18] <= 1'b0;
    end else if(N750) begin
      rdata_o[18] <= cache_line_d[18];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[17] <= 1'b0;
    end else if(N750) begin
      rdata_o[17] <= cache_line_d[17];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[16] <= 1'b0;
    end else if(N750) begin
      rdata_o[16] <= cache_line_d[16];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[15] <= 1'b0;
    end else if(N750) begin
      rdata_o[15] <= cache_line_d[15];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[14] <= 1'b0;
    end else if(N750) begin
      rdata_o[14] <= cache_line_d[14];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[13] <= 1'b0;
    end else if(N750) begin
      rdata_o[13] <= cache_line_d[13];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[12] <= 1'b0;
    end else if(N750) begin
      rdata_o[12] <= cache_line_d[12];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[11] <= 1'b0;
    end else if(N750) begin
      rdata_o[11] <= cache_line_d[11];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[10] <= 1'b0;
    end else if(N750) begin
      rdata_o[10] <= cache_line_d[10];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[9] <= 1'b0;
    end else if(N750) begin
      rdata_o[9] <= cache_line_d[9];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[8] <= 1'b0;
    end else if(N750) begin
      rdata_o[8] <= cache_line_d[8];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[7] <= 1'b0;
    end else if(N750) begin
      rdata_o[7] <= cache_line_d[7];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[6] <= 1'b0;
    end else if(N750) begin
      rdata_o[6] <= cache_line_d[6];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[5] <= 1'b0;
    end else if(N750) begin
      rdata_o[5] <= cache_line_d[5];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[4] <= 1'b0;
    end else if(N750) begin
      rdata_o[4] <= cache_line_d[4];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[3] <= 1'b0;
    end else if(N750) begin
      rdata_o[3] <= cache_line_d[3];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[2] <= 1'b0;
    end else if(N750) begin
      rdata_o[2] <= cache_line_d[2];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[1] <= 1'b0;
    end else if(N750) begin
      rdata_o[1] <= cache_line_d[1];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      rdata_o[0] <= 1'b0;
    end else if(N750) begin
      rdata_o[0] <= cache_line_d[0];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      addr_offset_q[1] <= 1'b0;
    end else if(N760) begin
      addr_offset_q[1] <= addr_offset_d[1];
    end 
  end


  always @(posedge clk_i or posedge N678) begin
    if(N678) begin
      addr_offset_q[0] <= 1'b0;
    end else if(N760) begin
      addr_offset_q[0] <= addr_offset_d[0];
    end 
  end

  assign N761 = ~N317;
  assign N762 = ~type_i;
  assign N763 = ~state_q[2];
  assign N764 = ~state_q[1];
  assign N765 = ~state_q[0];
  assign N766 = N763 | state_q[3];
  assign N767 = N764 | N766;
  assign N768 = N765 | N767;
  assign N769 = ~N768;
  assign N408 = 1'b1 ^ N317;
  assign N666 = N317 ^ 1'b1;
  assign N407 = ~N408;
  assign N77 = ~axi_resp_i[81];
  assign N78 = ~axi_resp_i[79];
  assign N76 = axi_resp_i[81] & axi_resp_i[79];
  assign axi_req_o[34:31] = (N0)? addr_i[3:0] : 
                            (N1)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N762;
  assign N1 = axi_req_o[18];
  assign { N73, N72 } = (N2)? { 1'b0, 1'b1 } : 
                        (N3)? { 1'b1, 1'b0 } : 
                        (N4)? { 1'b1, 1'b1 } : 
                        (N5)? { 1'b0, 1'b0 } : 1'b0;
  assign N2 = N76;
  assign N3 = N68;
  assign N4 = N70;
  assign N5 = N71;
  assign N75 = ~axi_resp_i[79];
  assign { N81, N80, N79 } = (N2)? { 1'b0, 1'b1, 1'b1 } : 
                             (N6)? { 1'b1, 1'b0, 1'b0 } : 
                             (N7)? { 1'b0, 1'b1, 1'b1 } : 1'b0;
  assign N6 = N77;
  assign N7 = N78;
  assign N82 = (N0)? N66 : 
               (N1)? 1'b0 : 1'b0;
  assign { N85, N84, N83 } = (N0)? { 1'b0, N73, N72 } : 
                             (N1)? { N81, N80, N79 } : 1'b0;
  assign N86 = (N0)? 1'b0 : 
               (N1)? N75 : 1'b0;
  assign { N90, N89, N88 } = (N8)? { axi_req_o[18:18], N762, 1'b0 } : 
                             (N9)? { 1'b0, 1'b0, axi_req_o[197:197] } : 1'b0;
  assign N8 = we_i;
  assign N9 = N65;
  assign N91 = (N8)? N86 : 
               (N9)? axi_req_o[197] : 1'b0;
  assign N92 = (N8)? N82 : 
               (N9)? axi_resp_i[80] : 1'b0;
  assign { N95, N94, N93 } = (N8)? { N85, N84, N83 } : 
                             (N9)? { 1'b1, 1'b1, axi_req_o[18:18] } : 1'b0;
  assign { N100, N99, N98, N97, N96 } = (N10)? { N90, N89, we_i, N88, N65 } : 
                                        (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N10 = req_i;
  assign N11 = N64;
  assign N101 = (N10)? N91 : 
                (N11)? 1'b0 : 1'b0;
  assign N102 = (N10)? N92 : 
                (N11)? 1'b0 : 1'b0;
  assign { N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103 } = (N12)? wdata_i[63:0] : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N13)? wdata_i[127:64] : 1'b0;
  assign N12 = N317;
  assign N13 = N761;
  assign { N174, N173, N172, N171, N170, N169, N168, N167 } = (N12)? be_i[7:0] : 
                                                              (N13)? be_i[15:8] : 1'b0;
  assign { N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175 } = (N0)? { wdata_i[63:0], be_i[7:0] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N1)? { N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N174, N173, N172, N171, N170, N169, N168, N167 } : 1'b0;
  assign N247 = (N3)? N666 : 
                (N2)? N666 : 1'b0;
  assign { N249, N248 } = (N3)? { 1'b1, 1'b0 } : 
                          (N4)? { 1'b0, 1'b1 } : 
                          (N2)? { 1'b0, N317 } : 1'b0;
  assign N250 = (N3)? 1'b0 : 
                (N4)? 1'b0 : 
                (N2)? N761 : 
                (N5)? 1'b0 : 1'b0;
  assign { N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253 } = (N12)? wdata_i[63:0] : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N13)? wdata_i[127:64] : 1'b0;
  assign { N325, N324, N323, N322, N321, N320, N319, N318 } = (N12)? be_i[7:0] : 
                                                              (N13)? be_i[15:8] : 1'b0;
  assign { N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326 } = (N14)? { N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N325, N324, N323, N322, N321, N320, N319, N318 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N252)? { wdata_i[63:0], be_i[7:0] } : 1'b0;
  assign N14 = axi_req_o[197];
  assign N400 = (N13)? 1'b1 : 
                (N12)? 1'b0 : 
                (N15)? 1'b0 : 1'b0;
  assign N15 = 1'b0;
  assign N401 = (N13)? axi_resp_i[79] : 
                (N12)? 1'b0 : 
                (N15)? 1'b0 : 1'b0;
  assign { N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409 } = (N16)? { axi_resp_i[3:3], axi_resp_i[4:4], axi_resp_i[5:5], axi_resp_i[6:6], axi_resp_i[7:7], axi_resp_i[8:8], axi_resp_i[9:9], axi_resp_i[10:10], axi_resp_i[11:11], axi_resp_i[12:12], axi_resp_i[13:13], axi_resp_i[14:14], axi_resp_i[15:15], axi_resp_i[16:16], axi_resp_i[17:17], axi_resp_i[18:18], axi_resp_i[19:19], axi_resp_i[20:20], axi_resp_i[21:21], axi_resp_i[22:22], axi_resp_i[23:23], axi_resp_i[24:24], axi_resp_i[25:25], axi_resp_i[26:26], axi_resp_i[27:27], axi_resp_i[28:28], axi_resp_i[29:29], axi_resp_i[30:30], axi_resp_i[31:31], axi_resp_i[32:32], axi_resp_i[33:33], axi_resp_i[34:34], axi_resp_i[35:35], axi_resp_i[36:36], axi_resp_i[37:37], axi_resp_i[38:38], axi_resp_i[39:39], axi_resp_i[40:40], axi_resp_i[41:41], axi_resp_i[42:42], axi_resp_i[43:43], axi_resp_i[44:44], axi_resp_i[45:45], axi_resp_i[46:46], axi_resp_i[47:47], axi_resp_i[48:48], axi_resp_i[49:49], axi_resp_i[50:50], axi_resp_i[51:51], axi_resp_i[52:52], axi_resp_i[53:53], axi_resp_i[54:54], axi_resp_i[55:55], axi_resp_i[56:56], axi_resp_i[57:57], axi_resp_i[58:58], axi_resp_i[59:59], axi_resp_i[60:60], axi_resp_i[61:61], axi_resp_i[62:62], axi_resp_i[63:63], axi_resp_i[64:64], axi_resp_i[65:65], axi_resp_i[66:66] } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N17)? { rdata_o[0:0], rdata_o[1:1], rdata_o[2:2], rdata_o[3:3], rdata_o[4:4], rdata_o[5:5], rdata_o[6:6], rdata_o[7:7], rdata_o[8:8], rdata_o[9:9], rdata_o[10:10], rdata_o[11:11], rdata_o[12:12], rdata_o[13:13], rdata_o[14:14], rdata_o[15:15], rdata_o[16:16], rdata_o[17:17], rdata_o[18:18], rdata_o[19:19], rdata_o[20:20], rdata_o[21:21], rdata_o[22:22], rdata_o[23:23], rdata_o[24:24], rdata_o[25:25], rdata_o[26:26], rdata_o[27:27], rdata_o[28:28], rdata_o[29:29], rdata_o[30:30], rdata_o[31:31], rdata_o[32:32], rdata_o[33:33], rdata_o[34:34], rdata_o[35:35], rdata_o[36:36], rdata_o[37:37], rdata_o[38:38], rdata_o[39:39], rdata_o[40:40], rdata_o[41:41], rdata_o[42:42], rdata_o[43:43], rdata_o[44:44], rdata_o[45:45], rdata_o[46:46], rdata_o[47:47], rdata_o[48:48], rdata_o[49:49], rdata_o[50:50], rdata_o[51:51], rdata_o[52:52], rdata_o[53:53], rdata_o[54:54], rdata_o[55:55], rdata_o[56:56], rdata_o[57:57], rdata_o[58:58], rdata_o[59:59], rdata_o[60:60], rdata_o[61:61], rdata_o[62:62], rdata_o[63:63] } : 1'b0;
  assign N16 = N407;
  assign N17 = N408;
  assign { N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474 } = (N17)? { axi_resp_i[3:3], axi_resp_i[4:4], axi_resp_i[5:5], axi_resp_i[6:6], axi_resp_i[7:7], axi_resp_i[8:8], axi_resp_i[9:9], axi_resp_i[10:10], axi_resp_i[11:11], axi_resp_i[12:12], axi_resp_i[13:13], axi_resp_i[14:14], axi_resp_i[15:15], axi_resp_i[16:16], axi_resp_i[17:17], axi_resp_i[18:18], axi_resp_i[19:19], axi_resp_i[20:20], axi_resp_i[21:21], axi_resp_i[22:22], axi_resp_i[23:23], axi_resp_i[24:24], axi_resp_i[25:25], axi_resp_i[26:26], axi_resp_i[27:27], axi_resp_i[28:28], axi_resp_i[29:29], axi_resp_i[30:30], axi_resp_i[31:31], axi_resp_i[32:32], axi_resp_i[33:33], axi_resp_i[34:34], axi_resp_i[35:35], axi_resp_i[36:36], axi_resp_i[37:37], axi_resp_i[38:38], axi_resp_i[39:39], axi_resp_i[40:40], axi_resp_i[41:41], axi_resp_i[42:42], axi_resp_i[43:43], axi_resp_i[44:44], axi_resp_i[45:45], axi_resp_i[46:46], axi_resp_i[47:47], axi_resp_i[48:48], axi_resp_i[49:49], axi_resp_i[50:50], axi_resp_i[51:51], axi_resp_i[52:52], axi_resp_i[53:53], axi_resp_i[54:54], axi_resp_i[55:55], axi_resp_i[56:56], axi_resp_i[57:57], axi_resp_i[58:58], axi_resp_i[59:59], axi_resp_i[60:60], axi_resp_i[61:61], axi_resp_i[62:62], axi_resp_i[63:63], axi_resp_i[64:64], axi_resp_i[65:65], axi_resp_i[66:66] } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N473)? { rdata_o[64:64], rdata_o[65:65], rdata_o[66:66], rdata_o[67:67], rdata_o[68:68], rdata_o[69:69], rdata_o[70:70], rdata_o[71:71], rdata_o[72:72], rdata_o[73:73], rdata_o[74:74], rdata_o[75:75], rdata_o[76:76], rdata_o[77:77], rdata_o[78:78], rdata_o[79:79], rdata_o[80:80], rdata_o[81:81], rdata_o[82:82], rdata_o[83:83], rdata_o[84:84], rdata_o[85:85], rdata_o[86:86], rdata_o[87:87], rdata_o[88:88], rdata_o[89:89], rdata_o[90:90], rdata_o[91:91], rdata_o[92:92], rdata_o[93:93], rdata_o[94:94], rdata_o[95:95], rdata_o[96:96], rdata_o[97:97], rdata_o[98:98], rdata_o[99:99], rdata_o[100:100], rdata_o[101:101], rdata_o[102:102], rdata_o[103:103], rdata_o[104:104], rdata_o[105:105], rdata_o[106:106], rdata_o[107:107], rdata_o[108:108], rdata_o[109:109], rdata_o[110:110], rdata_o[111:111], rdata_o[112:112], rdata_o[113:113], rdata_o[114:114], rdata_o[115:115], rdata_o[116:116], rdata_o[117:117], rdata_o[118:118], rdata_o[119:119], rdata_o[120:120], rdata_o[121:121], rdata_o[122:122], rdata_o[123:123], rdata_o[124:124], rdata_o[125:125], rdata_o[126:126], rdata_o[127:127] } : 1'b0;
  assign { N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538 } = (N18)? { N474, N475, N476, N477, N478, N479, N480, N481, N482, N483, N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, N507, N508, N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519, N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536, N537, N409, N410, N411, N412, N413, N414, N415, N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, N464, N465, N466, N467, N468, N469, N470, N471, N472 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N19)? { rdata_o[127:64], axi_resp_i[66:3] } : 1'b0;
  assign N18 = N769;
  assign N19 = N768;
  assign N667 = (N20)? N405 : 
                (N404)? 1'b0 : 1'b0;
  assign N20 = axi_resp_i[71];
  assign cnt_d[0] = (N21)? N101 : 
                    (N22)? N247 : 
                    (N23)? N666 : 
                    (N24)? N666 : 
                    (N675)? N317 : 1'b0;
  assign N21 = N32;
  assign N22 = N40;
  assign N23 = N48;
  assign N24 = axi_req_o[0];
  assign state_d = (N21)? { 1'b0, N95, N94, N93 } : 
                   (N25)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N22)? { 1'b0, N249, N248, 1'b1 } : 
                   (N26)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N23)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N27)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                   (N24)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                   (N28)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                   (N675)? state_q : 1'b0;
  assign N25 = N36;
  assign N26 = N44;
  assign N27 = axi_req_o[99];
  assign N28 = N63;
  assign addr_offset_d = (N21)? { 1'b0, addr_i[3:3] } : 
                         (N675)? addr_offset_q : 1'b0;
  assign { axi_req_o[23:23], axi_req_o[1:1] } = (N21)? { N97, N96 } : 
                                                (N677)? { 1'b0, 1'b0 } : 1'b0;
  assign { axi_req_o[202:202], axi_req_o[174:100] } = (N21)? { N100, N98, wdata_i[63:0], be_i[7:0], N99, N98 } : 
                                                      (N25)? { 1'b0, 1'b1, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 
                                                      (N22)? { 1'b1, 1'b1, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N761, 1'b1 } : 
                                                      (N26)? { 1'b1, 1'b1, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 
                                                      (N23)? { 1'b0, 1'b0, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N400, 1'b1 } : 
                                                      (N27)? { 1'b0, 1'b0, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 
                                                      (N24)? { 1'b0, 1'b0, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 
                                                      (N28)? { 1'b0, 1'b0, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 
                                                      (N675)? { 1'b0, 1'b0, wdata_i[63:0], be_i[7:0], 1'b0, 1'b0 } : 1'b0;
  assign gnt_o = (N21)? N102 : 
                 (N25)? axi_resp_i[81] : 
                 (N22)? N250 : 
                 (N26)? axi_resp_i[81] : 
                 (N23)? N401 : 
                 (N27)? 1'b0 : 
                 (N24)? 1'b0 : 
                 (N28)? 1'b0 : 
                 (N675)? 1'b0 : 1'b0;
  assign id_o = (N21)? axi_resp_i[70:67] : 
                (N25)? axi_resp_i[70:67] : 
                (N22)? axi_resp_i[70:67] : 
                (N26)? axi_resp_i[70:67] : 
                (N23)? axi_resp_i[70:67] : 
                (N27)? axi_resp_i[77:74] : 
                (N24)? axi_resp_i[70:67] : 
                (N28)? id_q : 
                (N675)? axi_resp_i[70:67] : 1'b0;
  assign valid_o = (N21)? 1'b0 : 
                   (N25)? 1'b0 : 
                   (N22)? 1'b0 : 
                   (N26)? 1'b0 : 
                   (N23)? 1'b0 : 
                   (N27)? axi_resp_i[78] : 
                   (N24)? 1'b0 : 
                   (N28)? 1'b1 : 
                   (N675)? 1'b0 : 1'b0;
  assign cache_line_d = (N24)? { N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538 } : 
                        (N675)? rdata_o : 1'b0;
  assign critical_word_valid_o = (N21)? 1'b0 : 
                                 (N25)? 1'b0 : 
                                 (N22)? 1'b0 : 
                                 (N26)? 1'b0 : 
                                 (N23)? 1'b0 : 
                                 (N27)? 1'b0 : 
                                 (N24)? N667 : 
                                 (N28)? 1'b0 : 
                                 (N675)? 1'b0 : 1'b0;
  assign id_d = (N24)? axi_resp_i[70:67] : 
                (N675)? id_q : 1'b0;
  assign axi_req_o[197] = type_i;
  assign axi_req_o[18] = type_i;
  assign N29 = ~state_q[3];
  assign N36 = ~N35;
  assign N40 = ~N39;
  assign N44 = ~N43;
  assign N48 = ~N47;
  assign N52 = ~N51;
  assign N59 = N770 | N771;
  assign N770 = ~N55;
  assign N771 = ~N58;
  assign N63 = ~N62;
  assign axi_req_o[99] = N52;
  assign axi_req_o[0] = N59;
  assign N64 = ~req_i;
  assign N65 = ~we_i;
  assign N66 = axi_resp_i[81] & axi_resp_i[79];
  assign N68 = ~N67;
  assign N70 = ~N69;
  assign N74 = ~axi_resp_i[79];
  assign N87 = ~axi_resp_i[80];
  assign N251 = ~axi_resp_i[81];
  assign N252 = ~axi_req_o[197];
  assign N398 = axi_resp_i[79] | N761;
  assign N399 = ~N398;
  assign N402 = ~axi_resp_i[78];
  assign N403 = axi_req_o[0];
  assign N404 = ~axi_resp_i[71];
  assign N406 = ~axi_resp_i[0];
  assign N473 = ~N408;
  assign N668 = N36 | N32;
  assign N669 = N40 | N668;
  assign N670 = N44 | N669;
  assign N671 = N48 | N670;
  assign N672 = axi_req_o[99] | N671;
  assign N673 = axi_req_o[0] | N672;
  assign N674 = N63 | N673;
  assign N675 = ~N674;
  assign N676 = ~N32;
  assign N677 = N676;
  assign N678 = ~rst_ni;
  assign N679 = N32 | N36;
  assign N680 = N679 | N40;
  assign N681 = N680 | N44;
  assign N682 = N681 | N48;
  assign N683 = N682 | axi_req_o[99];
  assign N684 = axi_resp_i[71] & axi_req_o[0];
  assign N685 = N406 & N684;
  assign N686 = N683 | N685;
  assign N687 = N404 & axi_req_o[0];
  assign N688 = N686 | N687;
  assign N689 = N688 | N63;
  assign N690 = ~N689;
  assign N691 = N32 | N36;
  assign N692 = N691 | N40;
  assign N693 = N692 | N44;
  assign N694 = N693 | N48;
  assign N695 = N694 | axi_req_o[99];
  assign N696 = N695 | N685;
  assign N697 = N404 & axi_req_o[0];
  assign N698 = N696 | N697;
  assign N699 = N698 | N63;
  assign N700 = ~N699;
  assign N701 = req_i & N32;
  assign N702 = we_i & N701;
  assign N703 = axi_req_o[18] & N702;
  assign N704 = N71 & N703;
  assign N705 = N65 & N701;
  assign N706 = N87 & N705;
  assign N707 = N704 | N706;
  assign N708 = N64 & N32;
  assign N709 = N707 | N708;
  assign N710 = N251 & N36;
  assign N711 = N709 | N710;
  assign N712 = N68 & N40;
  assign N713 = N317 & N712;
  assign N714 = N711 | N713;
  assign N715 = N71 & N40;
  assign N716 = N714 | N715;
  assign N717 = N251 & N44;
  assign N718 = N716 | N717;
  assign N719 = N761 & N48;
  assign N720 = N74 & N719;
  assign N721 = N718 | N720;
  assign N722 = N317 & N48;
  assign N723 = N721 | N722;
  assign N724 = N402 & axi_req_o[99];
  assign N725 = N723 | N724;
  assign N726 = N725 | N685;
  assign N727 = N726 | N697;
  assign N728 = ~N727;
  assign N729 = N761 & N712;
  assign N730 = N36 | N729;
  assign N731 = N70 & N40;
  assign N732 = N730 | N731;
  assign N733 = N76 & N40;
  assign N734 = N761 & N733;
  assign N735 = N732 | N734;
  assign N736 = N735 | N715;
  assign N737 = N736 | N44;
  assign N738 = N737 | N719;
  assign N739 = N399 & N48;
  assign N740 = N738 | N739;
  assign N741 = N740 | axi_req_o[99];
  assign N742 = N741 | N697;
  assign N743 = N742 | N63;
  assign N744 = ~N743;
  assign N745 = N695 | N697;
  assign N746 = N745 | N63;
  assign N747 = ~N746;
  assign N748 = N683 | N687;
  assign N749 = N748 | N63;
  assign N750 = ~N749;
  assign N751 = N702 | N706;
  assign N752 = N751 | N708;
  assign N753 = N752 | N36;
  assign N754 = N753 | N40;
  assign N755 = N754 | N44;
  assign N756 = N755 | N48;
  assign N757 = N756 | axi_req_o[99];
  assign N758 = N757 | axi_req_o[0];
  assign N759 = N758 | N63;
  assign N760 = ~N759;

endmodule