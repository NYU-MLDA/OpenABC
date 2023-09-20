module bp_be_instr_decoder
(
  instr_i,
  fe_nop_v_i,
  be_nop_v_i,
  me_nop_v_i,
  decode_o,
  illegal_instr_o
);

  input [31:0] instr_i;
  output [42:0] decode_o;
  input fe_nop_v_i;
  input be_nop_v_i;
  input me_nop_v_i;
  output illegal_instr_o;
  wire [42:0] decode_o;
  wire illegal_instr_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
  N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,
  N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,
  N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,
  N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,
  N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,
  N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,
  N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,
  N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,
  N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,
  N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,
  N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,
  N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,
  N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,
  N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,
  N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,
  N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,
  N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,
  N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,
  N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,
  N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,
  N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,
  N370,N371,N372;
  assign decode_o[26] = 1'b0;
  assign decode_o[27] = 1'b0;
  assign decode_o[28] = 1'b0;
  assign decode_o[32] = 1'b0;
  assign decode_o[34] = 1'b0;
  assign decode_o[36] = 1'b0;
  assign N54 = instr_i[1] & instr_i[0];
  assign N56 = instr_i[6] | N339;
  assign N57 = N340 | instr_i[3];
  assign N58 = N56 | N57;
  assign N59 = N58 | instr_i[2];
  assign N60 = N340 | N341;
  assign N61 = N56 | N60;
  assign N62 = N61 | instr_i[2];
  assign N64 = instr_i[6] | instr_i[5];
  assign N65 = N64 | N57;
  assign N66 = N65 | instr_i[2];
  assign N67 = N64 | N60;
  assign N68 = N67 | instr_i[2];
  assign N70 = N58 | N86;
  assign N72 = N65 | N86;
  assign N74 = N85 | N339;
  assign N75 = instr_i[4] | N341;
  assign N76 = N74 | N75;
  assign N77 = N76 | N86;
  assign N79 = instr_i[4] | instr_i[3];
  assign N80 = N74 | N79;
  assign N81 = N80 | N86;
  assign N83 = N80 | instr_i[2];
  assign N87 = N85 & N339;
  assign N88 = N340 & N341;
  assign N89 = N87 & N88;
  assign N90 = N89 & N86;
  assign N91 = N56 | N79;
  assign N92 = N91 | instr_i[2];
  assign N94 = N64 | N75;
  assign N95 = N94 | N86;
  assign N97 = N74 | N57;
  assign N98 = N97 | instr_i[2];
  assign N100 = instr_i[6] & instr_i[4];
  assign N101 = N100 & instr_i[2];
  assign N102 = N100 & instr_i[3];
  assign N103 = instr_i[4] & instr_i[3];
  assign N104 = N103 & instr_i[2];
  assign N105 = N85 & instr_i[5];
  assign N106 = N340 & instr_i[2];
  assign N107 = N105 & N106;
  assign N108 = N85 & N340;
  assign N109 = N341 & instr_i[2];
  assign N110 = N108 & N109;
  assign N111 = N339 & N340;
  assign N112 = N111 & N109;
  assign N113 = N340 & instr_i[3];
  assign N114 = N113 & N86;
  assign N115 = instr_i[6] & N339;
  assign N123 = N117 & N118;
  assign N124 = N119 & N120;
  assign N125 = N121 & N122;
  assign N126 = instr_i[4] & N86;
  assign N127 = N123 & N124;
  assign N128 = N125 & N105;
  assign N129 = N126 & N54;
  assign N130 = N127 & N128;
  assign N131 = N130 & N129;
  assign N133 = N154 & N285;
  assign N134 = N133 & N341;
  assign N135 = N133 & instr_i[3];
  assign N137 = N166 & N285;
  assign N138 = N137 & N341;
  assign N139 = N137 & instr_i[3];
  assign N141 = N154 & N286;
  assign N142 = N141 & N341;
  assign N143 = N141 & instr_i[3];
  assign N145 = N159 & N286;
  assign N146 = N145 & N341;
  assign N147 = N145 & instr_i[3];
  assign N149 = N172 & N286;
  assign N150 = N149 & N341;
  assign N151 = N149 & instr_i[3];
  assign N154 = N153 & N251;
  assign N155 = N154 & N287;
  assign N156 = N155 & N341;
  assign N157 = N154 & N288;
  assign N158 = N157 & N341;
  assign N159 = N153 & instr_i[14];
  assign N160 = N159 & N285;
  assign N161 = N160 & N341;
  assign N162 = N159 & N287;
  assign N163 = N162 & N341;
  assign N164 = N159 & N288;
  assign N165 = N164 & N341;
  assign N166 = instr_i[30] & N251;
  assign N167 = N166 & instr_i[12];
  assign N168 = instr_i[14] & N284;
  assign N169 = N168 & instr_i[3];
  assign N170 = instr_i[13] & instr_i[3];
  assign N171 = instr_i[30] & instr_i[13];
  assign N172 = instr_i[30] & instr_i[14];
  assign N173 = N172 & N284;
  assign N185 = N87 & N126;
  assign N186 = N185 & N54;
  assign N188 = N242 & N216;
  assign N189 = N284 & instr_i[3];
  assign N190 = N242 & N189;
  assign N192 = N205 & N242;
  assign N193 = N198 & N192;
  assign N194 = N193 & N218;
  assign N195 = N193 & N210;
  assign N197 = N117 & N153;
  assign N198 = N197 & N204;
  assign N199 = N198 & N207;
  assign N200 = N199 & N218;
  assign N201 = N199 & N210;
  assign N203 = N117 & instr_i[30];
  assign N204 = N118 & N119;
  assign N205 = N120 & N121;
  assign N206 = N203 & N204;
  assign N207 = N205 & N245;
  assign N208 = N206 & N207;
  assign N209 = N208 & N218;
  assign N210 = instr_i[12] & instr_i[3];
  assign N211 = N208 & N210;
  assign N213 = N252 & N216;
  assign N214 = N252 & N218;
  assign N215 = N245 & N216;
  assign N216 = N284 & N341;
  assign N217 = N248 & N216;
  assign N218 = instr_i[12] & N341;
  assign N219 = N248 & N218;
  assign N238 = instr_i[2] | N342;
  assign N239 = N238 | N343;
  assign N240 = N80 | N239;
  assign N242 = N251 & N283;
  assign N243 = N242 & N284;
  assign N244 = N242 & instr_i[12];
  assign N245 = instr_i[14] & N283;
  assign N246 = N245 & N284;
  assign N247 = N245 & instr_i[12];
  assign N248 = instr_i[14] & instr_i[13];
  assign N249 = N248 & N284;
  assign N250 = N248 & instr_i[12];
  assign N252 = N251 & instr_i[13];
  assign N263 = N64 | N79;
  assign N264 = N263 | N239;
  assign N266 = N252 & N284;
  assign N267 = N252 & instr_i[12];
  assign N276 = N251 & N85;
  assign N277 = instr_i[5] & N340;
  assign N278 = N341 & N86;
  assign N279 = N276 & N277;
  assign N280 = N278 & N54;
  assign N281 = N279 & N280;
  assign N285 = N283 & N284;
  assign N286 = N283 & instr_i[12];
  assign N287 = instr_i[13] & N284;
  assign N288 = instr_i[13] & instr_i[12];
  assign N296 = N117 | N153;
  assign N297 = N118 | N119;
  assign N298 = instr_i[27] | instr_i[26];
  assign N299 = instr_i[25] | N294;
  assign N300 = instr_i[23] | N295;
  assign N301 = instr_i[21] | instr_i[20];
  assign N302 = N296 | N297;
  assign N303 = N298 | N299;
  assign N304 = N300 | N301;
  assign N305 = N302 | N303;
  assign N306 = N305 | N304;
  assign N339 = ~instr_i[5];
  assign N340 = ~instr_i[4];
  assign N341 = ~instr_i[3];
  assign N342 = ~instr_i[1];
  assign N343 = ~instr_i[0];
  assign N344 = N339 | instr_i[6];
  assign N345 = N340 | N344;
  assign N346 = N341 | N345;
  assign N347 = instr_i[2] | N346;
  assign N348 = N342 | N347;
  assign N349 = N343 | N348;
  assign N350 = ~N349;
  assign N351 = instr_i[5] | instr_i[6];
  assign N352 = N340 | N351;
  assign N353 = N341 | N352;
  assign N354 = instr_i[2] | N353;
  assign N355 = N342 | N354;
  assign N356 = N343 | N355;
  assign N357 = ~N356;
  assign { N178, N177, N176, N175 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
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
  assign N0 = N136;
  assign N1 = N140;
  assign N2 = N144;
  assign N3 = N148;
  assign N4 = N152;
  assign N5 = N156;
  assign N6 = N158;
  assign N7 = N161;
  assign N8 = N163;
  assign N9 = N165;
  assign N10 = N174;
  assign N179 = (N0)? 1'b0 : 
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
  assign { N183, N182, N181, N180 } = (N11)? { N178, N177, N176, N175 } : 
                                      (N132)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N11 = N131;
  assign N184 = (N11)? N179 : 
                (N132)? 1'b1 : 1'b0;
  assign { N231, N230, N229 } = (N12)? { 1'b0, 1'b0, 1'b0 } : 
                                (N13)? { 1'b0, 1'b0, 1'b1 } : 
                                (N14)? { 1'b1, 1'b0, 1'b1 } : 
                                (N15)? { 1'b1, 1'b0, 1'b1 } : 
                                (N16)? { 1'b0, 1'b1, 1'b0 } : 
                                (N17)? { 1'b0, 1'b1, 1'b1 } : 
                                (N18)? { 1'b1, 1'b0, 1'b0 } : 
                                (N19)? { 1'b1, 1'b1, 1'b0 } : 
                                (N20)? { 1'b1, 1'b1, 1'b1 } : 
                                (N228)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N12 = N191;
  assign N13 = N196;
  assign N14 = N202;
  assign N15 = N212;
  assign N16 = N213;
  assign N17 = N214;
  assign N18 = N215;
  assign N19 = N217;
  assign N20 = N219;
  assign N232 = (N12)? 1'b0 : 
                (N13)? 1'b0 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 
                (N16)? 1'b0 : 
                (N17)? 1'b0 : 
                (N18)? 1'b0 : 
                (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N228)? 1'b1 : 1'b0;
  assign { N236, N235, N234, N233 } = (N21)? { N212, N231, N230, N229 } : 
                                      (N187)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N21 = N186;
  assign N237 = (N21)? N232 : 
                (N187)? 1'b1 : 1'b0;
  assign { N256, N255, N254, N253 } = (N22)? { 1'b1, 1'b1, 1'b0, 1'b0 } : 
                                      (N23)? { 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                      (N24)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                      (N25)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
                                      (N26)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                      (N27)? { 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                      (N28)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = N243;
  assign N23 = N244;
  assign N24 = N246;
  assign N25 = N247;
  assign N26 = N249;
  assign N27 = N250;
  assign N28 = N252;
  assign N257 = (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 
                (N26)? 1'b0 : 
                (N27)? 1'b0 : 
                (N28)? 1'b1 : 1'b0;
  assign { N261, N260, N259, N258 } = (N29)? { N256, N255, N254, N253 } : 
                                      (N30)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N29 = N241;
  assign N30 = N240;
  assign N262 = (N29)? N257 : 
                (N30)? 1'b1 : 1'b0;
  assign { N270, N269, N268 } = (N22)? { 1'b0, 1'b0, 1'b0 } : 
                                (N23)? { 1'b0, 1'b0, 1'b1 } : 
                                (N31)? { 1'b0, 1'b1, 1'b0 } : 
                                (N24)? { 1'b1, 1'b0, 1'b0 } : 
                                (N25)? { 1'b1, 1'b0, 1'b1 } : 
                                (N26)? { 1'b1, 1'b1, 1'b0 } : 
                                (N32)? { 1'b0, 1'b1, 1'b1 } : 
                                (N27)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N31 = N266;
  assign N32 = N267;
  assign N271 = (N22)? 1'b0 : 
                (N23)? 1'b0 : 
                (N31)? 1'b0 : 
                (N24)? 1'b0 : 
                (N25)? 1'b0 : 
                (N26)? 1'b0 : 
                (N32)? 1'b0 : 
                (N27)? 1'b1 : 1'b0;
  assign { N274, N273, N272 } = (N33)? { N270, N269, N268 } : 
                                (N34)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N33 = N265;
  assign N34 = N264;
  assign N275 = (N33)? N271 : 
                (N34)? 1'b1 : 1'b0;
  assign { N290, N289 } = (N35)? { 1'b0, 1'b0 } : 
                          (N36)? { 1'b0, 1'b1 } : 
                          (N37)? { 1'b1, 1'b0 } : 
                          (N38)? { 1'b1, 1'b1 } : 1'b0;
  assign N35 = N285;
  assign N36 = N286;
  assign N37 = N287;
  assign N38 = N288;
  assign { N292, N291 } = (N39)? { N290, N289 } : 
                          (N282)? { 1'b0, 1'b0 } : 1'b0;
  assign N39 = N281;
  assign N293 = ~N281;
  assign { N319, N318, N317, N314, N313, N312, N311, N310, N309, N308 } = (N40)? { 1'b1, 1'b0, 1'b1, N350, N183, N182, N181, N180, 1'b0, 1'b0 } : 
                                                                          (N41)? { 1'b1, 1'b0, 1'b1, N357, N236, N235, N234, N233, 1'b1, 1'b0 } : 
                                                                          (N42)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                                                                          (N43)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                                          (N44)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                          (N45)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                          (N46)? { 1'b1, 1'b0, 1'b0, 1'b0, N261, N260, N259, N258, 1'b0, 1'b0 } : 
                                                                          (N47)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, N274, N273, N272, 1'b0, 1'b0 } : 
                                                                          (N48)? { 1'b0, 1'b1, 1'b0, 1'b0, N281, 1'b0, N292, N291, 1'b0, 1'b0 } : 
                                                                          (N49)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                          (N50)? { 1'b1, 1'b0, N307, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                          (N51)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N40 = N63;
  assign N41 = N69;
  assign N42 = N71;
  assign N43 = N73;
  assign N44 = N78;
  assign N45 = N82;
  assign N46 = N84;
  assign N47 = N90;
  assign N48 = N93;
  assign N49 = N96;
  assign N50 = N99;
  assign N51 = N116;
  assign N316 = (N50)? N307 : 
                (N315)? 1'b0 : 1'b0;
  assign N320 = (N40)? N184 : 
                (N41)? N237 : 
                (N42)? 1'b0 : 
                (N43)? 1'b0 : 
                (N44)? 1'b0 : 
                (N45)? 1'b0 : 
                (N46)? N262 : 
                (N47)? N275 : 
                (N48)? N293 : 
                (N49)? 1'b0 : 
                (N50)? N306 : 
                (N51)? 1'b1 : 1'b0;
  assign { N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321 } = (N52)? { N319, N318, N317, N316, N93, N90, N84, N314, N313, N312, N311, N310, N73, N309, N82, N308 } : 
                                                                                                              (N55)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N52 = N54;
  assign illegal_instr_o = (N52)? N320 : 
                           (N55)? 1'b1 : 1'b0;
  assign decode_o[42] = ~decode_o[38];
  assign { decode_o[41:39], decode_o[37:37], decode_o[35:35], decode_o[33:33], decode_o[31:29], decode_o[25:0] } = (N53)? { fe_nop_v_i, be_nop_v_i, me_nop_v_i, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                   (N338)? { 1'b0, 1'b0, 1'b0, N336, N335, N334, N333, N332, N331, N321, N330, N329, N328, N327, N326, N325, instr_i[19:15], instr_i[24:20], instr_i[11:7], N324, N323, N322, N321 } : 1'b0;
  assign N53 = decode_o[38];
  assign N55 = ~N54;
  assign N63 = N358 | N359;
  assign N358 = ~N59;
  assign N359 = ~N62;
  assign N69 = N360 | N361;
  assign N360 = ~N66;
  assign N361 = ~N68;
  assign N71 = ~N70;
  assign N73 = ~N72;
  assign N78 = ~N77;
  assign N82 = ~N81;
  assign N84 = ~N83;
  assign N85 = ~instr_i[6];
  assign N86 = ~instr_i[2];
  assign N93 = ~N92;
  assign N96 = ~N95;
  assign N99 = ~N98;
  assign N116 = N101 | N367;
  assign N367 = N102 | N366;
  assign N366 = N104 | N365;
  assign N365 = N107 | N364;
  assign N364 = N110 | N363;
  assign N363 = N112 | N362;
  assign N362 = N114 | N115;
  assign N117 = ~instr_i[31];
  assign N118 = ~instr_i[29];
  assign N119 = ~instr_i[28];
  assign N120 = ~instr_i[27];
  assign N121 = ~instr_i[26];
  assign N122 = ~instr_i[25];
  assign N132 = ~N131;
  assign N136 = N134 | N135;
  assign N140 = N138 | N139;
  assign N144 = N142 | N143;
  assign N148 = N146 | N147;
  assign N152 = N150 | N151;
  assign N153 = ~instr_i[30];
  assign N174 = N167 | N370;
  assign N370 = N169 | N369;
  assign N369 = N170 | N368;
  assign N368 = N171 | N173;
  assign N187 = ~N186;
  assign N191 = N188 | N190;
  assign N196 = N194 | N195;
  assign N202 = N200 | N201;
  assign N212 = N209 | N211;
  assign N220 = N196 | N191;
  assign N221 = N202 | N220;
  assign N222 = N212 | N221;
  assign N223 = N213 | N222;
  assign N224 = N214 | N223;
  assign N225 = N215 | N224;
  assign N226 = N217 | N225;
  assign N227 = N219 | N226;
  assign N228 = ~N227;
  assign N241 = ~N240;
  assign N251 = ~instr_i[14];
  assign N265 = ~N264;
  assign N282 = ~N281;
  assign N283 = ~instr_i[13];
  assign N284 = ~instr_i[12];
  assign N294 = ~instr_i[24];
  assign N295 = ~instr_i[22];
  assign N307 = ~N306;
  assign N315 = N98;
  assign N337 = N372 | illegal_instr_o;
  assign N372 = N371 | me_nop_v_i;
  assign N371 = fe_nop_v_i | be_nop_v_i;
  assign decode_o[38] = N337;
  assign N338 = ~decode_o[38];

endmodule