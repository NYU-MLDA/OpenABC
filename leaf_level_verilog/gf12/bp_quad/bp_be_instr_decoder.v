module bp_be_instr_decoder
(
  enter_debug_v_i,
  exit_debug_v_i,
  interrupt_v_i,
  fe_exc_not_instr_i,
  fe_exc_i,
  instr_i,
  decode_o
);

  input [1:0] fe_exc_i;
  input [31:0] instr_i;
  output [29:0] decode_o;
  input enter_debug_v_i;
  input exit_debug_v_i;
  input interrupt_v_i;
  input fe_exc_not_instr_i;
  wire [29:0] decode_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,illegal_instr,N78,
  N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,
  N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,
  N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,
  N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,
  N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,
  N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,
  N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,
  N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,
  N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,
  N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,
  N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,
  N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,
  N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,
  N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,
  N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,
  N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,
  N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,
  N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,
  N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,
  N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,
  N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,
  N419,N420,N421,N422,N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,
  N435,N436,N437,N438,N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,
  N451,N452,N453,N454,N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,
  N467,N468,N469,N470,N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,
  N483,N484,N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,
  N499,N500,N501,N502,N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,N514,
  N515,N516,N517,N518,N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,N529,N530,
  N531,N532,N533,N534,N535,N536,N537,N538,N539,N540,N541,N542,N543,N544,N545,N546,
  N547,N548,N549,N550,N551,N552,N553,N554,N555,N556,N557,N558,N559,N560,N561,N562,
  N563,N564,N565,N566,N567,N568,N569,N570,N571,N572,N573,N574,N575,N576,N577,N578,
  N579;
  assign decode_o[13] = 1'b0;
  assign decode_o[21] = 1'b0;
  assign decode_o[23] = 1'b0;
  assign decode_o[25] = 1'b0;
  assign N78 = instr_i[1] & instr_i[0];
  assign N80 = instr_i[6] | N550;
  assign N81 = N551 | instr_i[3];
  assign N82 = N80 | N81;
  assign N83 = N82 | instr_i[2];
  assign N84 = N551 | N552;
  assign N85 = N80 | N84;
  assign N86 = N85 | instr_i[2];
  assign N88 = instr_i[6] | instr_i[5];
  assign N89 = N88 | N81;
  assign N90 = N89 | instr_i[2];
  assign N91 = N88 | N84;
  assign N92 = N91 | instr_i[2];
  assign N94 = N82 | N110;
  assign N96 = N89 | N110;
  assign N98 = N109 | N550;
  assign N99 = instr_i[4] | N552;
  assign N100 = N98 | N99;
  assign N101 = N100 | N110;
  assign N103 = instr_i[4] | instr_i[3];
  assign N104 = N98 | N103;
  assign N105 = N104 | N110;
  assign N107 = N104 | instr_i[2];
  assign N111 = N109 & N550;
  assign N112 = N551 & N552;
  assign N113 = N111 & N112;
  assign N114 = N113 & N110;
  assign N115 = N80 | N103;
  assign N116 = N115 | instr_i[2];
  assign N118 = N88 | N99;
  assign N119 = N118 | N110;
  assign N121 = N98 | N81;
  assign N122 = N121 | instr_i[2];
  assign N124 = N80 | N99;
  assign N125 = N124 | N110;
  assign N127 = instr_i[6] & instr_i[4];
  assign N128 = N127 & instr_i[2];
  assign N129 = N127 & instr_i[3];
  assign N130 = instr_i[4] & instr_i[3];
  assign N131 = N130 & instr_i[2];
  assign N132 = N109 & N551;
  assign N133 = N552 & instr_i[2];
  assign N134 = N132 & N133;
  assign N135 = N551 & instr_i[3];
  assign N136 = N135 & N110;
  assign N137 = instr_i[6] & N550;
  assign N145 = N139 & N140;
  assign N146 = N141 & N142;
  assign N147 = N143 & N144;
  assign N148 = N109 & instr_i[5];
  assign N149 = instr_i[4] & N110;
  assign N150 = N145 & N146;
  assign N151 = N147 & N148;
  assign N152 = N149 & N78;
  assign N153 = N150 & N151;
  assign N154 = N153 & N152;
  assign N156 = N177 & N306;
  assign N157 = N156 & N552;
  assign N158 = N156 & instr_i[3];
  assign N160 = N189 & N306;
  assign N161 = N160 & N552;
  assign N162 = N160 & instr_i[3];
  assign N164 = N177 & N307;
  assign N165 = N164 & N552;
  assign N166 = N164 & instr_i[3];
  assign N168 = N182 & N307;
  assign N169 = N168 & N552;
  assign N170 = N168 & instr_i[3];
  assign N172 = N195 & N307;
  assign N173 = N172 & N552;
  assign N174 = N172 & instr_i[3];
  assign N177 = N176 & N272;
  assign N178 = N177 & N308;
  assign N179 = N178 & N552;
  assign N180 = N177 & N309;
  assign N181 = N180 & N552;
  assign N182 = N176 & instr_i[14];
  assign N183 = N182 & N306;
  assign N184 = N183 & N552;
  assign N185 = N182 & N308;
  assign N186 = N185 & N552;
  assign N187 = N182 & N309;
  assign N188 = N187 & N552;
  assign N189 = instr_i[30] & N272;
  assign N190 = N189 & instr_i[12];
  assign N191 = instr_i[14] & N305;
  assign N192 = N191 & instr_i[3];
  assign N193 = instr_i[13] & instr_i[3];
  assign N194 = instr_i[30] & instr_i[13];
  assign N195 = instr_i[30] & instr_i[14];
  assign N196 = N195 & N305;
  assign N208 = N111 & N149;
  assign N209 = N208 & N78;
  assign N211 = N263 & N237;
  assign N212 = N305 & instr_i[3];
  assign N213 = N263 & N212;
  assign N215 = N408 & N263;
  assign N216 = N220 & N215;
  assign N217 = N216 & N239;
  assign N218 = N216 & N231;
  assign N220 = N445 & N226;
  assign N221 = N220 & N228;
  assign N222 = N221 & N239;
  assign N223 = N221 & N231;
  assign N225 = N139 & instr_i[30];
  assign N226 = N140 & N141;
  assign N227 = N225 & N226;
  assign N228 = N408 & N266;
  assign N229 = N227 & N228;
  assign N230 = N229 & N239;
  assign N231 = instr_i[12] & instr_i[3];
  assign N232 = N229 & N231;
  assign N234 = N273 & N237;
  assign N235 = N273 & N239;
  assign N236 = N266 & N237;
  assign N237 = N305 & N552;
  assign N238 = N269 & N237;
  assign N239 = instr_i[12] & N552;
  assign N240 = N269 & N239;
  assign N259 = instr_i[2] | N553;
  assign N260 = N259 | N554;
  assign N261 = N104 | N260;
  assign N263 = N272 & N304;
  assign N264 = N263 & N305;
  assign N265 = N263 & instr_i[12];
  assign N266 = instr_i[14] & N304;
  assign N267 = N266 & N305;
  assign N268 = N266 & instr_i[12];
  assign N269 = instr_i[14] & instr_i[13];
  assign N270 = N269 & N305;
  assign N271 = N269 & instr_i[12];
  assign N273 = N272 & instr_i[13];
  assign N284 = N88 | N103;
  assign N285 = N284 | N260;
  assign N287 = N273 & N305;
  assign N288 = N273 & instr_i[12];
  assign N297 = N272 & N109;
  assign N298 = instr_i[5] & N551;
  assign N299 = N552 & N110;
  assign N300 = N297 & N298;
  assign N301 = N299 & N78;
  assign N302 = N300 & N301;
  assign N306 = N304 & N305;
  assign N307 = N304 & instr_i[12];
  assign N308 = instr_i[13] & N305;
  assign N309 = instr_i[13] & instr_i[12];
  assign N315 = instr_i[2] & instr_i[1];
  assign N316 = N263 & N111;
  assign N317 = N135 & N315;
  assign N318 = N316 & N317;
  assign N319 = N318 & instr_i[0];
  assign N321 = instr_i[31] | instr_i[30];
  assign N322 = instr_i[29] | instr_i[28];
  assign N323 = instr_i[27] | instr_i[26];
  assign N324 = instr_i[25] | instr_i[24];
  assign N325 = instr_i[23] | instr_i[22];
  assign N326 = instr_i[21] | instr_i[20];
  assign N327 = instr_i[19] | instr_i[18];
  assign N328 = instr_i[17] | instr_i[16];
  assign N329 = instr_i[15] | N305;
  assign N330 = instr_i[11] | instr_i[10];
  assign N331 = instr_i[9] | instr_i[8];
  assign N332 = N321 | N322;
  assign N333 = N323 | N324;
  assign N334 = N325 | N326;
  assign N335 = N327 | N328;
  assign N336 = N329 | N330;
  assign N337 = N331 | instr_i[7];
  assign N338 = N332 | N333;
  assign N339 = N334 | N335;
  assign N340 = N336 | N337;
  assign N341 = N338 | N339;
  assign N342 = N341 | N340;
  assign N352 = N341 | N400;
  assign N354 = N325 | N382;
  assign N355 = N354 | N335;
  assign N356 = N338 | N355;
  assign N357 = N356 | N400;
  assign N359 = instr_i[31] | N176;
  assign N360 = N142 | instr_i[26];
  assign N361 = N144 | N456;
  assign N362 = N359 | N368;
  assign N363 = N360 | N361;
  assign N364 = N362 | N363;
  assign N365 = N364 | N376;
  assign N366 = N365 | N400;
  assign N368 = N140 | N141;
  assign N369 = N321 | N368;
  assign N370 = N369 | N333;
  assign N371 = N370 | N376;
  assign N372 = N371 | N400;
  assign N374 = N459 | instr_i[20];
  assign N375 = N325 | N374;
  assign N376 = N375 | N335;
  assign N377 = N395 | N376;
  assign N378 = N377 | N400;
  assign N380 = instr_i[29] | N141;
  assign N381 = instr_i[23] | N458;
  assign N382 = instr_i[21] | N460;
  assign N383 = instr_i[15] | instr_i[14];
  assign N384 = instr_i[13] | instr_i[12];
  assign N385 = instr_i[7] | N109;
  assign N386 = N550 | N551;
  assign N387 = instr_i[3] | instr_i[2];
  assign N388 = N553 | N554;
  assign N389 = N321 | N380;
  assign N390 = N381 | N382;
  assign N391 = N383 | N384;
  assign N392 = N330 | N331;
  assign N393 = N385 | N386;
  assign N394 = N387 | N388;
  assign N395 = N389 | N333;
  assign N396 = N390 | N335;
  assign N397 = N391 | N392;
  assign N398 = N393 | N394;
  assign N399 = N395 | N396;
  assign N400 = N397 | N398;
  assign N401 = N399 | N400;
  assign N408 = N142 & N143;
  assign N409 = instr_i[25] & N272;
  assign N410 = N403 & N404;
  assign N411 = N405 & N406;
  assign N412 = N407 & instr_i[6];
  assign N413 = instr_i[5] & instr_i[4];
  assign N414 = N408 & N409;
  assign N415 = N306 & N410;
  assign N416 = N411 & N412;
  assign N417 = N413 & N299;
  assign N418 = N447 & N414;
  assign N419 = N415 & N416;
  assign N420 = N417 & N78;
  assign N421 = N418 & N419;
  assign N422 = N421 & N420;
  assign N429 = N121 | N260;
  assign N445 = N139 & N176;
  assign N446 = N140 & instr_i[28];
  assign N447 = N445 & N446;
  assign N448 = N273 & N148;
  assign N449 = N447 & N448;
  assign N450 = N317 & instr_i[0];
  assign N451 = N449 & N450;
  assign N453 = N463 & N305;
  assign N454 = N464 & N453;
  assign N455 = instr_i[27] & N305;
  assign N461 = N142 & N456;
  assign N462 = N457 & N458;
  assign N463 = N459 & N460;
  assign N464 = N461 & N462;
  assign N465 = N463 & instr_i[12];
  assign N466 = N464 & N465;
  assign N467 = instr_i[27] & instr_i[12];
  assign N530 = N528 & N529;
  assign N531 = N528 | fe_exc_i[0];
  assign N533 = fe_exc_i[1] & fe_exc_i[0];
  assign N534 = fe_exc_i[1] | N529;
  assign N550 = ~instr_i[5];
  assign N551 = ~instr_i[4];
  assign N552 = ~instr_i[3];
  assign N553 = ~instr_i[1];
  assign N554 = ~instr_i[0];
  assign N555 = N550 | instr_i[6];
  assign N556 = N551 | N555;
  assign N557 = N552 | N556;
  assign N558 = instr_i[2] | N557;
  assign N559 = N553 | N558;
  assign N560 = N554 | N559;
  assign N561 = ~N560;
  assign N562 = instr_i[5] | instr_i[6];
  assign N563 = N551 | N562;
  assign N564 = N552 | N563;
  assign N565 = instr_i[2] | N564;
  assign N566 = N553 | N565;
  assign N567 = N554 | N566;
  assign N568 = ~N567;
  assign { N201, N200, N199, N198 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                      (N1)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                      (N2)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                      (N3)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                      (N4)? { 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                      (N5)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                      (N6)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                      (N7)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                      (N8)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                      (N9)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                      (N10)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N159;
  assign N1 = N163;
  assign N2 = N167;
  assign N3 = N171;
  assign N4 = N175;
  assign N5 = N179;
  assign N6 = N181;
  assign N7 = N184;
  assign N8 = N186;
  assign N9 = N188;
  assign N10 = N197;
  assign N202 = (N0)? 1'b0 : 
                (N1)? 1'b0 : 
                (N2)? 1'b0 : 
                (N3)? 1'b0 : 
                (N4)? 1'b0 : 
                (N5)? 1'b0 : 
                (N6)? 1'b0 : 
                (N7)? 1'b0 : 
                (N8)? 1'b0 : 
                (N9)? 1'b0 : 
                (N10)? 1'b1 : 1'b0;
  assign { N206, N205, N204, N203 } = (N11)? { N201, N200, N199, N198 } : 
                                      (N155)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N11 = N154;
  assign N207 = (N11)? N202 : 
                (N155)? 1'b1 : 1'b0;
  assign { N252, N251, N250 } = (N12)? { 1'b0, 1'b0, 1'b0 } : 
                                (N13)? { 1'b0, 1'b0, 1'b1 } : 
                                (N14)? { 1'b1, 1'b0, 1'b1 } : 
                                (N15)? { 1'b1, 1'b0, 1'b1 } : 
                                (N16)? { 1'b0, 1'b1, 1'b0 } : 
                                (N17)? { 1'b0, 1'b1, 1'b1 } : 
                                (N18)? { 1'b1, 1'b0, 1'b0 } : 
                                (N19)? { 1'b1, 1'b1, 1'b0 } : 
                                (N20)? { 1'b1, 1'b1, 1'b1 } : 
                                (N249)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N12 = N214;
  assign N13 = N219;
  assign N14 = N224;
  assign N15 = N233;
  assign N16 = N234;
  assign N17 = N235;
  assign N18 = N236;
  assign N19 = N238;
  assign N20 = N240;
  assign N253 = (N12)? 1'b0 : 
                (N13)? 1'b0 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 
                (N16)? 1'b0 : 
                (N17)? 1'b0 : 
                (N18)? 1'b0 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N249)? 1'b1 : 1'b0;
  assign { N257, N256, N255, N254 } = (N21)? { N233, N252, N251, N250 } : 
                                      (N210)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N21 = N209;
  assign N258 = (N21)? N253 : 
                (N210)? 1'b1 : 1'b0;
  assign { N277, N276, N275, N274 } = (N22)? { 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                      (N23)? { 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                      (N24)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                      (N25)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                      (N26)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                      (N27)? { 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                      (N28)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = N264;
  assign N23 = N265;
  assign N24 = N267;
  assign N25 = N268;
  assign N26 = N270;
  assign N27 = N271;
  assign N28 = N273;
  assign N278 = (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 
                (N26)? 1'b0 : 
                (N27)? 1'b0 : 
                (N28)? 1'b1 : 1'b0;
  assign { N282, N281, N280, N279 } = (N29)? { N277, N276, N275, N274 } : 
                                      (N30)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N29 = N262;
  assign N30 = N261;
  assign N283 = (N29)? N278 : 
                (N30)? 1'b1 : 1'b0;
  assign { N291, N290, N289 } = (N22)? { 1'b0, 1'b0, 1'b0 } : 
                                (N23)? { 1'b0, 1'b0, 1'b1 } : 
                                (N31)? { 1'b0, 1'b1, 1'b0 } : 
                                (N24)? { 1'b1, 1'b0, 1'b0 } : 
                                (N25)? { 1'b1, 1'b0, 1'b1 } : 
                                (N26)? { 1'b1, 1'b1, 1'b0 } : 
                                (N32)? { 1'b0, 1'b1, 1'b1 } : 
                                (N27)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N31 = N287;
  assign N32 = N288;
  assign N292 = (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N31)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 
                (N26)? 1'b0 : 
                (N32)? 1'b0 : 
                (N27)? 1'b1 : 1'b0;
  assign { N295, N294, N293 } = (N33)? { N291, N290, N289 } : 
                                (N34)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N33 = N286;
  assign N34 = N285;
  assign N296 = (N33)? N292 : 
                (N34)? 1'b1 : 1'b0;
  assign { N311, N310 } = (N35)? { 1'b0, 1'b0 } : 
                          (N36)? { 1'b0, 1'b1 } : 
                          (N37)? { 1'b1, 1'b0 } : 
                          (N38)? { 1'b1, 1'b1 } : 1'b0;
  assign N35 = N306;
  assign N36 = N307;
  assign N37 = N308;
  assign N38 = N309;
  assign { N313, N312 } = (N39)? { N311, N310 } : 
                          (N303)? { 1'b0, 1'b0 } : 1'b0;
  assign N39 = N302;
  assign N314 = ~N302;
  assign { N347, N346 } = (N40)? { 1'b1, 1'b0 } : 
                          (N41)? { 1'b0, 1'b1 } : 
                          (N345)? { 1'b0, 1'b0 } : 1'b0;
  assign N40 = N305;
  assign N41 = N343;
  assign N348 = (N40)? 1'b0 : 
                (N41)? 1'b0 : 
                (N345)? 1'b1 : 1'b0;
  assign { N350, N349 } = (N42)? { N347, N346 } : 
                          (N320)? { 1'b0, 1'b0 } : 1'b0;
  assign N42 = N319;
  assign N351 = (N42)? N348 : 
                (N320)? 1'b1 : 1'b0;
  assign { N433, N432, N431 } = (N23)? { 1'b0, 1'b0, 1'b1 } : 
                                (N25)? { 1'b1, 1'b0, 1'b0 } : 
                                (N31)? { 1'b0, 1'b1, 1'b0 } : 
                                (N26)? { 1'b1, 1'b0, 1'b1 } : 
                                (N32)? { 1'b0, 1'b1, 1'b1 } : 
                                (N27)? { 1'b1, 1'b1, 1'b0 } : 
                                (N35)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N434 = (N23)? 1'b0 : 
                (N25)? 1'b0 : 
                (N31)? 1'b0 : 
                (N26)? 1'b0 : 
                (N32)? 1'b0 : 
                (N27)? 1'b0 : 
                (N35)? 1'b1 : 1'b0;
  assign { N437, N436, N435 } = (N43)? { N433, N432, N431 } : 
                                (N44)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N43 = N430;
  assign N44 = N429;
  assign N438 = (N43)? N434 : 
                (N44)? 1'b1 : 1'b0;
  assign { N442, N441, N440, N439 } = (N45)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                      (N46)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                      (N47)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                      (N48)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                      (N49)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
                                      (N50)? { 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                      (N51)? { 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                      (N52)? { 1'b0, N437, N436, N435 } : 1'b0;
  assign N45 = N353;
  assign N46 = N358;
  assign N47 = N367;
  assign N48 = N373;
  assign N49 = N379;
  assign N50 = N402;
  assign N51 = N422;
  assign N52 = N443;
  assign N443 = ~N428;
  assign N444 = (N45)? 1'b0 : 
                (N46)? 1'b0 : 
                (N47)? 1'b0 : 
                (N48)? 1'b0 : 
                (N49)? 1'b0 : 
                (N50)? 1'b0 : 
                (N51)? 1'b0 : 
                (N52)? N438 : 1'b0;
  assign { N475, N474, N473, N472 } = (N53)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                      (N54)? { 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                      (N55)? { 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                      (N56)? { 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                      (N471)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N53 = N454;
  assign N54 = N455;
  assign N55 = N466;
  assign N56 = N467;
  assign N476 = (N53)? 1'b0 : 
                (N54)? 1'b0 : 
                (N55)? 1'b0 : 
                (N56)? 1'b0 : 
                (N471)? 1'b1 : 1'b0;
  assign { N480, N479, N478, N477 } = (N57)? { N475, N474, N473, N472 } : 
                                      (N452)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N57 = N451;
  assign N481 = (N57)? N476 : 
                (N452)? 1'b1 : 1'b0;
  assign { N498, N497, N496, N495, N494, N493, N490, N489, N488, N487, N486, N485, N484, N483, N482 } = (N58)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, N561, 1'b0, N206, N205, N204, N203, 1'b0, 1'b0 } : 
                                                                                                        (N59)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, N568, 1'b0, N257, N256, N255, N254, 1'b1, 1'b0 } : 
                                                                                                        (N60)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                                                                                        (N61)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                                                                        (N62)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                        (N63)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                        (N64)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N282, N281, N280, N279, 1'b0, 1'b0 } : 
                                                                                                        (N65)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N295, N294, N293, 1'b0, 1'b0 } : 
                                                                                                        (N66)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, N302, 1'b0, N313, N312, 1'b0, 1'b0 } : 
                                                                                                        (N67)? { 1'b0, N349, 1'b0, 1'b0, 1'b0, 1'b0, N349, 1'b0, N349, 1'b0, N349, N349, 1'b0, 1'b0, 1'b0 } : 
                                                                                                        (N68)? { 1'b0, 1'b1, N443, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, N367, N442, N441, N440, N439, 1'b0, 1'b0 } : 
                                                                                                        (N69)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, N480, N479, N478, N477, 1'b0, 1'b0 } : 
                                                                                                        (N70)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N58 = N87;
  assign N59 = N93;
  assign N60 = N95;
  assign N61 = N97;
  assign N62 = N102;
  assign N63 = N106;
  assign N64 = N108;
  assign N65 = N114;
  assign N66 = N117;
  assign N67 = N120;
  assign N68 = N123;
  assign N69 = N126;
  assign N70 = N138;
  assign N492 = (N68)? N443 : 
                (N491)? 1'b0 : 1'b0;
  assign N500 = (N67)? N350 : 
                (N499)? 1'b0 : 1'b0;
  assign N501 = (N58)? N207 : 
                (N59)? N258 : 
                (N60)? 1'b0 : 
                (N61)? 1'b0 : 
                (N62)? 1'b0 : 
                (N63)? 1'b0 : 
                (N64)? N283 : 
                (N65)? N296 : 
                (N66)? N314 : 
                (N67)? N351 : 
                (N68)? N444 : 
                (N69)? N481 : 
                (N70)? 1'b1 : 1'b0;
  assign { N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502 } = (N71)? { N500, N498, N497, N496, N495, N494, N493, N492, N490, N108, N489, N488, N487, N486, N485, N484, N97, N483, N106, N126, N482 } : 
                                                                                                                                            (N79)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N71 = N78;
  assign illegal_instr = (N71)? N501 : 
                         (N79)? 1'b1 : 1'b0;
  assign { N537, N536 } = (N72)? { 1'b1, 1'b1 } : 
                          (N73)? { 1'b0, 1'b1 } : 
                          (N74)? { 1'b1, 1'b0 } : 
                          (N75)? { 1'b0, 1'b0 } : 1'b0;
  assign N72 = N530;
  assign N73 = N532;
  assign N74 = N533;
  assign N75 = N535;
  assign { decode_o[28:26], decode_o[24:24], decode_o[22:22], decode_o[20:14], decode_o[12:0] } = (N76)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                  (N540)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                  (N543)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                  (N546)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, N535, N537, N536, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                  (N549)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                  (N527)? { 1'b1, N522, N521, N520, N519, N518, N517, N516, N515, N515, N514, N514, N502, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502 } : 1'b0;
  assign N76 = enter_debug_v_i;
  assign decode_o[29] = (N76)? 1'b0 : 
                        (N540)? 1'b0 : 
                        (N543)? 1'b0 : 
                        (N538)? 1'b1 : 
                        (N77)? 1'b1 : 
                        (N77)? 1'b1 : 1'b0;
  assign N77 = 1'b0;
  assign N79 = ~N78;
  assign N87 = N569 | N570;
  assign N569 = ~N83;
  assign N570 = ~N86;
  assign N93 = N571 | N572;
  assign N571 = ~N90;
  assign N572 = ~N92;
  assign N95 = ~N94;
  assign N97 = ~N96;
  assign N102 = ~N101;
  assign N106 = ~N105;
  assign N108 = ~N107;
  assign N109 = ~instr_i[6];
  assign N110 = ~instr_i[2];
  assign N117 = ~N116;
  assign N120 = ~N119;
  assign N123 = ~N122;
  assign N126 = ~N125;
  assign N138 = N128 | N576;
  assign N576 = N129 | N575;
  assign N575 = N131 | N574;
  assign N574 = N134 | N573;
  assign N573 = N136 | N137;
  assign N139 = ~instr_i[31];
  assign N140 = ~instr_i[29];
  assign N141 = ~instr_i[28];
  assign N142 = ~instr_i[27];
  assign N143 = ~instr_i[26];
  assign N144 = ~instr_i[25];
  assign N155 = ~N154;
  assign N159 = N157 | N158;
  assign N163 = N161 | N162;
  assign N167 = N165 | N166;
  assign N171 = N169 | N170;
  assign N175 = N173 | N174;
  assign N176 = ~instr_i[30];
  assign N197 = N190 | N579;
  assign N579 = N192 | N578;
  assign N578 = N193 | N577;
  assign N577 = N194 | N196;
  assign N210 = ~N209;
  assign N214 = N211 | N213;
  assign N219 = N217 | N218;
  assign N224 = N222 | N223;
  assign N233 = N230 | N232;
  assign N241 = N219 | N214;
  assign N242 = N224 | N241;
  assign N243 = N233 | N242;
  assign N244 = N234 | N243;
  assign N245 = N235 | N244;
  assign N246 = N236 | N245;
  assign N247 = N238 | N246;
  assign N248 = N240 | N247;
  assign N249 = ~N248;
  assign N262 = ~N261;
  assign N272 = ~instr_i[14];
  assign N286 = ~N285;
  assign N303 = ~N302;
  assign N304 = ~instr_i[13];
  assign N305 = ~instr_i[12];
  assign N320 = ~N319;
  assign N343 = ~N342;
  assign N344 = N343 | N305;
  assign N345 = ~N344;
  assign N353 = ~N352;
  assign N358 = ~N357;
  assign N367 = ~N366;
  assign N373 = ~N372;
  assign N379 = ~N378;
  assign N402 = ~N401;
  assign N403 = ~instr_i[11];
  assign N404 = ~instr_i[10];
  assign N405 = ~instr_i[9];
  assign N406 = ~instr_i[8];
  assign N407 = ~instr_i[7];
  assign N423 = N358 | N353;
  assign N424 = N367 | N423;
  assign N425 = N373 | N424;
  assign N426 = N379 | N425;
  assign N427 = N402 | N426;
  assign N428 = N422 | N427;
  assign N430 = ~N429;
  assign N452 = ~N451;
  assign N456 = ~instr_i[24];
  assign N457 = ~instr_i[23];
  assign N458 = ~instr_i[22];
  assign N459 = ~instr_i[21];
  assign N460 = ~instr_i[20];
  assign N468 = N455 | N454;
  assign N469 = N466 | N468;
  assign N470 = N467 | N469;
  assign N471 = ~N470;
  assign N491 = N122;
  assign N499 = N119;
  assign N523 = exit_debug_v_i | enter_debug_v_i;
  assign N524 = interrupt_v_i | N523;
  assign N525 = fe_exc_not_instr_i | N524;
  assign N526 = illegal_instr | N525;
  assign N527 = ~N526;
  assign N528 = ~fe_exc_i[1];
  assign N529 = ~fe_exc_i[0];
  assign N532 = ~N531;
  assign N535 = ~N534;
  assign N538 = ~N524;
  assign N539 = ~enter_debug_v_i;
  assign N540 = exit_debug_v_i & N539;
  assign N541 = ~exit_debug_v_i;
  assign N542 = N539 & N541;
  assign N543 = interrupt_v_i & N542;
  assign N544 = ~interrupt_v_i;
  assign N545 = N542 & N544;
  assign N546 = fe_exc_not_instr_i & N545;
  assign N547 = ~fe_exc_not_instr_i;
  assign N548 = N545 & N547;
  assign N549 = illegal_instr & N548;

endmodule