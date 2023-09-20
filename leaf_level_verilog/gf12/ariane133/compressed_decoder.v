module compressed_decoder
(
  instr_i,
  instr_o,
  illegal_instr_o,
  is_compressed_o
);

  input [31:0] instr_i;
  output [31:0] instr_o;
  output illegal_instr_o;
  output is_compressed_o;
  wire [31:0] instr_o;
  wire illegal_instr_o,is_compressed_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,
  N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,
  N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,
  N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,
  N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,
  N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,
  N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,
  N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,
  N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,
  N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,
  N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,
  N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,
  N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,
  N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,
  N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,
  N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,
  N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,
  N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,
  N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,
  N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,
  N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,
  N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,
  N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,
  N415;
  assign N36 = N34 & N35;
  assign N37 = instr_i[1] | N35;
  assign N39 = N34 | instr_i[0];
  assign N41 = instr_i[1] & instr_i[0];
  assign N44 = N231 & N42;
  assign N45 = N44 & N43;
  assign N46 = instr_i[15] | instr_i[14];
  assign N47 = N46 | N43;
  assign N49 = instr_i[15] | N42;
  assign N50 = N49 | instr_i[13];
  assign N52 = N49 | N43;
  assign N54 = N231 | instr_i[14];
  assign N55 = N54 | N43;
  assign N57 = N231 | N42;
  assign N58 = N57 | instr_i[13];
  assign N60 = instr_i[15] & instr_i[14];
  assign N61 = N60 & instr_i[13];
  assign N62 = N54 | instr_i[13];
  assign N143 = N141 & N142;
  assign N144 = instr_i[11] | N142;
  assign N146 = N141 | instr_i[10];
  assign N148 = instr_i[11] & instr_i[10];
  assign N151 = N413 & N149;
  assign N152 = N151 & N150;
  assign N153 = instr_i[12] | instr_i[6];
  assign N154 = N153 | N150;
  assign N156 = instr_i[12] | N149;
  assign N157 = N156 | instr_i[5];
  assign N159 = N156 | N150;
  assign N161 = N413 | instr_i[6];
  assign N162 = N161 | instr_i[5];
  assign N164 = N161 | N150;
  assign N166 = N413 | N149;
  assign N167 = N166 | instr_i[5];
  assign N168 = instr_i[12] & instr_i[6];
  assign N169 = N168 & instr_i[5];
  assign N385 = ~instr_i[8];
  assign N386 = instr_i[10] | instr_i[11];
  assign N387 = instr_i[9] | N386;
  assign N388 = N385 | N387;
  assign N389 = instr_i[7] | N388;
  assign N390 = ~N389;
  assign N391 = instr_i[5] | instr_i[6];
  assign N392 = instr_i[4] | N391;
  assign N393 = instr_i[3] | N392;
  assign N394 = instr_i[2] | N393;
  assign N395 = ~N394;
  assign N396 = instr_i[8] | N387;
  assign N397 = instr_i[7] | N396;
  assign N398 = ~N397;
  assign N399 = instr_i[11] | instr_i[12];
  assign N400 = instr_i[10] | N399;
  assign N401 = instr_i[9] | N400;
  assign N402 = instr_i[8] | N401;
  assign N403 = instr_i[7] | N402;
  assign N404 = instr_i[6] | N403;
  assign N405 = instr_i[5] | N404;
  assign N406 = ~N405;
  assign N407 = instr_i[6] | instr_i[12];
  assign N408 = instr_i[5] | N407;
  assign N409 = instr_i[4] | N408;
  assign N410 = instr_i[3] | N409;
  assign N411 = instr_i[2] | N410;
  assign N412 = ~N411;
  assign N413 = ~instr_i[12];
  assign { N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64 } = (N0)? { 1'b0, 1'b0, instr_i[10:7], instr_i[12:11], instr_i[5:5], instr_i[6:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, instr_i[6:5], instr_i[12:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instr_i[5:5], instr_i[12:10], instr_i[6:6], 1'b0, 1'b0, 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N3)? { 1'b0, 1'b0, 1'b0, 1'b0, instr_i[6:5], instr_i[12:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, instr_i[6:5], instr_i[12:12], 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b1, instr_i[11:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instr_i[5:5], instr_i[12:12], 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b0, instr_i[11:10], instr_i[6:6], 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N6)? { 1'b0, 1'b0, 1'b0, 1'b0, instr_i[6:5], instr_i[12:12], 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b1, 1'b1, instr_i[11:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N7)? instr_i : 1'b0;
  assign N0 = N45;
  assign N1 = N48;
  assign N2 = N51;
  assign N3 = N53;
  assign N4 = N56;
  assign N5 = N59;
  assign N6 = N61;
  assign N7 = N63;
  assign N96 = (N0)? N406 : 
               (N1)? 1'b0 : 
               (N2)? 1'b0 : 
               (N3)? 1'b0 : 
               (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 
               (N7)? 1'b1 : 1'b0;
  assign { N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98 } = (N8)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:2], instr_i[11:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                              (N9)? { instr_i[31:12], instr_i[6:0] } : 1'b0;
  assign N8 = N397;
  assign N9 = N398;
  assign { N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125 } = (N10)? { instr_i[4:3], instr_i[5:5], instr_i[2:2], instr_i[6:6], 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                                                                              (N11)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:2], instr_i[11:7] } : 1'b0;
  assign N10 = N390;
  assign N11 = N389;
  assign { N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171 } = (N12)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N16)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N17)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[4:2], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N18)? { instr_i[31:10], instr_i[6:0] } : 1'b0;
  assign N12 = N152;
  assign N13 = N155;
  assign N14 = N158;
  assign N15 = N160;
  assign N16 = N163;
  assign N17 = N165;
  assign N18 = N170;
  assign N200 = (N12)? 1'b0 : 
                (N13)? 1'b0 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 
                (N16)? 1'b0 : 
                (N17)? 1'b0 : 
                (N18)? 1'b1 : 1'b0;
  assign { N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201 } = (N19)? { 1'b0, instr_i[10:10], 1'b0, 1'b0, 1'b0, 1'b0, instr_i[12:12], instr_i[6:2], 1'b0, 1'b1, instr_i[9:7], 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N20)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:2], 1'b0, 1'b1, instr_i[9:7], 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                            (N21)? { N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171 } : 1'b0;
  assign N19 = N145;
  assign N20 = N147;
  assign N21 = N148;
  assign N230 = (N19)? 1'b0 : 
                (N20)? 1'b0 : 
                (N21)? N200 : 1'b0;
  assign { N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232 } = (N0)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:2], instr_i[11:7], 1'b0, 1'b0, 1'b0, instr_i[11:7], 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                                              (N1)? { N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, instr_i[11:7], N104, N103, N102, N101, N100, N99, N98 } : 
                                                                                                                                                                                                              (N2)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instr_i[11:7], 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                                                                                                                                                                                              (N3)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], N140, N139, N138, N137, N136, N135, N135, N135, N135, N135, N135, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 1'b0, N389, 1'b1, 1'b0, N389, 1'b1, 1'b1 } : 
                                                                                                                                                                                                              (N7)? { N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, instr_i[9:7], N207, N206, N205, N204, N203, N202, N201 } : 
                                                                                                                                                                                                              (N4)? { instr_i[12:12], instr_i[8:8], instr_i[10:9], instr_i[6:6], instr_i[7:7], instr_i[2:2], instr_i[11:11], instr_i[5:3], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], 1'b0, 1'b0, 1'b0, 1'b0, N231, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                                                                                                                                                                                              (N22)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[6:5], instr_i[2:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b0, instr_i[13:13], instr_i[11:10], instr_i[4:3], instr_i[12:12], 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 1'b0;
  assign N22 = N97;
  assign N264 = (N0)? 1'b0 : 
                (N1)? N398 : 
                (N2)? 1'b0 : 
                (N3)? N412 : 
                (N7)? N230 : 
                (N4)? 1'b0 : 
                (N22)? 1'b0 : 1'b0;
  assign { N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265 } = (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instr_i[11:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                        (N24)? { instr_i[6:2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, instr_i[11:7] } : 1'b0;
  assign N23 = N395;
  assign N24 = N394;
  assign N280 = (N23)? N398 : 
                (N24)? 1'b0 : 1'b0;
  assign { N303, N302, N301, N300, N299, N292, N291, N290, N289, N288, N287, N286, N285 } = (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                                                                                            (N384)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                                                                                            (N284)? { instr_i[6:2], instr_i[11:7], 1'b0, 1'b1, 1'b0 } : 1'b0;
  assign N25 = N281;
  assign { N298, N297, N296, N295, N294 } = (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N293)? instr_i[11:7] : 
                                            (N26)? instr_i[11:7] : 1'b0;
  assign N26 = 1'b0;
  assign { N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304 } = (N27)? { N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N395, N394, N395 } : 
                                                                                                                          (N28)? { N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N292, N291, N290, N289, N288, N287, N286, N285 } : 1'b0;
  assign N27 = N413;
  assign N28 = instr_i[12];
  assign N322 = (N27)? N280 : 
                (N28)? 1'b0 : 1'b0;
  assign { N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N329, N328, N327, N326, N325, N324, N323 } = (N0)? { 1'b0, 1'b0, 1'b0, instr_i[12:12], instr_i[6:2], instr_i[11:7], 1'b0, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                                                                                                                                        (N1)? { instr_i[4:2], instr_i[12:12], instr_i[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                                                                                                                                        (N2)? { 1'b0, instr_i[3:2], instr_i[12:12], instr_i[6:4], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                        (N3)? { instr_i[4:2], instr_i[12:12], instr_i[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, instr_i[9:7], 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                        (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 1'b0, 1'b0, N309, N308, N307, N306, 1'b1, N305, N304 } : 
                                                                                                                                                        (N4)? { instr_i[9:7], instr_i[12:12], instr_i[6:2], 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                                                                                                                                                        (N5)? { 1'b0, instr_i[8:7], instr_i[12:12], instr_i[6:2], 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, instr_i[9:9], 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                                                                                                                                        (N6)? { instr_i[9:7], instr_i[12:12], instr_i[6:2], 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign { N332, N331 } = (N7)? { N311, N310 } : 
                          (N330)? instr_i[11:10] : 1'b0;
  assign N349 = (N0)? 1'b0 : 
                (N1)? N398 : 
                (N2)? N398 : 
                (N3)? N398 : 
                (N7)? N322 : 
                (N4)? 1'b0 : 
                (N5)? 1'b0 : 
                (N6)? 1'b0 : 1'b0;
  assign { N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350 } = (N29)? { N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64 } : 
                                                                                                                                                                                                              (N30)? { N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232 } : 
                                                                                                                                                                                                              (N31)? { 1'b0, 1'b0, 1'b0, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, 1'b0, N334, N333, N332, N331, N329, N328, N327, N326, N325, N324, 1'b0, N323, 1'b1, 1'b1 } : 
                                                                                                                                                                                                              (N32)? instr_i : 1'b0;
  assign N29 = N36;
  assign N30 = N38;
  assign N31 = N40;
  assign N32 = N41;
  assign illegal_instr_o = (N29)? N96 : 
                           (N30)? N264 : 
                           (N31)? N349 : 
                           (N32)? 1'b0 : 1'b0;
  assign is_compressed_o = (N29)? 1'b1 : 
                           (N30)? 1'b1 : 
                           (N31)? 1'b1 : 
                           (N32)? 1'b0 : 1'b0;
  assign instr_o = (N33)? instr_i : 
                   (N383)? { N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350 } : 1'b0;
  assign N33 = N382;
  assign N34 = ~instr_i[1];
  assign N35 = ~instr_i[0];
  assign N38 = ~N37;
  assign N40 = ~N39;
  assign N42 = ~instr_i[14];
  assign N43 = ~instr_i[13];
  assign N48 = ~N47;
  assign N51 = ~N50;
  assign N53 = ~N52;
  assign N56 = ~N55;
  assign N59 = ~N58;
  assign N63 = ~N62;
  assign N97 = N59 | N61;
  assign N141 = ~instr_i[11];
  assign N142 = ~instr_i[10];
  assign N145 = N143 | N414;
  assign N414 = ~N144;
  assign N147 = ~N146;
  assign N149 = ~instr_i[6];
  assign N150 = ~instr_i[5];
  assign N155 = ~N154;
  assign N158 = ~N157;
  assign N160 = ~N159;
  assign N163 = ~N162;
  assign N165 = ~N164;
  assign N170 = N415 | N169;
  assign N415 = ~N167;
  assign N231 = ~instr_i[15];
  assign N281 = N398 & N395;
  assign N282 = N397 & N395;
  assign N283 = N282 | N281;
  assign N284 = ~N283;
  assign N293 = ~N281;
  assign N330 = N62;
  assign N382 = illegal_instr_o & is_compressed_o;
  assign N383 = ~N382;
  assign N384 = N282 & N293;

endmodule