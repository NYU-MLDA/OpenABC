module bp_cce_reg_num_lce_p2_num_cce_p1_addr_width_p22_lce_assoc_p8_lce_sets_p64_block_size_in_bytes_p64
(
  clk_i,
  reset_i,
  decoded_inst_i,
  lce_req_i,
  lce_data_resp_i,
  lce_resp_i,
  mem_resp_i,
  mem_data_resp_i,
  alu_res_i,
  mov_src_i,
  dir_way_group_o_i,
  dir_way_group_v_o_i,
  dir_coh_state_o_i,
  dir_entry_v_o_i,
  dir_pending_o_i,
  dir_pending_v_o_i,
  gad_sharers_hits_i,
  gad_sharers_ways_i,
  gad_sharers_coh_states_i,
  gad_req_addr_way_i,
  gad_coh_state_i,
  gad_lru_tag_i,
  gad_transfer_lce_i,
  gad_transfer_lce_way_i,
  gad_transfer_flag_i,
  gad_replacement_flag_i,
  gad_upgrade_flag_i,
  gad_invalidate_flag_i,
  gad_exclusive_flag_i,
  req_lce_o,
  req_addr_o,
  req_tag_o,
  req_addr_way_o,
  req_coh_state_o,
  lru_way_o,
  lru_addr_o,
  transfer_lce_o,
  transfer_lce_way_o,
  next_coh_state_o,
  cache_block_data_o,
  flags_o,
  gpr_o,
  ack_type_o,
  way_group_o,
  sharers_hits_o,
  sharers_ways_o,
  sharers_coh_states_o
);

  input [122:0] decoded_inst_i;
  input [29:0] lce_req_i;
  input [536:0] lce_data_resp_i;
  input [25:0] lce_resp_i;
  input [54:0] mem_resp_i;
  input [538:0] mem_data_resp_i;
  input [15:0] alu_res_i;
  input [15:0] mov_src_i;
  input [191:0] dir_way_group_o_i;
  input [1:0] dir_coh_state_o_i;
  input [1:0] gad_sharers_hits_i;
  input [5:0] gad_sharers_ways_i;
  input [3:0] gad_sharers_coh_states_i;
  input [2:0] gad_req_addr_way_i;
  input [1:0] gad_coh_state_i;
  input [9:0] gad_lru_tag_i;
  input [0:0] gad_transfer_lce_i;
  input [2:0] gad_transfer_lce_way_i;
  output [0:0] req_lce_o;
  output [21:0] req_addr_o;
  output [9:0] req_tag_o;
  output [2:0] req_addr_way_o;
  output [1:0] req_coh_state_o;
  output [2:0] lru_way_o;
  output [21:0] lru_addr_o;
  output [0:0] transfer_lce_o;
  output [2:0] transfer_lce_way_o;
  output [1:0] next_coh_state_o;
  output [511:0] cache_block_data_o;
  output [11:0] flags_o;
  output [63:0] gpr_o;
  output [1:0] ack_type_o;
  output [191:0] way_group_o;
  output [1:0] sharers_hits_o;
  output [5:0] sharers_ways_o;
  output [3:0] sharers_coh_states_o;
  input clk_i;
  input reset_i;
  input dir_way_group_v_o_i;
  input dir_entry_v_o_i;
  input dir_pending_o_i;
  input dir_pending_v_o_i;
  input gad_transfer_flag_i;
  input gad_replacement_flag_i;
  input gad_upgrade_flag_i;
  input gad_invalidate_flag_i;
  input gad_exclusive_flag_i;
  wire [9:0] req_tag_o;
  wire [1:0] req_coh_state_o,req_coh_state_n;
  wire [191:0] way_group_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,
  N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,
  N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,
  N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,
  N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,
  N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,
  N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,
  N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,
  N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,
  N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,
  N390,N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,
  N406,N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,
  N422,N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N435,N436,N437,
  N438,N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,
  N454,N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,
  N470,N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,N485,
  N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,N501,
  N502,N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,N514,N515,N516,N517,
  N518,N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,N529,N530,N531,N532,N533,
  N534,N535,N536,N537,N538,N539,N540,N541,N542,N543,N544,N545,N546,N547,N548,N549,
  N550,N551,N552,N553,N554,N555,N556,N557,N558,N559,N560,N561,N562,N563,N564,N565,
  N566,N567,N568,N569,N570,N571,N572,N573,N574,N575,N576,N577,N578,N579,N580,N581,
  N582,N583,N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,N594,N595,N596,N597,
  N598,N599,N600,N601,N602,N603,N604,N605,N606,N607,N608,N609,N610,N611,N612,N613,
  N614,N615,N616,N617,N618,N619,N620,N621,N622,N623,N624,N625,N626,N627,N628,N629,
  N630,N631,N632,N633,N634,N635,N636,N637,N638,N639,N640,N641,N642,N643,N644,N645,
  N646,N647,N648,N649,N650,N651,N652,N653,N654,N655,N656,N657,N658,N659,N660,N661,
  N662,N663,N664,N665,N666,N667,N668,N669,N670,N671,N672,N673,N674,N675,N676,N677,
  N678,N679,N680,N681,N682,N683,N684,N685,N686,N687,N688,N689,N690,N691,N692,N693,
  N694,N695,N696,N697,N698,N699,N700,N701,N702,N703,N704,N705,N706,N707,N708,N709,
  N710,N711,N712,N713,N714,N715,N716,N717,N718,N719,N720,N721,N722,N723,N724,N725,
  N726,N727,N728,N729,N730,N731,N732,N733,N734,N735,N736,N737,N738,N739,N740,N741,
  N742,N743,N744,N745,N746,N747,N748,N749,N750,N751,N752,N753,N754,N755,N756,N757,
  N758,N759,N760,N761,N762,N763,N764,N765,N766,N767,N768,N769,N770,N771,N772,N773,
  N774,N775,N776,N777,N778,N779,N780,N781,N782,N783,N784,N785,N786,N787,N788,N789,
  N790,N791,N792,N793,N794,N795,N796,N797,N798,N799,N800,N801,N802,N803,N804,N805,
  N806,N807,N808,N809,N810,N811,N812,N813,N814,N815,N816,N817,N818,N819,N820,N821,
  N822,N823,N824,N825,N826,N827,N828,N829,N830,N831,N832,N833,N834,N835,N836,N837,
  N838,N839,N840,N841,N842,N843,N844,N845,N846,N847,N848,N849,N850,N851,N852,N853,
  N854,N855,N856,N857,N858,N859,N860,N861,N862,N863,N864,N865,N866,N867,N868,N869,
  N870,N871,N872,N873,N874,N875,N876,N877,N878,N879,N880,N881,N882,N883,N884,N885,
  N886,N887,N888,N889,N890,N891,N892,N893,N894,N895,N896,N897,N898,N899,N900,N901,
  N902,N903,N904,N905,N906,N907,N908,N909,N910,N911,N912,N913,N914,N915,N916,N917,
  N918,N919,N920,N921,N922,N923,N924,N925,N926,N927,N928,N929,N930,N931,N932,N933,
  N934,N935,N936,N937,N938,N939,N940,N941,N942,N943,N944,N945,N946,N947,N948,N949,
  N950,N951,N952,N953,N954,N955,N956,N957,N958,N959,N960,N961,N962,N963,N964,N965,
  N966,N967,N968,N969,N970,N971,N972,N973,N974,N975,N976,N977,N978,N979,N980,N981,
  N982,N983,N984,N985,N986,N987,N988,N989,N990,N991,N992,N993,N994,N995,N996,N997,
  N998,N999,N1000,N1001,N1002,N1003,N1004,N1005,N1006,N1007,N1008,N1009,N1010,
  N1011,N1012,N1013,N1014,N1015,N1016,N1017,N1018,N1019,N1020,N1021,N1022,N1023,N1024,
  N1025,N1026,N1027,N1028,N1029,N1030,N1031,N1032,N1033,N1034,N1035,N1036,N1037,
  N1038,N1039,N1040,N1041,N1042,N1043,N1044,N1045,N1046,N1047,N1048,N1049,N1050,
  N1051,N1052,N1053,N1054,N1055,N1056,N1057,N1058,N1059,N1060,N1061,N1062,N1063,N1064,
  N1065,N1066,N1067,N1068,N1069,N1070,N1071,N1072,N1073,N1074,N1075,N1076,N1077,
  N1078,N1079,N1080,N1081,N1082,N1083,N1084,N1085,N1086,N1087,N1088,N1089,N1090,
  N1091,N1092,N1093,N1094,N1095;
  wire [0:0] req_lce_n,transfer_lce_n;
  wire [21:0] req_addr_n;
  wire [2:0] req_addr_way_n,lru_way_n,transfer_lce_way_n;
  wire [21:6] lru_addr_n;
  wire [511:0] cache_block_data_n;
  wire [10:0] flags_n;
  wire [63:0] gpr_n;
  reg [3:0] sharers_coh_states_o;
  reg [0:0] req_lce_o,transfer_lce_o;
  reg [21:0] req_addr_o,lru_addr_o;
  reg [2:0] req_addr_way_o,lru_way_o,transfer_lce_way_o;
  reg [1:0] req_coh_state_r,next_coh_state_o,ack_type_o,sharers_hits_o;
  reg [511:0] cache_block_data_o;
  reg [11:0] flags_o;
  reg [63:0] gpr_o;
  reg [191:0] way_group_r;
  reg [5:0] sharers_ways_o;
  assign req_tag_o[9] = req_addr_o[21];
  assign req_tag_o[8] = req_addr_o[20];
  assign req_tag_o[7] = req_addr_o[19];
  assign req_tag_o[6] = req_addr_o[18];
  assign req_tag_o[5] = req_addr_o[17];
  assign req_tag_o[4] = req_addr_o[16];
  assign req_tag_o[3] = req_addr_o[15];
  assign req_tag_o[2] = req_addr_o[14];
  assign req_tag_o[1] = req_addr_o[13];
  assign req_tag_o[0] = req_addr_o[12];
  assign N63 = N61 & N62;
  assign N64 = decoded_inst_i[87] | N62;
  assign N66 = N61 | decoded_inst_i[86];
  assign N68 = decoded_inst_i[87] & decoded_inst_i[86];
  assign N71 = N69 & N70;
  assign N72 = decoded_inst_i[85] | N70;
  assign N74 = N69 | decoded_inst_i[84];
  assign N76 = decoded_inst_i[85] & decoded_inst_i[84];
  assign N81 = N79 & N80;
  assign N82 = decoded_inst_i[83] | N80;
  assign N84 = N79 | decoded_inst_i[82];
  assign N86 = decoded_inst_i[83] & decoded_inst_i[82];
  assign N93 = N90 & N91;
  assign N94 = N93 & N92;
  assign N95 = decoded_inst_i[79] | decoded_inst_i[78];
  assign N96 = N95 | N92;
  assign N98 = decoded_inst_i[79] | N91;
  assign N99 = N98 | decoded_inst_i[77];
  assign N101 = N98 | N92;
  assign N103 = N90 | decoded_inst_i[78];
  assign N104 = N103 | decoded_inst_i[77];
  assign N106 = decoded_inst_i[79] & decoded_inst_i[77];
  assign N107 = decoded_inst_i[79] & decoded_inst_i[78];
  assign N111 = N109 & N110;
  assign N112 = decoded_inst_i[76] | N110;
  assign N114 = N109 | decoded_inst_i[75];
  assign N116 = decoded_inst_i[76] & decoded_inst_i[75];
  assign N120 = N118 & N119;
  assign N121 = decoded_inst_i[73] | N119;
  assign N123 = N118 | decoded_inst_i[72];
  assign N125 = decoded_inst_i[73] & decoded_inst_i[72];
  assign N1090 = ~decoded_inst_i[109];
  assign N1091 = decoded_inst_i[108] | N1090;
  assign N1092 = decoded_inst_i[107] | N1091;
  assign N1093 = decoded_inst_i[106] | N1092;
  assign N1094 = decoded_inst_i[105] | N1093;
  assign N1095 = ~N1094;
  assign req_coh_state_o = (N0)? dir_coh_state_o_i :
                           (N1)? req_coh_state_r : 1'b0;
  assign N0 = dir_entry_v_o_i;
  assign N1 = N59;
  assign way_group_o = (N2)? dir_way_group_o_i :
                       (N3)? way_group_r : 1'b0;
  assign N2 = dir_way_group_v_o_i;
  assign N3 = N60;
  assign req_lce_n[0] = (N4)? lce_req_i[28] :
                        (N5)? mem_resp_i[31] :
                        (N6)? mem_data_resp_i[515] :
                        (N7)? 1'b0 : 1'b0;
  assign N4 = N63;
  assign N5 = N65;
  assign N6 = N67;
  assign N7 = N68;
  assign req_addr_n = (N4)? lce_req_i[25:4] :
                      (N5)? mem_resp_i[27:6] :
                      (N6)? mem_data_resp_i[537:516] :
                      (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign req_addr_way_n = (N8)? gad_req_addr_way_i :
                          (N9)? mem_resp_i[30:28] :
                          (N10)? mem_data_resp_i[514:512] :
                          (N11)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = N71;
  assign N9 = N73;
  assign N10 = N75;
  assign N11 = N76;
  assign req_coh_state_n = (N12)? gad_coh_state_i :
                           (N208)? dir_coh_state_o_i :
                           (N78)? { 1'b0, 1'b0 } : 1'b0;
  assign N12 = decoded_inst_i[23];
  assign lru_way_n = (N13)? lce_req_i[3:1] :
                     (N14)? mem_resp_i[30:28] :
                     (N15)? mem_data_resp_i[514:512] :
                     (N16)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N13 = N81;
  assign N14 = N83;
  assign N15 = N85;
  assign N16 = N86;
  assign lru_addr_n = (N12)? { gad_lru_tag_i, req_addr_o[11:6] } :
                      (N87)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign transfer_lce_n[0] = (N17)? gad_transfer_lce_i[0] :
                             (N18)? mem_resp_i[5] : 1'b0;
  assign N17 = N88;
  assign N18 = decoded_inst_i[81];
  assign transfer_lce_way_n = (N17)? gad_transfer_lce_way_i :
                              (N18)? mem_resp_i[4:2] : 1'b0;
  assign cache_block_data_n = (N19)? lce_data_resp_i[511:0] :
                              (N20)? mem_data_resp_i[511:0] : 1'b0;
  assign N19 = N89;
  assign N20 = decoded_inst_i[80];
  assign flags_n[0] = (N21)? lce_req_i[27] :
                      (N22)? mem_resp_i[54] :
                      (N23)? mem_data_resp_i[538] :
                      (N24)? 1'b0 :
                      (N25)? decoded_inst_i[89] :
                      (N26)? 1'b0 : 1'b0;
  assign N21 = N94;
  assign N22 = N97;
  assign N23 = N100;
  assign N24 = N102;
  assign N25 = N105;
  assign N26 = N108;
  assign flags_n[2:1] = (N27)? { lce_req_i[0:0], lce_req_i[26:26] } :
                        (N28)? { 1'b0, 1'b0 } :
                        (N29)? { decoded_inst_i[89:89], decoded_inst_i[89:89] } :
                        (N30)? { 1'b0, 1'b0 } : 1'b0;
  assign N27 = N111;
  assign N28 = N113;
  assign N29 = N115;
  assign N30 = N116;
  assign flags_n[3] = (N31)? lce_data_resp_i[534] :
                      (N32)? decoded_inst_i[89] : 1'b0;
  assign N31 = N117;
  assign N32 = decoded_inst_i[74];
  assign flags_n[4] = (N33)? gad_transfer_flag_i :
                      (N34)? mem_resp_i[1] :
                      (N35)? decoded_inst_i[89] :
                      (N36)? 1'b0 : 1'b0;
  assign N33 = N120;
  assign N34 = N122;
  assign N35 = N124;
  assign N36 = N125;
  assign { flags_n[10:7], flags_n[5:5] } = (N37)? { gad_exclusive_flag_i, gad_invalidate_flag_i, gad_upgrade_flag_i, dir_pending_o_i, gad_replacement_flag_i } :
                                           (N38)? { decoded_inst_i[89:89], decoded_inst_i[89:89], decoded_inst_i[89:89], decoded_inst_i[89:89], decoded_inst_i[89:89] } : 1'b0;
  assign N37 = N126;
  assign N38 = decoded_inst_i[71];
  assign flags_n[6] = (N39)? mem_resp_i[0] :
                      (N40)? decoded_inst_i[89] : 1'b0;
  assign N39 = N127;
  assign N40 = decoded_inst_i[70];
  assign { N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132 } = (N41)? mov_src_i :
                                                                                                              (N42)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N41 = N130;
  assign N42 = N131;
  assign gpr_n[15:0] = (N43)? alu_res_i :
                       (N44)? { N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132 } : 1'b0;
  assign N43 = N128;
  assign N44 = N129;
  assign { N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152 } = (N45)? mov_src_i :
                                                                                                              (N46)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N45 = N150;
  assign N46 = N151;
  assign gpr_n[31:16] = (N47)? alu_res_i :
                        (N48)? { N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152 } : 1'b0;
  assign N47 = N148;
  assign N48 = N149;
  assign { N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172 } = (N49)? mov_src_i :
                                                                                                              (N50)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N49 = N170;
  assign N50 = N171;
  assign gpr_n[47:32] = (N51)? alu_res_i :
                        (N52)? { N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172 } : 1'b0;
  assign N51 = N168;
  assign N52 = N169;
  assign { N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192 } = (N53)? mov_src_i :
                                                                                                              (N54)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N53 = N190;
  assign N54 = N191;
  assign gpr_n[63:48] = (N55)? alu_res_i :
                        (N56)? { N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192 } : 1'b0;
  assign N55 = N188;
  assign N56 = N189;
  assign N212 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[29] : 1'b0;
  assign N57 = reset_i;
  assign N58 = N209;
  assign N213 = (N57)? 1'b0 :
                (N58)? req_lce_n[0] : 1'b0;
  assign { N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                  (N58)? req_addr_n : 1'b0;
  assign N236 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[28] : 1'b0;
  assign { N239, N238, N237 } = (N57)? { 1'b0, 1'b0, 1'b0 } :
                                (N58)? req_addr_way_n : 1'b0;
  assign N240 = (N57)? 1'b1 :
                (N58)? N210 : 1'b0;
  assign { N242, N241 } = (N57)? { 1'b0, 1'b0 } :
                          (N58)? req_coh_state_n : 1'b0;
  assign N243 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[27] : 1'b0;
  assign { N246, N245, N244 } = (N57)? { 1'b0, 1'b0, 1'b0 } :
                                (N58)? lru_way_n : 1'b0;
  assign N247 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[23] : 1'b0;
  assign { N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                              (N58)? lru_addr_n : 1'b0;
  assign N264 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[26] : 1'b0;
  assign N265 = (N57)? 1'b0 :
                (N58)? transfer_lce_n[0] : 1'b0;
  assign { N268, N267, N266 } = (N57)? { 1'b0, 1'b0, 1'b0 } :
                                (N58)? transfer_lce_way_n : 1'b0;
  assign N269 = (N57)? 1'b1 :
                (N58)? N211 : 1'b0;
  assign { N271, N270 } = (N57)? { 1'b0, 1'b0 } :
                          (N58)? decoded_inst_i[90:89] : 1'b0;
  assign { N282, N280, N278, N276, N274, N272 } = (N57)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } :
                                                  (N58)? { decoded_inst_i[25:25], decoded_inst_i[25:25], decoded_inst_i[25:25], decoded_inst_i[25:25], decoded_inst_i[25:25], decoded_inst_i[25:25] } : 1'b0;
  assign { N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N281, N279, N277, N275, N273 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N58)? cache_block_data_n : 1'b0;
  assign { N812, N810, N808, N806, N804, N802, N800, N798, N796, N794, N792, N790 } = (N57)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } :
                                                                                      (N58)? decoded_inst_i[20:9] : 1'b0;
  assign { N811, N809, N807, N805, N803, N801, N799, N797, N795, N793, N791 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                (N58)? flags_n : 1'b0;
  assign { N864, N847, N830, N813 } = (N57)? { 1'b1, 1'b1, 1'b1, 1'b1 } :
                                      (N58)? decoded_inst_i[34:31] : 1'b0;
  assign { N880, N879, N878, N877, N876, N875, N874, N873, N872, N871, N870, N869, N868, N867, N866, N865, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                                                                                                                                                                                                                                                                              (N58)? gpr_n : 1'b0;
  assign N881 = (N57)? 1'b1 :
                (N58)? decoded_inst_i[24] : 1'b0;
  assign { N883, N882 } = (N57)? { 1'b0, 1'b0 } :
                          (N58)? lce_resp_i[23:22] : 1'b0;
  assign { N886, N884 } = (N57)? { 1'b1, 1'b1 } :
                          (N58)? { dir_way_group_v_o_i, dir_way_group_v_o_i } : 1'b0;
  assign { N1077, N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962, N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943, N942, N941, N940, N939, N938, N937, N936, N935, N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, N891, N890, N889, N888, N887, N885 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            (N58)? dir_way_group_o_i : 1'b0;
  assign { N1079, N1078 } = (N57)? { 1'b0, 1'b0 } :
                            (N58)? gad_sharers_hits_i : 1'b0;
  assign { N1085, N1084, N1083, N1082, N1081, N1080 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                        (N58)? gad_sharers_ways_i : 1'b0;
  assign { N1089, N1088, N1087, N1086 } = (N57)? { 1'b0, 1'b0, 1'b0, 1'b0 } :
                                          (N58)? gad_sharers_coh_states_i : 1'b0;
  assign N59 = ~dir_entry_v_o_i;
  assign N60 = ~dir_way_group_v_o_i;
  assign N61 = ~decoded_inst_i[87];
  assign N62 = ~decoded_inst_i[86];
  assign N65 = ~N64;
  assign N67 = ~N66;
  assign N69 = ~decoded_inst_i[85];
  assign N70 = ~decoded_inst_i[84];
  assign N73 = ~N72;
  assign N75 = ~N74;
  assign N77 = dir_entry_v_o_i | decoded_inst_i[23];
  assign N78 = ~N77;
  assign N79 = ~decoded_inst_i[83];
  assign N80 = ~decoded_inst_i[82];
  assign N83 = ~N82;
  assign N85 = ~N84;
  assign N87 = ~decoded_inst_i[23];
  assign N88 = ~decoded_inst_i[81];
  assign N89 = ~decoded_inst_i[80];
  assign N90 = ~decoded_inst_i[79];
  assign N91 = ~decoded_inst_i[78];
  assign N92 = ~decoded_inst_i[77];
  assign N97 = ~N96;
  assign N100 = ~N99;
  assign N102 = ~N101;
  assign N105 = ~N104;
  assign N108 = N106 | N107;
  assign N109 = ~decoded_inst_i[76];
  assign N110 = ~decoded_inst_i[75];
  assign N113 = ~N112;
  assign N115 = ~N114;
  assign N117 = ~decoded_inst_i[74];
  assign N118 = ~decoded_inst_i[73];
  assign N119 = ~decoded_inst_i[72];
  assign N122 = ~N121;
  assign N124 = ~N123;
  assign N126 = ~decoded_inst_i[71];
  assign N127 = ~decoded_inst_i[70];
  assign N128 = decoded_inst_i[35] & decoded_inst_i[31];
  assign N129 = ~N128;
  assign N130 = decoded_inst_i[36] & decoded_inst_i[31];
  assign N131 = ~N130;
  assign N148 = decoded_inst_i[35] & decoded_inst_i[32];
  assign N149 = ~N148;
  assign N150 = decoded_inst_i[36] & decoded_inst_i[32];
  assign N151 = ~N150;
  assign N168 = decoded_inst_i[35] & decoded_inst_i[33];
  assign N169 = ~N168;
  assign N170 = decoded_inst_i[36] & decoded_inst_i[33];
  assign N171 = ~N170;
  assign N188 = decoded_inst_i[35] & decoded_inst_i[34];
  assign N189 = ~N188;
  assign N190 = decoded_inst_i[36] & decoded_inst_i[34];
  assign N191 = ~N190;
  assign N208 = dir_entry_v_o_i & N87;
  assign N209 = ~reset_i;
  assign N210 = decoded_inst_i[23] | dir_entry_v_o_i;
  assign N211 = decoded_inst_i[36] & N1095;

  always @(posedge clk_i) begin
    if(N247) begin
      { sharers_coh_states_o[3:0] } <= { N1089, N1088, N1087, N1086 };
      { lru_addr_o[21:0] } <= { N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
      { sharers_hits_o[1:0] } <= { N1079, N1078 };
      { sharers_ways_o[5:0] } <= { N1085, N1084, N1083, N1082, N1081, N1080 };
    end
    if(N212) begin
      { req_lce_o[0:0] } <= { N213 };
      { req_addr_o[21:0] } <= { N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214 };
    end
    if(N236) begin
      { req_addr_way_o[2:0] } <= { N239, N238, N237 };
    end
    if(N240) begin
      { req_coh_state_r[1:0] } <= { N242, N241 };
    end
    if(N243) begin
      { lru_way_o[2:0] } <= { N246, N245, N244 };
    end
    if(N264) begin
      { transfer_lce_o[0:0] } <= { N265 };
      { transfer_lce_way_o[2:0] } <= { N268, N267, N266 };
    end
    if(N269) begin
      { next_coh_state_o[1:0] } <= { N271, N270 };
    end
    if(N272) begin
      { cache_block_data_o[511:413], cache_block_data_o[0:0] } <= { N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N273 };
    end
    if(N274) begin
      { cache_block_data_o[412:314], cache_block_data_o[1:1] } <= { N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N275 };
    end
    if(N276) begin
      { cache_block_data_o[313:215], cache_block_data_o[2:2] } <= { N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N277 };
    end
    if(N278) begin
      { cache_block_data_o[214:116], cache_block_data_o[3:3] } <= { N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N279 };
    end
    if(N280) begin
      { cache_block_data_o[115:17], cache_block_data_o[4:4] } <= { N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N281 };
    end
    if(N282) begin
      { cache_block_data_o[16:5] } <= { N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283 };
    end
    if(N812) begin
      { flags_o[11:11] } <= { N270 };
    end
    if(N810) begin
      { flags_o[10:10] } <= { N811 };
    end
    if(N808) begin
      { flags_o[9:9] } <= { N809 };
    end
    if(N806) begin
      { flags_o[8:8] } <= { N807 };
    end
    if(N804) begin
      { flags_o[7:7] } <= { N805 };
    end
    if(N802) begin
      { flags_o[6:6] } <= { N803 };
    end
    if(N800) begin
      { flags_o[5:5] } <= { N801 };
    end
    if(N798) begin
      { flags_o[4:4] } <= { N799 };
    end
    if(N796) begin
      { flags_o[3:3] } <= { N797 };
    end
    if(N794) begin
      { flags_o[2:2] } <= { N795 };
    end
    if(N792) begin
      { flags_o[1:1] } <= { N793 };
    end
    if(N790) begin
      { flags_o[0:0] } <= { N791 };
    end
    if(N864) begin
      { gpr_o[63:48] } <= { N880, N879, N878, N877, N876, N875, N874, N873, N872, N871, N870, N869, N868, N867, N866, N865 };
    end
    if(N847) begin
      { gpr_o[47:32] } <= { N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, N848 };
    end
    if(N830) begin
      { gpr_o[31:16] } <= { N846, N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832, N831 };
    end
    if(N813) begin
      { gpr_o[15:0] } <= { N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819, N818, N817, N816, N815, N814 };
    end
    if(N881) begin
      { ack_type_o[1:0] } <= { N883, N882 };
    end
    if(N884) begin
      { way_group_r[191:93], way_group_r[0:0] } <= { N1077, N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, N885 };
    end
    if(N886) begin
      { way_group_r[92:1] } <= { N978, N977, N976, N975, N974, N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962, N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943, N942, N941, N940, N939, N938, N937, N936, N935, N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, N891, N890, N889, N888, N887 };
    end
  end


endmodule