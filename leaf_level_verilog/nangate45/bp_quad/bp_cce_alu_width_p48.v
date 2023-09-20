module bp_cce_alu_width_p48
(
  v_i,
  br_v_i,
  opd_a_i,
  opd_b_i,
  alu_op_i,
  br_op_i,
  res_o,
  branch_res_o
);

  input [47:0] opd_a_i;
  input [47:0] opd_b_i;
  input [3:0] alu_op_i;
  input [3:0] br_op_i;
  output [47:0] res_o;
  input v_i;
  input br_v_i;
  output branch_res_o;
  wire [47:0] res_o;
  wire branch_res_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,equal,less,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,
  N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,
  N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,
  N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,
  N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,
  N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,
  N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,
  N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,
  N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,
  N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,
  N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,
  N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,
  N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,
  N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,
  N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,
  N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,
  N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,
  N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,
  N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,
  N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,
  N417,N418,N419,N420,N421,N422,N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,
  N433,N434,N435,N436,N437,N438,N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,
  N449,N450,N451,N452,N453,N454,N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,
  N465,N466,N467,N468,N469,N470,N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,
  N481,N482,N483,N484,N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,
  N497,N498,N499,N500,N501,N502,N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,
  N513,N514,N515,N516,N517,N518,N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,
  N529,N530,N531,N532,N533,N534,N535,N536,N537,N538,N539,N540,N541,N542,N543,N544,
  N545,N546,N547,N548,N549,N550,N551,N552,N553,N554,N555,N556,N557,N558,N559;
  assign equal = opd_a_i == opd_b_i;
  assign less = opd_a_i < opd_b_i;
  assign N29 = N26 & N27;
  assign N30 = N29 & N28;
  assign N31 = br_op_i[2] | br_op_i[1];
  assign N32 = N31 | N28;
  assign N34 = N26 | br_op_i[1];
  assign N35 = N34 | br_op_i[0];
  assign N37 = N34 | N28;
  assign N39 = br_op_i[2] & br_op_i[1];
  assign N40 = N39 & br_op_i[0];
  assign N41 = br_op_i[2] | N27;
  assign N42 = N41 | br_op_i[0];
  assign N44 = N26 | N27;
  assign N45 = N44 | br_op_i[0];
  assign N47 = N41 | N28;
  assign N57 = N67 & N74;
  assign N58 = N57 & N71;
  assign N59 = alu_op_i[2] | alu_op_i[1];
  assign N60 = N59 | N71;
  assign N62 = alu_op_i[2] | N74;
  assign N63 = N62 | alu_op_i[0];
  assign N65 = N62 | N71;
  assign N68 = N67 | alu_op_i[1];
  assign N69 = N68 | alu_op_i[0];
  assign N72 = N68 | N71;
  assign N75 = N67 | N74;
  assign N76 = N75 | alu_op_i[0];
  assign N78 = alu_op_i[2] & alu_op_i[1];
  assign N79 = N78 & alu_op_i[0];
  assign { N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176 } = opd_a_i << opd_b_i;
  assign { N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224 } = opd_a_i >> opd_b_i;
  assign { N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80 } = opd_a_i + opd_b_i;
  assign { N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128 } = opd_a_i - opd_b_i;
  assign N51 = (N0)? equal : 
               (N1)? N49 : 
               (N2)? less : 
               (N3)? N50 : 
               (N4)? 1'b1 : 
               (N5)? equal : 
               (N6)? equal : 
               (N7)? equal : 1'b0;
  assign N0 = N30;
  assign N1 = N33;
  assign N2 = N36;
  assign N3 = N38;
  assign N4 = N40;
  assign N5 = N43;
  assign N6 = N46;
  assign N7 = N48;
  assign N52 = (N8)? N51 : 
               (N9)? 1'b0 : 1'b0;
  assign N8 = N25;
  assign N9 = br_op_i[3];
  assign branch_res_o = (N10)? N52 : 
                        (N11)? 1'b0 : 1'b0;
  assign N10 = br_v_i;
  assign N11 = N24;
  assign { N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464 } = (N12)? { N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80 } : 
                                                                                                                                                                                                                                                                                                              (N13)? { N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128 } : 
                                                                                                                                                                                                                                                                                                              (N14)? { N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176 } : 
                                                                                                                                                                                                                                                                                                              (N15)? { N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224 } : 
                                                                                                                                                                                                                                                                                                              (N16)? { N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, N319 } : 
                                                                                                                                                                                                                                                                                                              (N17)? { N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343, N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354, N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, N367 } : 
                                                                                                                                                                                                                                                                                                              (N18)? { N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403, N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, N415 } : 
                                                                                                                                                                                                                                                                                                              (N19)? { N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456, N457, N458, N459, N460, N461, N462, N463 } : 1'b0;
  assign N12 = N58;
  assign N13 = N61;
  assign N14 = N64;
  assign N15 = N66;
  assign N16 = N70;
  assign N17 = N73;
  assign N18 = N77;
  assign N19 = N79;
  assign { N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512 } = (N20)? { N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464 } : 
                                                                                                                                                                                                                                                                                                              (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N20 = N55;
  assign N21 = alu_op_i[3];
  assign res_o = (N22)? { N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512 } : 
                 (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = v_i;
  assign N23 = N53;
  assign N24 = ~br_v_i;
  assign N25 = ~br_op_i[3];
  assign N26 = ~br_op_i[2];
  assign N27 = ~br_op_i[1];
  assign N28 = ~br_op_i[0];
  assign N33 = ~N32;
  assign N36 = ~N35;
  assign N38 = ~N37;
  assign N43 = ~N42;
  assign N46 = ~N45;
  assign N48 = ~N47;
  assign N49 = ~equal;
  assign N50 = less | equal;
  assign N53 = ~v_i;
  assign N54 = v_i;
  assign N55 = ~alu_op_i[3];
  assign N56 = N54 & N55;
  assign N61 = ~N60;
  assign N64 = ~N63;
  assign N66 = ~N65;
  assign N67 = ~alu_op_i[2];
  assign N70 = ~N69;
  assign N71 = ~alu_op_i[0];
  assign N73 = ~N72;
  assign N74 = ~alu_op_i[1];
  assign N77 = ~N76;
  assign N272 = opd_a_i[47] & opd_b_i[47];
  assign N273 = opd_a_i[46] & opd_b_i[46];
  assign N274 = opd_a_i[45] & opd_b_i[45];
  assign N275 = opd_a_i[44] & opd_b_i[44];
  assign N276 = opd_a_i[43] & opd_b_i[43];
  assign N277 = opd_a_i[42] & opd_b_i[42];
  assign N278 = opd_a_i[41] & opd_b_i[41];
  assign N279 = opd_a_i[40] & opd_b_i[40];
  assign N280 = opd_a_i[39] & opd_b_i[39];
  assign N281 = opd_a_i[38] & opd_b_i[38];
  assign N282 = opd_a_i[37] & opd_b_i[37];
  assign N283 = opd_a_i[36] & opd_b_i[36];
  assign N284 = opd_a_i[35] & opd_b_i[35];
  assign N285 = opd_a_i[34] & opd_b_i[34];
  assign N286 = opd_a_i[33] & opd_b_i[33];
  assign N287 = opd_a_i[32] & opd_b_i[32];
  assign N288 = opd_a_i[31] & opd_b_i[31];
  assign N289 = opd_a_i[30] & opd_b_i[30];
  assign N290 = opd_a_i[29] & opd_b_i[29];
  assign N291 = opd_a_i[28] & opd_b_i[28];
  assign N292 = opd_a_i[27] & opd_b_i[27];
  assign N293 = opd_a_i[26] & opd_b_i[26];
  assign N294 = opd_a_i[25] & opd_b_i[25];
  assign N295 = opd_a_i[24] & opd_b_i[24];
  assign N296 = opd_a_i[23] & opd_b_i[23];
  assign N297 = opd_a_i[22] & opd_b_i[22];
  assign N298 = opd_a_i[21] & opd_b_i[21];
  assign N299 = opd_a_i[20] & opd_b_i[20];
  assign N300 = opd_a_i[19] & opd_b_i[19];
  assign N301 = opd_a_i[18] & opd_b_i[18];
  assign N302 = opd_a_i[17] & opd_b_i[17];
  assign N303 = opd_a_i[16] & opd_b_i[16];
  assign N304 = opd_a_i[15] & opd_b_i[15];
  assign N305 = opd_a_i[14] & opd_b_i[14];
  assign N306 = opd_a_i[13] & opd_b_i[13];
  assign N307 = opd_a_i[12] & opd_b_i[12];
  assign N308 = opd_a_i[11] & opd_b_i[11];
  assign N309 = opd_a_i[10] & opd_b_i[10];
  assign N310 = opd_a_i[9] & opd_b_i[9];
  assign N311 = opd_a_i[8] & opd_b_i[8];
  assign N312 = opd_a_i[7] & opd_b_i[7];
  assign N313 = opd_a_i[6] & opd_b_i[6];
  assign N314 = opd_a_i[5] & opd_b_i[5];
  assign N315 = opd_a_i[4] & opd_b_i[4];
  assign N316 = opd_a_i[3] & opd_b_i[3];
  assign N317 = opd_a_i[2] & opd_b_i[2];
  assign N318 = opd_a_i[1] & opd_b_i[1];
  assign N319 = opd_a_i[0] & opd_b_i[0];
  assign N320 = opd_a_i[47] | opd_b_i[47];
  assign N321 = opd_a_i[46] | opd_b_i[46];
  assign N322 = opd_a_i[45] | opd_b_i[45];
  assign N323 = opd_a_i[44] | opd_b_i[44];
  assign N324 = opd_a_i[43] | opd_b_i[43];
  assign N325 = opd_a_i[42] | opd_b_i[42];
  assign N326 = opd_a_i[41] | opd_b_i[41];
  assign N327 = opd_a_i[40] | opd_b_i[40];
  assign N328 = opd_a_i[39] | opd_b_i[39];
  assign N329 = opd_a_i[38] | opd_b_i[38];
  assign N330 = opd_a_i[37] | opd_b_i[37];
  assign N331 = opd_a_i[36] | opd_b_i[36];
  assign N332 = opd_a_i[35] | opd_b_i[35];
  assign N333 = opd_a_i[34] | opd_b_i[34];
  assign N334 = opd_a_i[33] | opd_b_i[33];
  assign N335 = opd_a_i[32] | opd_b_i[32];
  assign N336 = opd_a_i[31] | opd_b_i[31];
  assign N337 = opd_a_i[30] | opd_b_i[30];
  assign N338 = opd_a_i[29] | opd_b_i[29];
  assign N339 = opd_a_i[28] | opd_b_i[28];
  assign N340 = opd_a_i[27] | opd_b_i[27];
  assign N341 = opd_a_i[26] | opd_b_i[26];
  assign N342 = opd_a_i[25] | opd_b_i[25];
  assign N343 = opd_a_i[24] | opd_b_i[24];
  assign N344 = opd_a_i[23] | opd_b_i[23];
  assign N345 = opd_a_i[22] | opd_b_i[22];
  assign N346 = opd_a_i[21] | opd_b_i[21];
  assign N347 = opd_a_i[20] | opd_b_i[20];
  assign N348 = opd_a_i[19] | opd_b_i[19];
  assign N349 = opd_a_i[18] | opd_b_i[18];
  assign N350 = opd_a_i[17] | opd_b_i[17];
  assign N351 = opd_a_i[16] | opd_b_i[16];
  assign N352 = opd_a_i[15] | opd_b_i[15];
  assign N353 = opd_a_i[14] | opd_b_i[14];
  assign N354 = opd_a_i[13] | opd_b_i[13];
  assign N355 = opd_a_i[12] | opd_b_i[12];
  assign N356 = opd_a_i[11] | opd_b_i[11];
  assign N357 = opd_a_i[10] | opd_b_i[10];
  assign N358 = opd_a_i[9] | opd_b_i[9];
  assign N359 = opd_a_i[8] | opd_b_i[8];
  assign N360 = opd_a_i[7] | opd_b_i[7];
  assign N361 = opd_a_i[6] | opd_b_i[6];
  assign N362 = opd_a_i[5] | opd_b_i[5];
  assign N363 = opd_a_i[4] | opd_b_i[4];
  assign N364 = opd_a_i[3] | opd_b_i[3];
  assign N365 = opd_a_i[2] | opd_b_i[2];
  assign N366 = opd_a_i[1] | opd_b_i[1];
  assign N367 = opd_a_i[0] | opd_b_i[0];
  assign N368 = opd_a_i[47] ^ opd_b_i[47];
  assign N369 = opd_a_i[46] ^ opd_b_i[46];
  assign N370 = opd_a_i[45] ^ opd_b_i[45];
  assign N371 = opd_a_i[44] ^ opd_b_i[44];
  assign N372 = opd_a_i[43] ^ opd_b_i[43];
  assign N373 = opd_a_i[42] ^ opd_b_i[42];
  assign N374 = opd_a_i[41] ^ opd_b_i[41];
  assign N375 = opd_a_i[40] ^ opd_b_i[40];
  assign N376 = opd_a_i[39] ^ opd_b_i[39];
  assign N377 = opd_a_i[38] ^ opd_b_i[38];
  assign N378 = opd_a_i[37] ^ opd_b_i[37];
  assign N379 = opd_a_i[36] ^ opd_b_i[36];
  assign N380 = opd_a_i[35] ^ opd_b_i[35];
  assign N381 = opd_a_i[34] ^ opd_b_i[34];
  assign N382 = opd_a_i[33] ^ opd_b_i[33];
  assign N383 = opd_a_i[32] ^ opd_b_i[32];
  assign N384 = opd_a_i[31] ^ opd_b_i[31];
  assign N385 = opd_a_i[30] ^ opd_b_i[30];
  assign N386 = opd_a_i[29] ^ opd_b_i[29];
  assign N387 = opd_a_i[28] ^ opd_b_i[28];
  assign N388 = opd_a_i[27] ^ opd_b_i[27];
  assign N389 = opd_a_i[26] ^ opd_b_i[26];
  assign N390 = opd_a_i[25] ^ opd_b_i[25];
  assign N391 = opd_a_i[24] ^ opd_b_i[24];
  assign N392 = opd_a_i[23] ^ opd_b_i[23];
  assign N393 = opd_a_i[22] ^ opd_b_i[22];
  assign N394 = opd_a_i[21] ^ opd_b_i[21];
  assign N395 = opd_a_i[20] ^ opd_b_i[20];
  assign N396 = opd_a_i[19] ^ opd_b_i[19];
  assign N397 = opd_a_i[18] ^ opd_b_i[18];
  assign N398 = opd_a_i[17] ^ opd_b_i[17];
  assign N399 = opd_a_i[16] ^ opd_b_i[16];
  assign N400 = opd_a_i[15] ^ opd_b_i[15];
  assign N401 = opd_a_i[14] ^ opd_b_i[14];
  assign N402 = opd_a_i[13] ^ opd_b_i[13];
  assign N403 = opd_a_i[12] ^ opd_b_i[12];
  assign N404 = opd_a_i[11] ^ opd_b_i[11];
  assign N405 = opd_a_i[10] ^ opd_b_i[10];
  assign N406 = opd_a_i[9] ^ opd_b_i[9];
  assign N407 = opd_a_i[8] ^ opd_b_i[8];
  assign N408 = opd_a_i[7] ^ opd_b_i[7];
  assign N409 = opd_a_i[6] ^ opd_b_i[6];
  assign N410 = opd_a_i[5] ^ opd_b_i[5];
  assign N411 = opd_a_i[4] ^ opd_b_i[4];
  assign N412 = opd_a_i[3] ^ opd_b_i[3];
  assign N413 = opd_a_i[2] ^ opd_b_i[2];
  assign N414 = opd_a_i[1] ^ opd_b_i[1];
  assign N415 = opd_a_i[0] ^ opd_b_i[0];
  assign N416 = ~opd_a_i[47];
  assign N417 = ~opd_a_i[46];
  assign N418 = ~opd_a_i[45];
  assign N419 = ~opd_a_i[44];
  assign N420 = ~opd_a_i[43];
  assign N421 = ~opd_a_i[42];
  assign N422 = ~opd_a_i[41];
  assign N423 = ~opd_a_i[40];
  assign N424 = ~opd_a_i[39];
  assign N425 = ~opd_a_i[38];
  assign N426 = ~opd_a_i[37];
  assign N427 = ~opd_a_i[36];
  assign N428 = ~opd_a_i[35];
  assign N429 = ~opd_a_i[34];
  assign N430 = ~opd_a_i[33];
  assign N431 = ~opd_a_i[32];
  assign N432 = ~opd_a_i[31];
  assign N433 = ~opd_a_i[30];
  assign N434 = ~opd_a_i[29];
  assign N435 = ~opd_a_i[28];
  assign N436 = ~opd_a_i[27];
  assign N437 = ~opd_a_i[26];
  assign N438 = ~opd_a_i[25];
  assign N439 = ~opd_a_i[24];
  assign N440 = ~opd_a_i[23];
  assign N441 = ~opd_a_i[22];
  assign N442 = ~opd_a_i[21];
  assign N443 = ~opd_a_i[20];
  assign N444 = ~opd_a_i[19];
  assign N445 = ~opd_a_i[18];
  assign N446 = ~opd_a_i[17];
  assign N447 = ~opd_a_i[16];
  assign N448 = ~opd_a_i[15];
  assign N449 = ~opd_a_i[14];
  assign N450 = ~opd_a_i[13];
  assign N451 = ~opd_a_i[12];
  assign N452 = ~opd_a_i[11];
  assign N453 = ~opd_a_i[10];
  assign N454 = ~opd_a_i[9];
  assign N455 = ~opd_a_i[8];
  assign N456 = ~opd_a_i[7];
  assign N457 = ~opd_a_i[6];
  assign N458 = ~opd_a_i[5];
  assign N459 = ~opd_a_i[4];
  assign N460 = ~opd_a_i[3];
  assign N461 = ~opd_a_i[2];
  assign N462 = ~opd_a_i[1];
  assign N463 = ~opd_a_i[0];

endmodule