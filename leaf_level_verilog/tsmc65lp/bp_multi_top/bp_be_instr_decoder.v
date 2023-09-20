module bp_be_instr_decoder
(
  instr_i,
  decode_o,
  illegal_instr_o,
  ret_instr_o,
  csr_instr_o
);

  input [31:0] instr_i;
  output [50:0] decode_o;
  output illegal_instr_o;
  output ret_instr_o;
  output csr_instr_o;
  wire [50:0] decode_o;
  wire illegal_instr_o,ret_instr_o,csr_instr_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,
  N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,
  N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,
  N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,
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
  N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,
  N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,
  N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,
  N350,N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,
  N366,N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,
  N382,N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,
  N398,N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,
  N414,N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,N425,N426,N427,N428,N429,
  N430,N431,N432,N433,N434,N435,N436,N437,N438,N439,N440,N441,N442,N443,N444,N445,
  N446,N447,N448,N449,N450,N451,N452,N453,N454,N455,N456,N457,N458;
  assign decode_o[50] = 1'b1;
  assign decode_o[26] = 1'b0;
  assign decode_o[28] = 1'b0;
  assign decode_o[40] = 1'b0;
  assign decode_o[42] = 1'b0;
  assign decode_o[44] = 1'b0;
  assign decode_o[47] = 1'b0;
  assign decode_o[48] = 1'b0;
  assign decode_o[49] = 1'b0;
  assign csr_instr_o = decode_o[39];
  assign ret_instr_o = decode_o[27];
  assign N65 = instr_i[1] & instr_i[0];
  assign N67 = instr_i[6] | N427;
  assign N68 = N428 | instr_i[3];
  assign N69 = N67 | N68;
  assign N70 = N69 | instr_i[2];
  assign N71 = N428 | N429;
  assign N72 = N67 | N71;
  assign N73 = N72 | instr_i[2];
  assign N75 = instr_i[6] | instr_i[5];
  assign N76 = N75 | N68;
  assign N77 = N76 | instr_i[2];
  assign N78 = N75 | N71;
  assign N79 = N78 | instr_i[2];
  assign N81 = N69 | N97;
  assign N83 = N76 | N97;
  assign N85 = N96 | N427;
  assign N86 = instr_i[4] | N429;
  assign N87 = N85 | N86;
  assign N88 = N87 | N97;
  assign N90 = instr_i[4] | instr_i[3];
  assign N91 = N85 | N90;
  assign N92 = N91 | N97;
  assign N94 = N91 | instr_i[2];
  assign N98 = N96 & N427;
  assign N99 = N428 & N429;
  assign N100 = N98 & N99;
  assign N101 = N100 & N97;
  assign N102 = N67 | N90;
  assign N103 = N102 | instr_i[2];
  assign N105 = N75 | N86;
  assign N106 = N105 | N97;
  assign N108 = N85 | N68;
  assign N109 = N108 | instr_i[2];
  assign N111 = instr_i[6] & instr_i[4];
  assign N112 = N111 & instr_i[2];
  assign N113 = N111 & instr_i[3];
  assign N114 = instr_i[4] & instr_i[3];
  assign N115 = N114 & instr_i[2];
  assign N116 = N96 & instr_i[5];
  assign N117 = N428 & instr_i[2];
  assign N118 = N116 & N117;
  assign N119 = N96 & N428;
  assign N120 = N429 & instr_i[2];
  assign N121 = N119 & N120;
  assign N122 = N427 & N428;
  assign N123 = N122 & N120;
  assign N124 = N428 & instr_i[3];
  assign N125 = N124 & N97;
  assign N126 = instr_i[6] & N427;
  assign N132 = N128 & N129;
  assign N133 = N130 & N303;
  assign N134 = N131 & N304;
  assign N135 = instr_i[4] & N97;
  assign N136 = N132 & N133;
  assign N137 = N134 & N116;
  assign N138 = N135 & N65;
  assign N139 = N136 & N137;
  assign N140 = N139 & N138;
  assign N142 = N163 & N294;
  assign N143 = N142 & N429;
  assign N144 = N142 & instr_i[3];
  assign N146 = N175 & N294;
  assign N147 = N146 & N429;
  assign N148 = N146 & instr_i[3];
  assign N150 = N163 & N295;
  assign N151 = N150 & N429;
  assign N152 = N150 & instr_i[3];
  assign N154 = N168 & N295;
  assign N155 = N154 & N429;
  assign N156 = N154 & instr_i[3];
  assign N158 = N181 & N295;
  assign N159 = N158 & N429;
  assign N160 = N158 & instr_i[3];
  assign N163 = N162 & N260;
  assign N164 = N163 & N296;
  assign N165 = N164 & N429;
  assign N166 = N163 & N297;
  assign N167 = N166 & N429;
  assign N168 = N162 & instr_i[14];
  assign N169 = N168 & N294;
  assign N170 = N169 & N429;
  assign N171 = N168 & N296;
  assign N172 = N171 & N429;
  assign N173 = N168 & N297;
  assign N174 = N173 & N429;
  assign N175 = instr_i[30] & N260;
  assign N176 = N175 & instr_i[12];
  assign N177 = instr_i[14] & N293;
  assign N178 = N177 & instr_i[3];
  assign N179 = instr_i[13] & instr_i[3];
  assign N180 = instr_i[30] & instr_i[13];
  assign N181 = instr_i[30] & instr_i[14];
  assign N182 = N181 & N293;
  assign N194 = N98 & N135;
  assign N195 = N194 & N65;
  assign N197 = N251 & N225;
  assign N198 = N293 & instr_i[3];
  assign N199 = N251 & N198;
  assign N201 = N214 & N251;
  assign N202 = N207 & N201;
  assign N203 = N202 & N227;
  assign N204 = N202 & N219;
  assign N206 = N128 & N162;
  assign N207 = N206 & N213;
  assign N208 = N207 & N216;
  assign N209 = N208 & N227;
  assign N210 = N208 & N219;
  assign N212 = N128 & instr_i[30];
  assign N213 = N129 & N130;
  assign N214 = N303 & N131;
  assign N215 = N212 & N213;
  assign N216 = N214 & N254;
  assign N217 = N215 & N216;
  assign N218 = N217 & N227;
  assign N219 = instr_i[12] & instr_i[3];
  assign N220 = N217 & N219;
  assign N222 = N261 & N225;
  assign N223 = N261 & N227;
  assign N224 = N254 & N225;
  assign N225 = N293 & N429;
  assign N226 = N257 & N225;
  assign N227 = instr_i[12] & N429;
  assign N228 = N257 & N227;
  assign N247 = instr_i[2] | N430;
  assign N248 = N247 | N431;
  assign N249 = N91 | N248;
  assign N251 = N260 & N292;
  assign N252 = N251 & N293;
  assign N253 = N251 & instr_i[12];
  assign N254 = instr_i[14] & N292;
  assign N255 = N254 & N293;
  assign N256 = N254 & instr_i[12];
  assign N257 = instr_i[14] & instr_i[13];
  assign N258 = N257 & N293;
  assign N259 = N257 & instr_i[12];
  assign N261 = N260 & instr_i[13];
  assign N272 = N75 | N90;
  assign N273 = N272 | N248;
  assign N275 = N261 & N293;
  assign N276 = N261 & instr_i[12];
  assign N285 = N260 & N96;
  assign N286 = instr_i[5] & N428;
  assign N287 = N429 & N97;
  assign N288 = N285 & N286;
  assign N289 = N287 & N65;
  assign N290 = N288 & N289;
  assign N294 = N292 & N293;
  assign N295 = N292 & instr_i[12];
  assign N296 = instr_i[13] & N293;
  assign N297 = instr_i[13] & instr_i[12];
  assign N306 = N303 & N304;
  assign N307 = N306 & N305;
  assign N310 = instr_i[26] | N309;
  assign N311 = N322 | N349;
  assign N312 = N310 | N329;
  assign N313 = N311 | N312;
  assign N314 = N313 | instr_i[20];
  assign N316 = N319 | instr_i[20];
  assign N318 = N350 | N342;
  assign N319 = N324 | N318;
  assign N320 = N319 | N338;
  assign N322 = N128 | N162;
  assign N323 = instr_i[29] | instr_i[28];
  assign N324 = N322 | N323;
  assign N325 = N324 | N353;
  assign N326 = N325 | instr_i[20];
  assign N329 = N328 | instr_i[21];
  assign N330 = N350 | N329;
  assign N331 = N352 | N330;
  assign N332 = N331 | N338;
  assign N334 = N341 | N351;
  assign N335 = N352 | N334;
  assign N336 = N335 | N338;
  assign N339 = N344 | N338;
  assign N341 = N131 | instr_i[24];
  assign N342 = instr_i[22] | instr_i[21];
  assign N343 = N341 | N342;
  assign N344 = N352 | N343;
  assign N345 = N344 | instr_i[20];
  assign N348 = instr_i[31] | instr_i[30];
  assign N349 = N129 | N130;
  assign N350 = instr_i[26] | instr_i[24];
  assign N351 = instr_i[22] | N347;
  assign N352 = N348 | N349;
  assign N353 = N350 | N351;
  assign N354 = N352 | N353;
  assign N355 = N354 | instr_i[20];
  assign N427 = ~instr_i[5];
  assign N428 = ~instr_i[4];
  assign N429 = ~instr_i[3];
  assign N430 = ~instr_i[1];
  assign N431 = ~instr_i[0];
  assign N432 = N427 | instr_i[6];
  assign N433 = N428 | N432;
  assign N434 = N429 | N433;
  assign N435 = instr_i[2] | N434;
  assign N436 = N430 | N435;
  assign N437 = N431 | N436;
  assign N438 = ~N437;
  assign N439 = instr_i[5] | instr_i[6];
  assign N440 = N428 | N439;
  assign N441 = N429 | N440;
  assign N442 = instr_i[2] | N441;
  assign N443 = N430 | N442;
  assign N444 = N431 | N443;
  assign N445 = ~N444;
  assign { N187, N186, N185, N184 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } :
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
  assign N0 = N145;
  assign N1 = N149;
  assign N2 = N153;
  assign N3 = N157;
  assign N4 = N161;
  assign N5 = N165;
  assign N6 = N167;
  assign N7 = N170;
  assign N8 = N172;
  assign N9 = N174;
  assign N10 = N183;
  assign N188 = (N0)? 1'b0 :
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
  assign { N192, N191, N190, N189 } = (N11)? { N187, N186, N185, N184 } :
                                      (N141)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N11 = N140;
  assign N193 = (N11)? N188 :
                (N141)? 1'b1 : 1'b0;
  assign { N240, N239, N238 } = (N12)? { 1'b0, 1'b0, 1'b0 } :
                                (N13)? { 1'b0, 1'b0, 1'b1 } :
                                (N14)? { 1'b1, 1'b0, 1'b1 } :
                                (N15)? { 1'b1, 1'b0, 1'b1 } :
                                (N16)? { 1'b0, 1'b1, 1'b0 } :
                                (N17)? { 1'b0, 1'b1, 1'b1 } :
                                (N18)? { 1'b1, 1'b0, 1'b0 } :
                                (N19)? { 1'b1, 1'b1, 1'b0 } :
                                (N20)? { 1'b1, 1'b1, 1'b1 } :
                                (N237)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N12 = N200;
  assign N13 = N205;
  assign N14 = N211;
  assign N15 = N221;
  assign N16 = N222;
  assign N17 = N223;
  assign N18 = N224;
  assign N19 = N226;
  assign N20 = N228;
  assign N241 = (N12)? 1'b0 :
                (N13)? 1'b0 :
                (N14)? 1'b0 :
                (N15)? 1'b0 :
                (N16)? 1'b0 :
                (N17)? 1'b0 :
                (N18)? 1'b0 :
                (N19)? 1'b0 :
                (N20)? 1'b0 :
                (N237)? 1'b1 : 1'b0;
  assign { N245, N244, N243, N242 } = (N21)? { N221, N240, N239, N238 } :
                                      (N196)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N21 = N195;
  assign N246 = (N21)? N241 :
                (N196)? 1'b1 : 1'b0;
  assign { N265, N264, N263, N262 } = (N22)? { 1'b1, 1'b1, 1'b0, 1'b0 } :
                                      (N23)? { 1'b1, 1'b1, 1'b1, 1'b0 } :
                                      (N24)? { 1'b0, 1'b0, 1'b1, 1'b0 } :
                                      (N25)? { 1'b1, 1'b0, 1'b1, 1'b0 } :
                                      (N26)? { 1'b0, 1'b0, 1'b1, 1'b1 } :
                                      (N27)? { 1'b1, 1'b0, 1'b1, 1'b1 } :
                                      (N28)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = N252;
  assign N23 = N253;
  assign N24 = N255;
  assign N25 = N256;
  assign N26 = N258;
  assign N27 = N259;
  assign N28 = N261;
  assign N266 = (N22)? 1'b0 :
                (N23)? 1'b0 :
                (N24)? 1'b0 :
                (N25)? 1'b0 :
                (N26)? 1'b0 :
                (N27)? 1'b0 :
                (N28)? 1'b1 : 1'b0;
  assign { N270, N269, N268, N267 } = (N29)? { N265, N264, N263, N262 } :
                                      (N30)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N29 = N250;
  assign N30 = N249;
  assign N271 = (N29)? N266 :
                (N30)? 1'b1 : 1'b0;
  assign { N279, N278, N277 } = (N22)? { 1'b0, 1'b0, 1'b0 } :
                                (N23)? { 1'b0, 1'b0, 1'b1 } :
                                (N31)? { 1'b0, 1'b1, 1'b0 } :
                                (N24)? { 1'b1, 1'b0, 1'b0 } :
                                (N25)? { 1'b1, 1'b0, 1'b1 } :
                                (N26)? { 1'b1, 1'b1, 1'b0 } :
                                (N32)? { 1'b0, 1'b1, 1'b1 } :
                                (N27)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N31 = N275;
  assign N32 = N276;
  assign N280 = (N22)? 1'b0 :
                (N23)? 1'b0 :
                (N31)? 1'b0 :
                (N24)? 1'b0 :
                (N25)? 1'b0 :
                (N26)? 1'b0 :
                (N32)? 1'b0 :
                (N27)? 1'b1 : 1'b0;
  assign { N283, N282, N281 } = (N33)? { N279, N278, N277 } :
                                (N34)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N33 = N274;
  assign N34 = N273;
  assign N284 = (N33)? N280 :
                (N34)? 1'b1 : 1'b0;
  assign { N299, N298 } = (N35)? { 1'b0, 1'b0 } :
                          (N36)? { 1'b0, 1'b1 } :
                          (N37)? { 1'b1, 1'b0 } :
                          (N38)? { 1'b1, 1'b1 } : 1'b0;
  assign N35 = N294;
  assign N36 = N295;
  assign N37 = N296;
  assign N38 = N297;
  assign { N301, N300 } = (N39)? { N299, N298 } :
                          (N291)? { 1'b0, 1'b0 } : 1'b0;
  assign N39 = N290;
  assign N302 = ~N290;
  assign N366 = (N40)? 1'b1 :
                (N41)? 1'b1 :
                (N42)? 1'b1 :
                (N43)? 1'b1 :
                (N44)? 1'b1 :
                (N45)? 1'b1 :
                (N46)? 1'b1 :
                (N47)? 1'b1 :
                (N48)? 1'b0 :
                (N365)? 1'b0 : 1'b0;
  assign N40 = N315;
  assign N41 = N317;
  assign N42 = N321;
  assign N43 = N327;
  assign N44 = N333;
  assign N45 = N337;
  assign N46 = N340;
  assign N47 = N346;
  assign N48 = N356;
  assign N367 = (N40)? 1'b0 :
                (N41)? 1'b0 :
                (N42)? 1'b0 :
                (N43)? 1'b0 :
                (N44)? 1'b0 :
                (N45)? 1'b0 :
                (N46)? 1'b0 :
                (N47)? 1'b0 :
                (N48)? 1'b0 :
                (N365)? 1'b1 : 1'b0;
  assign { N377, N376, N375, N374, N373, N372, N371, N370, N369, N368 } = (N49)? { N366, N315, N317, N321, N327, N333, N337, N340, N346, N356 } :
                                                                          (N308)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N49 = N307;
  assign N378 = (N49)? N367 :
                (N308)? 1'b1 : 1'b0;
  assign { N399, N398, N397, N385, N384, N383, N382, N381, N380, N379 } = (N50)? { 1'b1, 1'b0, 1'b1, N438, N192, N191, N190, N189, 1'b0, 1'b0 } :
                                                                          (N51)? { 1'b1, 1'b0, 1'b1, N445, N245, N244, N243, N242, 1'b1, 1'b0 } :
                                                                          (N52)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } :
                                                                          (N53)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } :
                                                                          (N54)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } :
                                                                          (N55)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } :
                                                                          (N56)? { 1'b1, 1'b0, 1'b0, 1'b0, N270, N269, N268, N267, 1'b0, 1'b0 } :
                                                                          (N57)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, N283, N282, N281, 1'b0, 1'b0 } :
                                                                          (N58)? { 1'b0, 1'b1, 1'b0, 1'b0, N290, 1'b0, N301, N300, 1'b0, 1'b0 } :
                                                                          (N59)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                          (N60)? { 1'b0, 1'b1, N377, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                          (N61)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N50 = N74;
  assign N51 = N80;
  assign N52 = N82;
  assign N53 = N84;
  assign N54 = N89;
  assign N55 = N93;
  assign N56 = N95;
  assign N57 = N101;
  assign N58 = N104;
  assign N59 = N107;
  assign N60 = N110;
  assign N61 = N127;
  assign { N396, N395, N394, N393, N392, N391, N390, N389, N388, N387 } = (N60)? { N377, N376, N375, N374, N373, N372, N371, N370, N369, N368 } :
                                                                          (N386)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N400 = (N50)? N193 :
                (N51)? N246 :
                (N52)? 1'b0 :
                (N53)? 1'b0 :
                (N54)? 1'b0 :
                (N55)? 1'b0 :
                (N56)? N271 :
                (N57)? N284 :
                (N58)? N302 :
                (N59)? 1'b0 :
                (N60)? N378 :
                (N61)? 1'b1 : 1'b0;
  assign { N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401 } = (N62)? { N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N104, N101, N387, N95, N385, N384, N383, N382, N381, N84, N380, N93, N379 } :
                                                                                                                                                                    (N66)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N62 = N65;
  assign illegal_instr_o = (N62)? N400 :
                           (N66)? 1'b1 : 1'b0;
  assign { decode_o[45:45], decode_o[43:43], decode_o[41:41], decode_o[39:29], decode_o[27:27], decode_o[25:0] } = (N63)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                   (N64)? { N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N401, N410, N409, N408, N407, N406, N405, instr_i[19:15], instr_i[24:20], instr_i[11:7], N404, N403, N402, N401 } : 1'b0;
  assign N63 = decode_o[46];
  assign N64 = N426;
  assign N66 = ~N65;
  assign N74 = N446 | N447;
  assign N446 = ~N70;
  assign N447 = ~N73;
  assign N80 = N448 | N449;
  assign N448 = ~N77;
  assign N449 = ~N79;
  assign N82 = ~N81;
  assign N84 = ~N83;
  assign N89 = ~N88;
  assign N93 = ~N92;
  assign N95 = ~N94;
  assign N96 = ~instr_i[6];
  assign N97 = ~instr_i[2];
  assign N104 = ~N103;
  assign N107 = ~N106;
  assign N110 = ~N109;
  assign N127 = N112 | N455;
  assign N455 = N113 | N454;
  assign N454 = N115 | N453;
  assign N453 = N118 | N452;
  assign N452 = N121 | N451;
  assign N451 = N123 | N450;
  assign N450 = N125 | N126;
  assign N128 = ~instr_i[31];
  assign N129 = ~instr_i[29];
  assign N130 = ~instr_i[28];
  assign N131 = ~instr_i[26];
  assign N141 = ~N140;
  assign N145 = N143 | N144;
  assign N149 = N147 | N148;
  assign N153 = N151 | N152;
  assign N157 = N155 | N156;
  assign N161 = N159 | N160;
  assign N162 = ~instr_i[30];
  assign N183 = N176 | N458;
  assign N458 = N178 | N457;
  assign N457 = N179 | N456;
  assign N456 = N180 | N182;
  assign N196 = ~N195;
  assign N200 = N197 | N199;
  assign N205 = N203 | N204;
  assign N211 = N209 | N210;
  assign N221 = N218 | N220;
  assign N229 = N205 | N200;
  assign N230 = N211 | N229;
  assign N231 = N221 | N230;
  assign N232 = N222 | N231;
  assign N233 = N223 | N232;
  assign N234 = N224 | N233;
  assign N235 = N226 | N234;
  assign N236 = N228 | N235;
  assign N237 = ~N236;
  assign N250 = ~N249;
  assign N260 = ~instr_i[14];
  assign N274 = ~N273;
  assign N291 = ~N290;
  assign N292 = ~instr_i[13];
  assign N293 = ~instr_i[12];
  assign N303 = ~instr_i[27];
  assign N304 = ~instr_i[25];
  assign N305 = ~instr_i[23];
  assign N308 = ~N307;
  assign N309 = ~instr_i[24];
  assign N315 = ~N314;
  assign N317 = ~N316;
  assign N321 = ~N320;
  assign N327 = ~N326;
  assign N328 = ~instr_i[22];
  assign N333 = ~N332;
  assign N337 = ~N336;
  assign N338 = ~instr_i[20];
  assign N340 = ~N339;
  assign N346 = ~N345;
  assign N347 = ~instr_i[21];
  assign N356 = ~N355;
  assign N357 = N317 | N315;
  assign N358 = N321 | N357;
  assign N359 = N327 | N358;
  assign N360 = N333 | N359;
  assign N361 = N337 | N360;
  assign N362 = N340 | N361;
  assign N363 = N346 | N362;
  assign N364 = N356 | N363;
  assign N365 = ~N364;
  assign N386 = N109;
  assign N426 = ~illegal_instr_o;
  assign decode_o[46] = illegal_instr_o;

endmodule