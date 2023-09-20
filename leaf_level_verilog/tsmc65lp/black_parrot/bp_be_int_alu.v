module bp_be_int_alu
(
  src1_i,
  src2_i,
  op_i,
  opw_v_i,
  result_o
);

  input [63:0] src1_i;
  input [63:0] src2_i;
  input [3:0] op_i;
  output [63:0] result_o;
  input opw_v_i;
  wire [63:0] result_o,result_sgn;
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
  N790,N791,N792,N793,N794,N795;
  wire [31:0] resultw_sgn;
  assign N27 = N231 & N35;
  assign N28 = N272 | op_i[0];
  assign N30 = N248 | N35;
  assign N32 = N237 | N35;
  assign N34 = N256 & op_i[0];
  assign N36 = N272 | N35;
  assign N37 = op_i[2] & N35;
  assign { N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103 } = src1_i[31:0] << src2_i[4:0];
  assign { N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135 } = src1_i[31:0] >> src2_i[4:0];
  assign { N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167 } = $signed(src1_i[31:0]) >>> src2_i[4:0];
  assign N231 = N271 & N236;
  assign N232 = N241 & N35;
  assign N233 = N231 & N232;
  assign N234 = N272 | N238;
  assign N237 = op_i[3] | N236;
  assign N238 = op_i[1] | op_i[0];
  assign N239 = N237 | N238;
  assign N242 = N241 | op_i[0];
  assign N243 = N237 | N242;
  assign N245 = N241 | N35;
  assign N246 = N237 | N245;
  assign N248 = op_i[3] | op_i[2];
  assign N249 = N248 | N273;
  assign N251 = N237 | N273;
  assign N253 = N271 | N236;
  assign N254 = N253 | N273;
  assign N256 = op_i[3] & op_i[2];
  assign N257 = op_i[1] & op_i[0];
  assign N258 = N256 & N257;
  assign N259 = N248 | N242;
  assign N261 = N272 | N242;
  assign N263 = N253 | N238;
  assign N265 = N253 | N242;
  assign N267 = N248 | N245;
  assign N269 = N272 | N245;
  assign N272 = N271 | op_i[2];
  assign N273 = op_i[1] | N35;
  assign N274 = N272 | N273;
  assign { N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596 } = src1_i << src2_i[5:0];
  assign { N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660 } = src1_i >> src2_i[5:0];
  assign { N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724 } = $signed(src1_i) >>> src2_i[5:0];
  assign N788 = $signed(src1_i) < $signed(src2_i);
  assign N789 = $signed(src1_i) >= $signed(src2_i);
  assign N790 = src1_i == src2_i;
  assign N791 = src1_i != src2_i;
  assign N792 = src1_i < src2_i;
  assign N793 = src1_i >= src2_i;
  assign { N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276 } = $signed(src1_i) + $signed(src2_i);
  assign { N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39 } = $signed(src1_i[31:0]) + $signed(src2_i[31:0]);
  assign { N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340 } = $signed(src1_i) - $signed(src2_i);
  assign { N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71 } = $signed(src1_i[31:0]) - $signed(src2_i[31:0]);
  assign { N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199 } = (N0)? { N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39 } :
                                                                                                                                                                                                              (N1)? { N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71 } :
                                                                                                                                                                                                              (N2)? { N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103 } :
                                                                                                                                                                                                              (N3)? { N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135 } :
                                                                                                                                                                                                              (N4)? { N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167 } :
                                                                                                                                                                                                              (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N27;
  assign N1 = N29;
  assign N2 = N31;
  assign N3 = N33;
  assign N4 = N34;
  assign N5 = N38;
  assign resultw_sgn = (N6)? { N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199 } :
                       (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N6 = N241;
  assign N7 = op_i[1];
  assign result_sgn = (N8)? { N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276 } :
                      (N9)? { N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340 } :
                      (N10)? { N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, N415, N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, N464, N465, N466, N467 } :
                      (N11)? { N468, N469, N470, N471, N472, N473, N474, N475, N476, N477, N478, N479, N480, N481, N482, N483, N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, N507, N508, N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519, N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530, N531 } :
                      (N12)? { N532, N533, N534, N535, N536, N537, N538, N539, N540, N541, N542, N543, N544, N545, N546, N547, N548, N549, N550, N551, N552, N553, N554, N555, N556, N557, N558, N559, N560, N561, N562, N563, N564, N565, N566, N567, N568, N569, N570, N571, N572, N573, N574, N575, N576, N577, N578, N579, N580, N581, N582, N583, N584, N585, N586, N587, N588, N589, N590, N591, N592, N593, N594, N595 } :
                      (N13)? { N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596 } :
                      (N14)? { N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660 } :
                      (N15)? { N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724 } :
                      (N16)? src2_i :
                      (N17)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N788 } :
                      (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N789 } :
                      (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N790 } :
                      (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N791 } :
                      (N21)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N792 } :
                      (N22)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N793 } :
                      (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = N233;
  assign N9 = N235;
  assign N10 = N240;
  assign N11 = N244;
  assign N12 = N247;
  assign N13 = N250;
  assign N14 = N252;
  assign N15 = N255;
  assign N16 = N258;
  assign N17 = N260;
  assign N18 = N262;
  assign N19 = N264;
  assign N20 = N266;
  assign N21 = N268;
  assign N22 = N270;
  assign N23 = N275;
  assign result_o = (N24)? { resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn[31:31], resultw_sgn } :
                    (N25)? result_sgn : 1'b0;
  assign N24 = opw_v_i;
  assign N25 = N794;
  assign N26 = N241;
  assign N29 = ~N28;
  assign N31 = ~N30;
  assign N33 = ~N32;
  assign N35 = ~op_i[0];
  assign N38 = N795 | N37;
  assign N795 = ~N36;
  assign N235 = ~N234;
  assign N236 = ~op_i[2];
  assign N240 = ~N239;
  assign N241 = ~op_i[1];
  assign N244 = ~N243;
  assign N247 = ~N246;
  assign N250 = ~N249;
  assign N252 = ~N251;
  assign N255 = ~N254;
  assign N260 = ~N259;
  assign N262 = ~N261;
  assign N264 = ~N263;
  assign N266 = ~N265;
  assign N268 = ~N267;
  assign N270 = ~N269;
  assign N271 = ~op_i[3];
  assign N275 = ~N274;
  assign N404 = src1_i[63] ^ src2_i[63];
  assign N405 = src1_i[62] ^ src2_i[62];
  assign N406 = src1_i[61] ^ src2_i[61];
  assign N407 = src1_i[60] ^ src2_i[60];
  assign N408 = src1_i[59] ^ src2_i[59];
  assign N409 = src1_i[58] ^ src2_i[58];
  assign N410 = src1_i[57] ^ src2_i[57];
  assign N411 = src1_i[56] ^ src2_i[56];
  assign N412 = src1_i[55] ^ src2_i[55];
  assign N413 = src1_i[54] ^ src2_i[54];
  assign N414 = src1_i[53] ^ src2_i[53];
  assign N415 = src1_i[52] ^ src2_i[52];
  assign N416 = src1_i[51] ^ src2_i[51];
  assign N417 = src1_i[50] ^ src2_i[50];
  assign N418 = src1_i[49] ^ src2_i[49];
  assign N419 = src1_i[48] ^ src2_i[48];
  assign N420 = src1_i[47] ^ src2_i[47];
  assign N421 = src1_i[46] ^ src2_i[46];
  assign N422 = src1_i[45] ^ src2_i[45];
  assign N423 = src1_i[44] ^ src2_i[44];
  assign N424 = src1_i[43] ^ src2_i[43];
  assign N425 = src1_i[42] ^ src2_i[42];
  assign N426 = src1_i[41] ^ src2_i[41];
  assign N427 = src1_i[40] ^ src2_i[40];
  assign N428 = src1_i[39] ^ src2_i[39];
  assign N429 = src1_i[38] ^ src2_i[38];
  assign N430 = src1_i[37] ^ src2_i[37];
  assign N431 = src1_i[36] ^ src2_i[36];
  assign N432 = src1_i[35] ^ src2_i[35];
  assign N433 = src1_i[34] ^ src2_i[34];
  assign N434 = src1_i[33] ^ src2_i[33];
  assign N435 = src1_i[32] ^ src2_i[32];
  assign N436 = src1_i[31] ^ src2_i[31];
  assign N437 = src1_i[30] ^ src2_i[30];
  assign N438 = src1_i[29] ^ src2_i[29];
  assign N439 = src1_i[28] ^ src2_i[28];
  assign N440 = src1_i[27] ^ src2_i[27];
  assign N441 = src1_i[26] ^ src2_i[26];
  assign N442 = src1_i[25] ^ src2_i[25];
  assign N443 = src1_i[24] ^ src2_i[24];
  assign N444 = src1_i[23] ^ src2_i[23];
  assign N445 = src1_i[22] ^ src2_i[22];
  assign N446 = src1_i[21] ^ src2_i[21];
  assign N447 = src1_i[20] ^ src2_i[20];
  assign N448 = src1_i[19] ^ src2_i[19];
  assign N449 = src1_i[18] ^ src2_i[18];
  assign N450 = src1_i[17] ^ src2_i[17];
  assign N451 = src1_i[16] ^ src2_i[16];
  assign N452 = src1_i[15] ^ src2_i[15];
  assign N453 = src1_i[14] ^ src2_i[14];
  assign N454 = src1_i[13] ^ src2_i[13];
  assign N455 = src1_i[12] ^ src2_i[12];
  assign N456 = src1_i[11] ^ src2_i[11];
  assign N457 = src1_i[10] ^ src2_i[10];
  assign N458 = src1_i[9] ^ src2_i[9];
  assign N459 = src1_i[8] ^ src2_i[8];
  assign N460 = src1_i[7] ^ src2_i[7];
  assign N461 = src1_i[6] ^ src2_i[6];
  assign N462 = src1_i[5] ^ src2_i[5];
  assign N463 = src1_i[4] ^ src2_i[4];
  assign N464 = src1_i[3] ^ src2_i[3];
  assign N465 = src1_i[2] ^ src2_i[2];
  assign N466 = src1_i[1] ^ src2_i[1];
  assign N467 = src1_i[0] ^ src2_i[0];
  assign N468 = src1_i[63] | src2_i[63];
  assign N469 = src1_i[62] | src2_i[62];
  assign N470 = src1_i[61] | src2_i[61];
  assign N471 = src1_i[60] | src2_i[60];
  assign N472 = src1_i[59] | src2_i[59];
  assign N473 = src1_i[58] | src2_i[58];
  assign N474 = src1_i[57] | src2_i[57];
  assign N475 = src1_i[56] | src2_i[56];
  assign N476 = src1_i[55] | src2_i[55];
  assign N477 = src1_i[54] | src2_i[54];
  assign N478 = src1_i[53] | src2_i[53];
  assign N479 = src1_i[52] | src2_i[52];
  assign N480 = src1_i[51] | src2_i[51];
  assign N481 = src1_i[50] | src2_i[50];
  assign N482 = src1_i[49] | src2_i[49];
  assign N483 = src1_i[48] | src2_i[48];
  assign N484 = src1_i[47] | src2_i[47];
  assign N485 = src1_i[46] | src2_i[46];
  assign N486 = src1_i[45] | src2_i[45];
  assign N487 = src1_i[44] | src2_i[44];
  assign N488 = src1_i[43] | src2_i[43];
  assign N489 = src1_i[42] | src2_i[42];
  assign N490 = src1_i[41] | src2_i[41];
  assign N491 = src1_i[40] | src2_i[40];
  assign N492 = src1_i[39] | src2_i[39];
  assign N493 = src1_i[38] | src2_i[38];
  assign N494 = src1_i[37] | src2_i[37];
  assign N495 = src1_i[36] | src2_i[36];
  assign N496 = src1_i[35] | src2_i[35];
  assign N497 = src1_i[34] | src2_i[34];
  assign N498 = src1_i[33] | src2_i[33];
  assign N499 = src1_i[32] | src2_i[32];
  assign N500 = src1_i[31] | src2_i[31];
  assign N501 = src1_i[30] | src2_i[30];
  assign N502 = src1_i[29] | src2_i[29];
  assign N503 = src1_i[28] | src2_i[28];
  assign N504 = src1_i[27] | src2_i[27];
  assign N505 = src1_i[26] | src2_i[26];
  assign N506 = src1_i[25] | src2_i[25];
  assign N507 = src1_i[24] | src2_i[24];
  assign N508 = src1_i[23] | src2_i[23];
  assign N509 = src1_i[22] | src2_i[22];
  assign N510 = src1_i[21] | src2_i[21];
  assign N511 = src1_i[20] | src2_i[20];
  assign N512 = src1_i[19] | src2_i[19];
  assign N513 = src1_i[18] | src2_i[18];
  assign N514 = src1_i[17] | src2_i[17];
  assign N515 = src1_i[16] | src2_i[16];
  assign N516 = src1_i[15] | src2_i[15];
  assign N517 = src1_i[14] | src2_i[14];
  assign N518 = src1_i[13] | src2_i[13];
  assign N519 = src1_i[12] | src2_i[12];
  assign N520 = src1_i[11] | src2_i[11];
  assign N521 = src1_i[10] | src2_i[10];
  assign N522 = src1_i[9] | src2_i[9];
  assign N523 = src1_i[8] | src2_i[8];
  assign N524 = src1_i[7] | src2_i[7];
  assign N525 = src1_i[6] | src2_i[6];
  assign N526 = src1_i[5] | src2_i[5];
  assign N527 = src1_i[4] | src2_i[4];
  assign N528 = src1_i[3] | src2_i[3];
  assign N529 = src1_i[2] | src2_i[2];
  assign N530 = src1_i[1] | src2_i[1];
  assign N531 = src1_i[0] | src2_i[0];
  assign N532 = src1_i[63] & src2_i[63];
  assign N533 = src1_i[62] & src2_i[62];
  assign N534 = src1_i[61] & src2_i[61];
  assign N535 = src1_i[60] & src2_i[60];
  assign N536 = src1_i[59] & src2_i[59];
  assign N537 = src1_i[58] & src2_i[58];
  assign N538 = src1_i[57] & src2_i[57];
  assign N539 = src1_i[56] & src2_i[56];
  assign N540 = src1_i[55] & src2_i[55];
  assign N541 = src1_i[54] & src2_i[54];
  assign N542 = src1_i[53] & src2_i[53];
  assign N543 = src1_i[52] & src2_i[52];
  assign N544 = src1_i[51] & src2_i[51];
  assign N545 = src1_i[50] & src2_i[50];
  assign N546 = src1_i[49] & src2_i[49];
  assign N547 = src1_i[48] & src2_i[48];
  assign N548 = src1_i[47] & src2_i[47];
  assign N549 = src1_i[46] & src2_i[46];
  assign N550 = src1_i[45] & src2_i[45];
  assign N551 = src1_i[44] & src2_i[44];
  assign N552 = src1_i[43] & src2_i[43];
  assign N553 = src1_i[42] & src2_i[42];
  assign N554 = src1_i[41] & src2_i[41];
  assign N555 = src1_i[40] & src2_i[40];
  assign N556 = src1_i[39] & src2_i[39];
  assign N557 = src1_i[38] & src2_i[38];
  assign N558 = src1_i[37] & src2_i[37];
  assign N559 = src1_i[36] & src2_i[36];
  assign N560 = src1_i[35] & src2_i[35];
  assign N561 = src1_i[34] & src2_i[34];
  assign N562 = src1_i[33] & src2_i[33];
  assign N563 = src1_i[32] & src2_i[32];
  assign N564 = src1_i[31] & src2_i[31];
  assign N565 = src1_i[30] & src2_i[30];
  assign N566 = src1_i[29] & src2_i[29];
  assign N567 = src1_i[28] & src2_i[28];
  assign N568 = src1_i[27] & src2_i[27];
  assign N569 = src1_i[26] & src2_i[26];
  assign N570 = src1_i[25] & src2_i[25];
  assign N571 = src1_i[24] & src2_i[24];
  assign N572 = src1_i[23] & src2_i[23];
  assign N573 = src1_i[22] & src2_i[22];
  assign N574 = src1_i[21] & src2_i[21];
  assign N575 = src1_i[20] & src2_i[20];
  assign N576 = src1_i[19] & src2_i[19];
  assign N577 = src1_i[18] & src2_i[18];
  assign N578 = src1_i[17] & src2_i[17];
  assign N579 = src1_i[16] & src2_i[16];
  assign N580 = src1_i[15] & src2_i[15];
  assign N581 = src1_i[14] & src2_i[14];
  assign N582 = src1_i[13] & src2_i[13];
  assign N583 = src1_i[12] & src2_i[12];
  assign N584 = src1_i[11] & src2_i[11];
  assign N585 = src1_i[10] & src2_i[10];
  assign N586 = src1_i[9] & src2_i[9];
  assign N587 = src1_i[8] & src2_i[8];
  assign N588 = src1_i[7] & src2_i[7];
  assign N589 = src1_i[6] & src2_i[6];
  assign N590 = src1_i[5] & src2_i[5];
  assign N591 = src1_i[4] & src2_i[4];
  assign N592 = src1_i[3] & src2_i[3];
  assign N593 = src1_i[2] & src2_i[2];
  assign N594 = src1_i[1] & src2_i[1];
  assign N595 = src1_i[0] & src2_i[0];
  assign N794 = ~opw_v_i;

endmodule