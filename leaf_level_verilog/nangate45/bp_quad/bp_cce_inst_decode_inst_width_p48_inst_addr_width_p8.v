module bp_cce_inst_decode_inst_width_p48_inst_addr_width_p8
(
  clk_i,
  reset_i,
  inst_i,
  inst_v_i,
  pending_w_busy_i,
  lce_cmd_busy_i,
  lce_req_v_i,
  lce_resp_v_i,
  lce_resp_type_i,
  mem_resp_v_i,
  pending_v_i,
  lce_cmd_ready_i,
  mem_cmd_ready_i,
  fence_zero_i,
  decoded_inst_o,
  decoded_inst_v_o,
  pc_stall_o,
  pc_branch_target_o
);

  input [47:0] inst_i;
  input [2:0] lce_resp_type_i;
  output [211:0] decoded_inst_o;
  output [7:0] pc_branch_target_o;
  input clk_i;
  input reset_i;
  input inst_v_i;
  input pending_w_busy_i;
  input lce_cmd_busy_i;
  input lce_req_v_i;
  input lce_resp_v_i;
  input mem_resp_v_i;
  input pending_v_i;
  input lce_cmd_ready_i;
  input mem_cmd_ready_i;
  input fence_zero_i;
  output decoded_inst_v_o;
  output pc_stall_o;
  wire [211:0] decoded_inst_o;
  wire [7:0] pc_branch_target_o;
  wire decoded_inst_v_o,pc_stall_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,
  N35,N36,N37,N38,N39,N40,N41,pushq_op,popq_op,poph_op,N42,N43,N44,N45,N46,N47,N48,
  N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,
  N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,
  N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,
  N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,
  N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,
  N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,
  N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,
  N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,
  N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,
  N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,
  N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,
  N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,
  N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,
  N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,
  N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,
  N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,
  N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,
  N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,
  N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,
  N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,
  N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,
  N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,
  N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,N425,N426,
  N427,N428,N429,N430,N431,N432,N433,N434,N435,N436,N437,N438,N439,N440,N441,N442,
  N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,N454,N455,N456,N457,N458,
  N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,N470,N471,N472,N473,N474,
  N475,N476,N477,N478,wfq_op,stall_op,wdp_op,fence_op,wfq_q_ready,N479,N480,N481,
  N482,N483,N484,N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,
  N498,N499,N500,N501,N502,N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,
  N514,N515,N516,N517,N518,N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,N529,
  N530,N531,N532,N533,N534,N535,N536,N537,N538,N539,N540,N541,N542,N543,N544,N545,
  N546,N547,N548,N549,N550,N551,N552,N553,N554,N555,N556,N557,N558,N559,N560,N561,
  N562,N563,N564,N565,N566,N567,N568,N569,N570,N571,N572,N573,N574,N575,N576,N577,
  N578,N579,N580,N581,N582,N583,N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,
  N594,N595,N596,N597,N598,N599,N600,N601,N602,N603,N604,N605,N606,N607,N608,N609,
  N610,N611,N612,N613,N614,N615,N616,N617,N618,N619,N620,N621,N622,N623,N624,N625,
  N626,N627,N628,N629,N630,N631,N632,N633,N634,N635,N636,N637,N638,N639,N640,N641,
  N642,N643,N644,N645,N646,N647,N648,N649,N650,N651,N652,N653,N654,N655,N656,N657,
  N658,N659,N660,N661,N662,N663,N664,N665,N666,N667,N668,N669,N670,N671,N672,N673,
  N674,N675,N676,N677,N678,N679,N680,N681,N682,N683,N684,N685,N686,N687,N688,N689,
  N690,N691;
  assign decoded_inst_o[31] = 1'b0;
  assign decoded_inst_o[116] = 1'b0;
  assign decoded_inst_o[118] = 1'b0;
  assign decoded_inst_o[120] = 1'b0;
  assign decoded_inst_o[122] = 1'b0;
  assign decoded_inst_o[123] = 1'b0;
  assign decoded_inst_o[124] = 1'b0;
  assign decoded_inst_o[126] = 1'b0;
  assign decoded_inst_o[127] = 1'b0;
  assign decoded_inst_o[128] = 1'b0;
  assign decoded_inst_o[129] = 1'b0;
  assign decoded_inst_o[167] = 1'b0;
  assign decoded_inst_o[168] = 1'b0;
  assign decoded_inst_o[169] = 1'b0;
  assign decoded_inst_o[170] = 1'b0;
  assign decoded_inst_o[171] = 1'b0;
  assign decoded_inst_o[172] = 1'b0;
  assign decoded_inst_o[173] = 1'b0;
  assign decoded_inst_o[174] = 1'b0;
  assign decoded_inst_o[175] = 1'b0;
  assign decoded_inst_o[176] = 1'b0;
  assign decoded_inst_o[177] = 1'b0;
  assign decoded_inst_o[178] = 1'b0;
  assign decoded_inst_o[179] = 1'b0;
  assign decoded_inst_o[180] = 1'b0;
  assign decoded_inst_o[181] = 1'b0;
  assign decoded_inst_o[182] = 1'b0;
  assign N45 = N44 & N551;
  assign N46 = N619 & N620;
  assign N47 = N45 & N46;
  assign N48 = inst_i[47] | inst_i[46];
  assign N49 = inst_i[45] | N620;
  assign N50 = N48 | N49;
  assign N52 = N48 | N60;
  assign N54 = N48 | N63;
  assign N56 = inst_i[47] | N551;
  assign N57 = inst_i[45] | inst_i[44];
  assign N58 = N56 | N57;
  assign N60 = N619 | inst_i[44];
  assign N61 = N56 | N60;
  assign N63 = N619 | N620;
  assign N64 = N56 | N63;
  assign N66 = inst_i[46] & N619;
  assign N67 = N66 & inst_i[44];
  assign N195 = N590 & N564;
  assign N196 = N195 & N567;
  assign N197 = inst_i[39] | N564;
  assign N198 = N197 | inst_i[37];
  assign N200 = N197 | N567;
  assign N202 = inst_i[39] & N564;
  assign N203 = inst_i[39] & N567;
  assign N488 = N564 & N567;
  assign N489 = inst_i[38] | N567;
  assign N491 = inst_i[38] & inst_i[37];
  assign N492 = N564 | inst_i[37];
  assign N521 = ~N454;
  assign N522 = ~N453;
  assign N523 = ~N452;
  assign N524 = N455 | N456;
  assign N525 = N521 | N524;
  assign N526 = N522 | N525;
  assign N527 = N523 | N526;
  assign N528 = ~N527;
  assign N529 = N452 | N526;
  assign N530 = ~N529;
  assign N531 = N453 | N525;
  assign N532 = N523 | N531;
  assign N533 = ~N532;
  assign N534 = N452 | N531;
  assign N535 = ~N534;
  assign N536 = N454 | N524;
  assign N537 = N522 | N536;
  assign N538 = N523 | N537;
  assign N539 = ~N538;
  assign N540 = N452 | N537;
  assign N541 = ~N540;
  assign N542 = N453 | N536;
  assign N543 = N523 | N542;
  assign N544 = ~N543;
  assign N545 = N452 | N542;
  assign N546 = ~N545;
  assign N547 = inst_i[37] | N549;
  assign N548 = ~N547;
  assign N549 = inst_i[38] | inst_i[39];
  assign N550 = ~N549;
  assign N551 = ~inst_i[46];
  assign N552 = N551 | inst_i[47];
  assign N553 = inst_i[45] | N552;
  assign N554 = inst_i[44] | N553;
  assign N555 = ~N554;
  assign N556 = ~inst_i[41];
  assign N557 = ~inst_i[40];
  assign N558 = inst_i[42] | inst_i[43];
  assign N559 = N556 | N558;
  assign N560 = N557 | N559;
  assign N561 = ~N560;
  assign N562 = N440 | N441;
  assign N563 = ~N562;
  assign N564 = ~inst_i[38];
  assign N565 = N564 | inst_i[39];
  assign N566 = ~N565;
  assign N567 = ~inst_i[37];
  assign N568 = N567 | N565;
  assign N569 = ~N568;
  assign N570 = ~inst_i[42];
  assign N571 = N570 | inst_i[43];
  assign N572 = inst_i[41] | N571;
  assign N573 = N557 | N572;
  assign N574 = ~N573;
  assign N575 = ~inst_i[43];
  assign N576 = inst_i[42] | N575;
  assign N577 = inst_i[41] | N576;
  assign N578 = inst_i[40] | N577;
  assign N579 = ~N578;
  assign N580 = N567 | N549;
  assign N581 = ~N580;
  assign N582 = inst_i[41] | N558;
  assign N583 = inst_i[40] | N582;
  assign N584 = ~N583;
  assign N585 = inst_i[40] | N572;
  assign N586 = ~N585;
  assign N587 = N556 | N571;
  assign N588 = inst_i[40] | N587;
  assign N589 = ~N588;
  assign N590 = ~inst_i[39];
  assign N591 = inst_i[38] | N590;
  assign N592 = inst_i[37] | N591;
  assign N593 = inst_i[36] | N592;
  assign N594 = inst_i[35] | N593;
  assign N595 = ~N594;
  assign N596 = ~inst_i[35];
  assign N597 = N596 | N593;
  assign N598 = ~N597;
  assign N599 = ~inst_i[36];
  assign N600 = N599 | N592;
  assign N601 = inst_i[35] | N600;
  assign N602 = ~N601;
  assign N603 = N596 | N600;
  assign N604 = ~N603;
  assign N605 = N599 | N568;
  assign N606 = N596 | N605;
  assign N607 = ~N606;
  assign N608 = inst_i[40] | N559;
  assign N609 = ~N608;
  assign N610 = inst_i[37] | N565;
  assign N611 = inst_i[36] | N610;
  assign N612 = N596 | N611;
  assign N613 = ~N612;
  assign N614 = inst_i[35] | N611;
  assign N615 = ~N614;
  assign N616 = N599 | N580;
  assign N617 = N596 | N616;
  assign N618 = ~N617;
  assign N619 = ~inst_i[45];
  assign N620 = ~inst_i[44];
  assign N621 = N619 | N552;
  assign N622 = N620 | N621;
  assign N623 = ~N622;
  assign N624 = inst_i[35] | N616;
  assign N625 = ~N624;
  assign N626 = N557 | N582;
  assign N627 = ~N626;
  assign N628 = inst_i[36] | N568;
  assign N629 = N596 | N628;
  assign N630 = ~N629;
  assign N631 = inst_i[35] | N628;
  assign N632 = ~N631;
  assign N633 = inst_i[36] | N580;
  assign N634 = inst_i[35] | N633;
  assign N635 = ~N634;
  assign N636 = N599 | N610;
  assign N637 = N596 | N636;
  assign N638 = ~N637;
  assign N639 = inst_i[44] | N621;
  assign N640 = ~N639;
  assign N641 = inst_i[42] & inst_i[43];
  assign N642 = inst_i[41] & N641;
  assign N643 = inst_i[40] & N642;
  assign N644 = inst_i[35] | N636;
  assign N645 = ~N644;
  assign N646 = inst_i[35] | N605;
  assign N647 = ~N646;
  assign N648 = N599 | N547;
  assign N649 = N596 | N648;
  assign N650 = ~N649;
  assign N651 = inst_i[35] | N648;
  assign N652 = ~N651;
  assign N653 = inst_i[36] | N547;
  assign N654 = N596 | N653;
  assign N655 = ~N654;
  assign N656 = inst_i[35] | N653;
  assign N657 = ~N656;
  assign N74 = (N0)? N72 : 
               (N73)? 1'b0 : 1'b0;
  assign N0 = N609;
  assign N75 = (N0)? 1'b0 : 
               (N1)? 1'b1 : 
               (N2)? 1'b1 : 
               (N71)? 1'b0 : 1'b0;
  assign N1 = N589;
  assign N2 = N561;
  assign { N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84 } = (N3)? inst_i[34:3] : 
                                                                                                                                                                                              (N4)? inst_i[34:3] : 
                                                                                                                                                                                              (N83)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N3 = N627;
  assign N4 = N574;
  assign N5 = 1'b0;
  assign { N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116 } = (N3)? { inst_i[39:35], 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                                                                (N4)? { inst_i[39:35], 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                                                                (N6)? { inst_i[39:30], 1'b0 } : 
                                                                                (N0)? { inst_i[39:30], 1'b0 } : 
                                                                                (N2)? { inst_i[39:30], 1'b0 } : 
                                                                                (N7)? { inst_i[39:30], 1'b1 } : 
                                                                                (N81)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N6 = N584;
  assign N7 = N586;
  assign { N153, N152, N151, N150, N149, N146 } = (N0)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                  (N505)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                  (N145)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 
                                                  (N5)? { inst_i[43:40], 1'b1, 1'b0 } : 1'b0;
  assign N148 = (N0)? 1'b0 : 
                (N505)? 1'b0 : 
                (N130)? 1'b1 : 
                (N131)? 1'b1 : 
                (N147)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 1'b0;
  assign { N157, N156, N155, N154 } = (N6)? inst_i[43:40] : 
                                      (N8)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = N583;
  assign { N161, N160, N159, N158 } = (N3)? inst_i[43:40] : 
                                      (N9)? { N157, N156, N155, N154 } : 1'b0;
  assign N9 = N626;
  assign { N171, N170, N169, N168, N167, N166, N165, N164, N163, N162 } = (N0)? { inst_i[15:11], 1'b1, inst_i[43:40] } : 
                                                                          (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N627, N161, N160, N159, N158 } : 1'b0;
  assign N10 = N608;
  assign { N176, N175, N174, N173, N172 } = (N2)? { inst_i[16:16], inst_i[43:40] } : 
                                            (N11)? { 1'b0, N165, N164, N163, N162 } : 1'b0;
  assign N11 = N560;
  assign { N184, N183, N182, N181, N180, N179, N178, N177 } = (N7)? { inst_i[19:17], 1'b1, inst_i[43:40] } : 
                                                              (N12)? { 1'b0, 1'b0, N176, N561, N175, N174, N173, N172 } : 1'b0;
  assign N12 = N585;
  assign { N192, N191, N190, N189, N188, N187, N186, N185 } = (N4)? { inst_i[19:17], 1'b1, inst_i[43:40] } : 
                                                              (N13)? { N184, N183, N182, N181, N180, N179, N178, N177 } : 1'b0;
  assign N13 = N573;
  assign N193 = (N14)? 1'b0 : 
                (N15)? N584 : 1'b0;
  assign N14 = N579;
  assign N15 = N578;
  assign N194 = (N6)? 1'b1 : 
                (N8)? 1'b0 : 
                (N5)? 1'b0 : 
                (N5)? 1'b0 : 1'b0;
  assign { N208, N207, N206 } = (N16)? inst_i[36:34] : 
                                (N205)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N16 = N201;
  assign { N220, N219, N218, N217, N216, N215, N214, N213, N212, N211 } = (N7)? { N210, inst_i[39:37], N196, N199, N201, N208, N207, N206 } : 
                                                                          (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N227, N226, N225, N224, N223 } = (N17)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                            (N222)? { N220, N219, N218, N217, N216 } : 1'b0;
  assign N17 = N221;
  assign { N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228 } = (N3)? { inst_i[33:18], inst_i[37:34], N221, N550, N566, N227, N226, N225, N224, N223 } : 
                                                                                                                                                                                      (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N220, N219, N218, N217, N216 } : 1'b0;
  assign { N263, N262, N261, N260, N259, N258, N257, N256 } = (N4)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                                              (N13)? { N251, N250, N249, N248, N239, N238, N237, N236 } : 1'b0;
  assign { N271, N270, N269 } = (N0)? { N266, N267, N268 } : 
                                (N10)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N275 = (N18)? 1'b0 : 
                (N19)? N235 : 
                (N20)? 1'b0 : 
                (N274)? N235 : 1'b0;
  assign N18 = N569;
  assign N19 = N581;
  assign N20 = N548;
  assign { N281, N280, N279, N278, N277 } = (N18)? inst_i[36:32] : 
                                            (N19)? inst_i[36:32] : 
                                            (N276)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282 } = (N21)? { N281, N280, N279, N278, N277, N275, N569, N581, N548, N271, N270, N269 } : 
                                                                                      (N265)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N235, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N21 = N264;
  assign { N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N315, N314, N313, N312, N311, N310, N309, N308, N307, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295 } = (N22)? { N255, N254, N253, N252, N263, N262, N261, N260, N247, N246, N245, N244, N259, N258, N257, N256, N243, N242, N241, N240, N239, N238, N237, N236, N287, N286, N285, N284, N283, N282, N234, N233, N574, N232, N231, N230, N229, N228, N215, N214, N213, N212, N211 } : 
                                                                                                                                                                                                                                                                                (N294)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = N65;
  assign N306 = (N23)? N194 : 
                (N305)? 1'b0 : 1'b0;
  assign N23 = N62;
  assign { N403, N402, N385, N384, N383, N381, N379, N377, N373, N372, N370, N369, N368, N367, N366, N365, N364, N362, N318, N317 } = (N24)? { N584, N561, inst_i[38:36], inst_i[34:34], inst_i[32:32], inst_i[30:30], inst_i[26:25], inst_i[23:20], N166, N189, N188, N186, N609, N579 } : 
                                                                                                                                      (N316)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N24 = N59;
  assign { N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N439, N438, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N386, N382, N380, N378, N376, N375, N374, N371, N363, N361, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319 } = (N25)? { inst_i[39:25], 1'b0, 1'b0, inst_i[24:9], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N26)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, inst_i[39:30], N75, N609, inst_i[19:4], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N27)? { N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N561, N609, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N28)? { inst_i[39:25], 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, inst_i[24:24], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N146, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N24)? { N171, N170, N169, N168, N167, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N192, N191, N190, inst_i[39:39], inst_i[35:35], inst_i[33:33], inst_i[31:31], inst_i[29:27], inst_i[24:24], N187, N185, 1'b0, 1'b0, 1'b0, N579, N579, N579, N579, N579, N579, N579, N579, N193, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N22)? { N293, N292, N291, N290, N289, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N574, N574, N574, N574, N574, N574, N574, N574, N574, N574, 1'b0, N288, N287, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N285, N285, N285, N285 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N29)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N25 = N47;
  assign N26 = N51;
  assign N27 = N53;
  assign N28 = N55;
  assign N29 = N68;
  assign { N441, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N336 } = (N27)? { N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N82 } : 
                                                                                                                          (N335)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N460, N459, N458, N457, N440, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388 } = (N28)? { N153, N152, N151, N150, N149, N148, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144 } : 
                                                                                                                                (N387)? { inst_i[43:40], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N437 = (N26)? N74 : 
                (N404)? 1'b0 : 1'b0;
  assign { N468, N467, N466, N465, N464, N463, N462, N461 } = (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N26)? inst_i[27:20] : 
                                                              (N27)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N28)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N24)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                              (N29)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign decoded_inst_v_o = (N30)? 1'b0 : 
                            (N43)? inst_v_i : 1'b0;
  assign N30 = N42;
  assign { decoded_inst_o[211:183], decoded_inst_o[166:130], decoded_inst_o[125:125], decoded_inst_o[121:121], decoded_inst_o[119:119], decoded_inst_o[117:117], decoded_inst_o[115:32], decoded_inst_o[30:0] } = (N30)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                  (N43)? { inst_i[47:44], N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N55, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N334, N51, N317, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N340, N339, N338, N337, N344, N343, N342, N341, N340, N339, N338, N337, N336, N334, N470, N471, N472, N473, N474, N475, N476, N477, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N313, N317, N313, N317, N315, N314, N478, N313, N312, N311, N310, N309, N308, N307, N306, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295 } : 1'b0;
  assign pc_branch_target_o = (N30)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N43)? { N468, N467, N466, N465, N464, N463, N462, N461 } : 1'b0;
  assign N483 = (N31)? N481 : 
                (N32)? N482 : 1'b0;
  assign N31 = N564;
  assign N32 = inst_i[38];
  assign N484 = (N33)? N483 : 
                (N34)? N479 : 1'b0;
  assign N33 = N590;
  assign N34 = inst_i[39];
  assign N485 = (N35)? N484 : 
                (N36)? N479 : 1'b0;
  assign N35 = pushq_op;
  assign N36 = N480;
  assign N497 = (N37)? N494 : 
                (N38)? N495 : 
                (N39)? N496 : 
                (N40)? N485 : 1'b0;
  assign N37 = N488;
  assign N38 = N490;
  assign N39 = N491;
  assign N40 = N493;
  assign N498 = (N33)? N497 : 
                (N34)? N485 : 1'b0;
  assign N499 = (N41)? N498 : 
                (N487)? N485 : 1'b0;
  assign N41 = N486;
  assign pushq_op = N623 & N627;
  assign popq_op = N623 & N609;
  assign poph_op = N623 & N561;
  assign N42 = reset_i | N658;
  assign N658 = ~inst_v_i;
  assign N43 = ~N42;
  assign N44 = ~inst_i[47];
  assign N51 = ~N50;
  assign N53 = ~N52;
  assign N55 = ~N54;
  assign N59 = ~N58;
  assign N62 = ~N61;
  assign N65 = ~N64;
  assign N68 = inst_i[47] | N67;
  assign N69 = N589 | N609;
  assign N70 = N561 | N69;
  assign N71 = ~N70;
  assign N72 = N660 | N604;
  assign N660 = N659 | N602;
  assign N659 = N595 | N598;
  assign N73 = N608;
  assign N76 = N574 | N627;
  assign N77 = N584 | N76;
  assign N78 = N609 | N77;
  assign N79 = N561 | N78;
  assign N80 = N586 | N79;
  assign N81 = ~N80;
  assign N82 = N80;
  assign N83 = ~N76;
  assign N127 = N561 | N609;
  assign N128 = N657 | N127;
  assign N129 = N655 | N128;
  assign N145 = ~N127;
  assign N147 = ~N129;
  assign N199 = ~N198;
  assign N201 = ~N200;
  assign N204 = N202 | N203;
  assign N205 = N200;
  assign N209 = ~N204;
  assign N210 = N209;
  assign N221 = N566 & inst_i[17];
  assign N222 = ~N221;
  assign N264 = N609 | N561;
  assign N265 = ~N264;
  assign N266 = lce_req_v_i & N548;
  assign N267 = lce_resp_v_i & N569;
  assign N268 = mem_resp_v_i & N581;
  assign N272 = N581 | N569;
  assign N273 = N548 | N272;
  assign N274 = ~N273;
  assign N276 = ~N272;
  assign N294 = N64;
  assign N305 = N61;
  assign N316 = N58;
  assign N335 = N52;
  assign N387 = N54;
  assign N404 = N50;
  assign N469 = N664 & N563;
  assign N664 = N663 | N314;
  assign N663 = N662 | N318;
  assign N662 = N661 | N315;
  assign N661 = N336 | N334;
  assign N470 = N528 & N469;
  assign N471 = N530 & N469;
  assign N472 = N533 & N469;
  assign N473 = N535 & N469;
  assign N474 = N539 & N469;
  assign N475 = N541 & N469;
  assign N476 = N544 & N469;
  assign N477 = N546 & N469;
  assign N478 = popq_op & N548;
  assign wfq_op = N623 & N584;
  assign stall_op = N640 & N643;
  assign wdp_op = N555 & N561;
  assign fence_op = N640 & N627;
  assign wfq_q_ready = N669 | N670;
  assign N669 = N667 | N668;
  assign N667 = N665 | N666;
  assign N665 = inst_i[39] & lce_req_v_i;
  assign N666 = inst_i[38] & lce_resp_v_i;
  assign N668 = inst_i[37] & mem_resp_v_i;
  assign N670 = inst_i[36] & pending_v_i;
  assign N479 = N673 | N675;
  assign N673 = stall_op | N672;
  assign N672 = wfq_op & N671;
  assign N671 = ~wfq_q_ready;
  assign N675 = fence_op & N674;
  assign N674 = ~fence_zero_i;
  assign N480 = ~pushq_op;
  assign N481 = N479 | N676;
  assign N676 = ~lce_cmd_ready_i;
  assign N482 = N479 | N677;
  assign N677 = ~mem_cmd_ready_i;
  assign N486 = popq_op | poph_op;
  assign N487 = ~N486;
  assign N490 = ~N489;
  assign N493 = ~N492;
  assign N494 = N485 | N678;
  assign N678 = ~lce_req_v_i;
  assign N495 = N485 | N679;
  assign N679 = ~mem_resp_v_i;
  assign N496 = N485 | N680;
  assign N680 = ~lce_resp_v_i;
  assign N500 = N499 | N682;
  assign N682 = N681 & pending_w_busy_i;
  assign N681 = pushq_op & N566;
  assign N501 = N500 | N684;
  assign N684 = N683 & pending_w_busy_i;
  assign N683 = popq_op & N581;
  assign N502 = N501 | N686;
  assign N686 = N685 & pending_w_busy_i;
  assign N685 = popq_op & N569;
  assign N503 = N502 | N688;
  assign N688 = N687 & pending_w_busy_i;
  assign N687 = popq_op & N548;
  assign N504 = N503 | N690;
  assign N690 = N689 & lce_cmd_busy_i;
  assign N689 = pushq_op & N550;
  assign pc_stall_o = N504 | N691;
  assign N691 = wdp_op & pending_w_busy_i;
  assign N505 = N561 & N608;
  assign N506 = N608 & N560;
  assign N130 = N657 & N506;
  assign N507 = N506 & N656;
  assign N131 = N655 & N507;
  assign N508 = N507 & N654;
  assign N132 = N652 & N508;
  assign N509 = N508 & N651;
  assign N133 = N650 & N509;
  assign N510 = N509 & N649;
  assign N143 = N647 & N510;
  assign N511 = N510 & N646;
  assign N139 = N645 & N511;
  assign N512 = N511 & N644;
  assign N140 = N638 & N512;
  assign N513 = N512 & N637;
  assign N134 = N635 & N513;
  assign N514 = N513 & N634;
  assign N141 = N632 & N514;
  assign N515 = N514 & N631;
  assign N142 = N630 & N515;
  assign N516 = N515 & N629;
  assign N135 = N625 & N516;
  assign N517 = N516 & N624;
  assign N136 = N618 & N517;
  assign N518 = N517 & N617;
  assign N137 = N615 & N518;
  assign N519 = N518 & N614;
  assign N138 = N613 & N519;
  assign N520 = N519 & N612;
  assign N144 = N607 & N520;

endmodule