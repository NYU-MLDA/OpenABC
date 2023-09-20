module amo_alu
(
  amo_op_i,
  amo_operand_a_i,
  amo_operand_b_i,
  amo_result_o
);

  input [3:0] amo_op_i;
  input [63:0] amo_operand_a_i;
  input [63:0] amo_operand_b_i;
  output [63:0] amo_result_o;
  wire [63:0] amo_result_o;
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
  N742,N743,N744,N745,N746,N747,N748,N749,N750,N751,N752,N753,N754,N755;
  wire [64:64] adder_operand_a;
  wire [64:0] adder_operand_b,adder_sum;
  assign N12 = amo_op_i[3] | amo_op_i[2];
  assign N13 = N43 | amo_op_i[0];
  assign N14 = N12 | N13;
  assign N17 = N43 | N16;
  assign N18 = N12 | N17;
  assign N21 = amo_op_i[3] | N20;
  assign N22 = amo_op_i[1] | amo_op_i[0];
  assign N23 = N21 | N22;
  assign N25 = amo_op_i[1] | N16;
  assign N26 = N21 | N25;
  assign N28 = N21 | N13;
  assign N30 = N21 | N17;
  assign N32 = N42 | amo_op_i[2];
  assign N33 = N32 | N22;
  assign N35 = N32 | N13;
  assign N37 = N32 | N25;
  assign N39 = N32 | N17;
  assign N41 = amo_op_i[3] & amo_op_i[2];
  assign N44 = N42 & N20;
  assign N45 = N44 & N43;
  assign { N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239 } = $signed(1'b0) - $signed(amo_operand_b_i);
  assign { N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369 } = $signed(1'b0) - $signed(amo_operand_b_i);
  assign { N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498 } = 1'b0 - amo_operand_b_i;
  assign { N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627 } = 1'b0 - amo_operand_b_i;
  assign adder_sum = { adder_operand_a[64:64], amo_operand_a_i } + adder_operand_b;
  assign { N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305 } = (N0)? amo_operand_b_i : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N304)? amo_operand_a_i : 1'b0;
  assign N0 = adder_sum[64];
  assign { N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434 } = (N0)? amo_operand_a_i : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N304)? amo_operand_b_i : 1'b0;
  assign { N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563 } = (N0)? amo_operand_b_i : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N304)? amo_operand_a_i : 1'b0;
  assign { N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692 } = (N0)? amo_operand_a_i : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N304)? amo_operand_b_i : 1'b0;
  assign amo_result_o = (N1)? amo_operand_b_i : 
                        (N2)? amo_operand_b_i : 
                        (N3)? adder_sum[63:0] : 
                        (N4)? { N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110 } : 
                        (N5)? { N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174 } : 
                        (N6)? { N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235, N236, N237, N238 } : 
                        (N7)? { N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305 } : 
                        (N8)? { N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434 } : 
                        (N9)? { N626, N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563 } : 
                        (N10)? { N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692 } : 
                        (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = N15;
  assign N2 = N19;
  assign N3 = N24;
  assign N4 = N27;
  assign N5 = N29;
  assign N6 = N31;
  assign N7 = N34;
  assign N8 = N36;
  assign N9 = N38;
  assign N10 = N40;
  assign N11 = N46;
  assign adder_operand_b = (N1)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N2)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N3)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N4)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N5)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N6)? { amo_operand_b_i[63:63], amo_operand_b_i } : 
                           (N7)? { N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239 } : 
                           (N8)? { N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369 } : 
                           (N9)? { N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498 } : 
                           (N10)? { N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627 } : 
                           (N11)? { amo_operand_b_i[63:63], amo_operand_b_i } : 1'b0;
  assign adder_operand_a[64] = (N1)? amo_operand_a_i[63] : 
                               (N2)? amo_operand_a_i[63] : 
                               (N3)? amo_operand_a_i[63] : 
                               (N4)? amo_operand_a_i[63] : 
                               (N5)? amo_operand_a_i[63] : 
                               (N6)? amo_operand_a_i[63] : 
                               (N7)? amo_operand_a_i[63] : 
                               (N8)? amo_operand_a_i[63] : 
                               (N9)? 1'b0 : 
                               (N10)? 1'b0 : 
                               (N11)? amo_operand_a_i[63] : 1'b0;
  assign N15 = ~N14;
  assign N16 = ~amo_op_i[0];
  assign N19 = ~N18;
  assign N20 = ~amo_op_i[2];
  assign N24 = ~N23;
  assign N27 = ~N26;
  assign N29 = ~N28;
  assign N31 = ~N30;
  assign N34 = ~N33;
  assign N36 = ~N35;
  assign N38 = ~N37;
  assign N40 = ~N39;
  assign N42 = ~amo_op_i[3];
  assign N43 = ~amo_op_i[1];
  assign N46 = N41 | N45;
  assign N47 = amo_operand_a_i[63] & amo_operand_b_i[63];
  assign N48 = amo_operand_a_i[62] & amo_operand_b_i[62];
  assign N49 = amo_operand_a_i[61] & amo_operand_b_i[61];
  assign N50 = amo_operand_a_i[60] & amo_operand_b_i[60];
  assign N51 = amo_operand_a_i[59] & amo_operand_b_i[59];
  assign N52 = amo_operand_a_i[58] & amo_operand_b_i[58];
  assign N53 = amo_operand_a_i[57] & amo_operand_b_i[57];
  assign N54 = amo_operand_a_i[56] & amo_operand_b_i[56];
  assign N55 = amo_operand_a_i[55] & amo_operand_b_i[55];
  assign N56 = amo_operand_a_i[54] & amo_operand_b_i[54];
  assign N57 = amo_operand_a_i[53] & amo_operand_b_i[53];
  assign N58 = amo_operand_a_i[52] & amo_operand_b_i[52];
  assign N59 = amo_operand_a_i[51] & amo_operand_b_i[51];
  assign N60 = amo_operand_a_i[50] & amo_operand_b_i[50];
  assign N61 = amo_operand_a_i[49] & amo_operand_b_i[49];
  assign N62 = amo_operand_a_i[48] & amo_operand_b_i[48];
  assign N63 = amo_operand_a_i[47] & amo_operand_b_i[47];
  assign N64 = amo_operand_a_i[46] & amo_operand_b_i[46];
  assign N65 = amo_operand_a_i[45] & amo_operand_b_i[45];
  assign N66 = amo_operand_a_i[44] & amo_operand_b_i[44];
  assign N67 = amo_operand_a_i[43] & amo_operand_b_i[43];
  assign N68 = amo_operand_a_i[42] & amo_operand_b_i[42];
  assign N69 = amo_operand_a_i[41] & amo_operand_b_i[41];
  assign N70 = amo_operand_a_i[40] & amo_operand_b_i[40];
  assign N71 = amo_operand_a_i[39] & amo_operand_b_i[39];
  assign N72 = amo_operand_a_i[38] & amo_operand_b_i[38];
  assign N73 = amo_operand_a_i[37] & amo_operand_b_i[37];
  assign N74 = amo_operand_a_i[36] & amo_operand_b_i[36];
  assign N75 = amo_operand_a_i[35] & amo_operand_b_i[35];
  assign N76 = amo_operand_a_i[34] & amo_operand_b_i[34];
  assign N77 = amo_operand_a_i[33] & amo_operand_b_i[33];
  assign N78 = amo_operand_a_i[32] & amo_operand_b_i[32];
  assign N79 = amo_operand_a_i[31] & amo_operand_b_i[31];
  assign N80 = amo_operand_a_i[30] & amo_operand_b_i[30];
  assign N81 = amo_operand_a_i[29] & amo_operand_b_i[29];
  assign N82 = amo_operand_a_i[28] & amo_operand_b_i[28];
  assign N83 = amo_operand_a_i[27] & amo_operand_b_i[27];
  assign N84 = amo_operand_a_i[26] & amo_operand_b_i[26];
  assign N85 = amo_operand_a_i[25] & amo_operand_b_i[25];
  assign N86 = amo_operand_a_i[24] & amo_operand_b_i[24];
  assign N87 = amo_operand_a_i[23] & amo_operand_b_i[23];
  assign N88 = amo_operand_a_i[22] & amo_operand_b_i[22];
  assign N89 = amo_operand_a_i[21] & amo_operand_b_i[21];
  assign N90 = amo_operand_a_i[20] & amo_operand_b_i[20];
  assign N91 = amo_operand_a_i[19] & amo_operand_b_i[19];
  assign N92 = amo_operand_a_i[18] & amo_operand_b_i[18];
  assign N93 = amo_operand_a_i[17] & amo_operand_b_i[17];
  assign N94 = amo_operand_a_i[16] & amo_operand_b_i[16];
  assign N95 = amo_operand_a_i[15] & amo_operand_b_i[15];
  assign N96 = amo_operand_a_i[14] & amo_operand_b_i[14];
  assign N97 = amo_operand_a_i[13] & amo_operand_b_i[13];
  assign N98 = amo_operand_a_i[12] & amo_operand_b_i[12];
  assign N99 = amo_operand_a_i[11] & amo_operand_b_i[11];
  assign N100 = amo_operand_a_i[10] & amo_operand_b_i[10];
  assign N101 = amo_operand_a_i[9] & amo_operand_b_i[9];
  assign N102 = amo_operand_a_i[8] & amo_operand_b_i[8];
  assign N103 = amo_operand_a_i[7] & amo_operand_b_i[7];
  assign N104 = amo_operand_a_i[6] & amo_operand_b_i[6];
  assign N105 = amo_operand_a_i[5] & amo_operand_b_i[5];
  assign N106 = amo_operand_a_i[4] & amo_operand_b_i[4];
  assign N107 = amo_operand_a_i[3] & amo_operand_b_i[3];
  assign N108 = amo_operand_a_i[2] & amo_operand_b_i[2];
  assign N109 = amo_operand_a_i[1] & amo_operand_b_i[1];
  assign N110 = amo_operand_a_i[0] & amo_operand_b_i[0];
  assign N111 = amo_operand_a_i[63] | amo_operand_b_i[63];
  assign N112 = amo_operand_a_i[62] | amo_operand_b_i[62];
  assign N113 = amo_operand_a_i[61] | amo_operand_b_i[61];
  assign N114 = amo_operand_a_i[60] | amo_operand_b_i[60];
  assign N115 = amo_operand_a_i[59] | amo_operand_b_i[59];
  assign N116 = amo_operand_a_i[58] | amo_operand_b_i[58];
  assign N117 = amo_operand_a_i[57] | amo_operand_b_i[57];
  assign N118 = amo_operand_a_i[56] | amo_operand_b_i[56];
  assign N119 = amo_operand_a_i[55] | amo_operand_b_i[55];
  assign N120 = amo_operand_a_i[54] | amo_operand_b_i[54];
  assign N121 = amo_operand_a_i[53] | amo_operand_b_i[53];
  assign N122 = amo_operand_a_i[52] | amo_operand_b_i[52];
  assign N123 = amo_operand_a_i[51] | amo_operand_b_i[51];
  assign N124 = amo_operand_a_i[50] | amo_operand_b_i[50];
  assign N125 = amo_operand_a_i[49] | amo_operand_b_i[49];
  assign N126 = amo_operand_a_i[48] | amo_operand_b_i[48];
  assign N127 = amo_operand_a_i[47] | amo_operand_b_i[47];
  assign N128 = amo_operand_a_i[46] | amo_operand_b_i[46];
  assign N129 = amo_operand_a_i[45] | amo_operand_b_i[45];
  assign N130 = amo_operand_a_i[44] | amo_operand_b_i[44];
  assign N131 = amo_operand_a_i[43] | amo_operand_b_i[43];
  assign N132 = amo_operand_a_i[42] | amo_operand_b_i[42];
  assign N133 = amo_operand_a_i[41] | amo_operand_b_i[41];
  assign N134 = amo_operand_a_i[40] | amo_operand_b_i[40];
  assign N135 = amo_operand_a_i[39] | amo_operand_b_i[39];
  assign N136 = amo_operand_a_i[38] | amo_operand_b_i[38];
  assign N137 = amo_operand_a_i[37] | amo_operand_b_i[37];
  assign N138 = amo_operand_a_i[36] | amo_operand_b_i[36];
  assign N139 = amo_operand_a_i[35] | amo_operand_b_i[35];
  assign N140 = amo_operand_a_i[34] | amo_operand_b_i[34];
  assign N141 = amo_operand_a_i[33] | amo_operand_b_i[33];
  assign N142 = amo_operand_a_i[32] | amo_operand_b_i[32];
  assign N143 = amo_operand_a_i[31] | amo_operand_b_i[31];
  assign N144 = amo_operand_a_i[30] | amo_operand_b_i[30];
  assign N145 = amo_operand_a_i[29] | amo_operand_b_i[29];
  assign N146 = amo_operand_a_i[28] | amo_operand_b_i[28];
  assign N147 = amo_operand_a_i[27] | amo_operand_b_i[27];
  assign N148 = amo_operand_a_i[26] | amo_operand_b_i[26];
  assign N149 = amo_operand_a_i[25] | amo_operand_b_i[25];
  assign N150 = amo_operand_a_i[24] | amo_operand_b_i[24];
  assign N151 = amo_operand_a_i[23] | amo_operand_b_i[23];
  assign N152 = amo_operand_a_i[22] | amo_operand_b_i[22];
  assign N153 = amo_operand_a_i[21] | amo_operand_b_i[21];
  assign N154 = amo_operand_a_i[20] | amo_operand_b_i[20];
  assign N155 = amo_operand_a_i[19] | amo_operand_b_i[19];
  assign N156 = amo_operand_a_i[18] | amo_operand_b_i[18];
  assign N157 = amo_operand_a_i[17] | amo_operand_b_i[17];
  assign N158 = amo_operand_a_i[16] | amo_operand_b_i[16];
  assign N159 = amo_operand_a_i[15] | amo_operand_b_i[15];
  assign N160 = amo_operand_a_i[14] | amo_operand_b_i[14];
  assign N161 = amo_operand_a_i[13] | amo_operand_b_i[13];
  assign N162 = amo_operand_a_i[12] | amo_operand_b_i[12];
  assign N163 = amo_operand_a_i[11] | amo_operand_b_i[11];
  assign N164 = amo_operand_a_i[10] | amo_operand_b_i[10];
  assign N165 = amo_operand_a_i[9] | amo_operand_b_i[9];
  assign N166 = amo_operand_a_i[8] | amo_operand_b_i[8];
  assign N167 = amo_operand_a_i[7] | amo_operand_b_i[7];
  assign N168 = amo_operand_a_i[6] | amo_operand_b_i[6];
  assign N169 = amo_operand_a_i[5] | amo_operand_b_i[5];
  assign N170 = amo_operand_a_i[4] | amo_operand_b_i[4];
  assign N171 = amo_operand_a_i[3] | amo_operand_b_i[3];
  assign N172 = amo_operand_a_i[2] | amo_operand_b_i[2];
  assign N173 = amo_operand_a_i[1] | amo_operand_b_i[1];
  assign N174 = amo_operand_a_i[0] | amo_operand_b_i[0];
  assign N175 = amo_operand_a_i[63] ^ amo_operand_b_i[63];
  assign N176 = amo_operand_a_i[62] ^ amo_operand_b_i[62];
  assign N177 = amo_operand_a_i[61] ^ amo_operand_b_i[61];
  assign N178 = amo_operand_a_i[60] ^ amo_operand_b_i[60];
  assign N179 = amo_operand_a_i[59] ^ amo_operand_b_i[59];
  assign N180 = amo_operand_a_i[58] ^ amo_operand_b_i[58];
  assign N181 = amo_operand_a_i[57] ^ amo_operand_b_i[57];
  assign N182 = amo_operand_a_i[56] ^ amo_operand_b_i[56];
  assign N183 = amo_operand_a_i[55] ^ amo_operand_b_i[55];
  assign N184 = amo_operand_a_i[54] ^ amo_operand_b_i[54];
  assign N185 = amo_operand_a_i[53] ^ amo_operand_b_i[53];
  assign N186 = amo_operand_a_i[52] ^ amo_operand_b_i[52];
  assign N187 = amo_operand_a_i[51] ^ amo_operand_b_i[51];
  assign N188 = amo_operand_a_i[50] ^ amo_operand_b_i[50];
  assign N189 = amo_operand_a_i[49] ^ amo_operand_b_i[49];
  assign N190 = amo_operand_a_i[48] ^ amo_operand_b_i[48];
  assign N191 = amo_operand_a_i[47] ^ amo_operand_b_i[47];
  assign N192 = amo_operand_a_i[46] ^ amo_operand_b_i[46];
  assign N193 = amo_operand_a_i[45] ^ amo_operand_b_i[45];
  assign N194 = amo_operand_a_i[44] ^ amo_operand_b_i[44];
  assign N195 = amo_operand_a_i[43] ^ amo_operand_b_i[43];
  assign N196 = amo_operand_a_i[42] ^ amo_operand_b_i[42];
  assign N197 = amo_operand_a_i[41] ^ amo_operand_b_i[41];
  assign N198 = amo_operand_a_i[40] ^ amo_operand_b_i[40];
  assign N199 = amo_operand_a_i[39] ^ amo_operand_b_i[39];
  assign N200 = amo_operand_a_i[38] ^ amo_operand_b_i[38];
  assign N201 = amo_operand_a_i[37] ^ amo_operand_b_i[37];
  assign N202 = amo_operand_a_i[36] ^ amo_operand_b_i[36];
  assign N203 = amo_operand_a_i[35] ^ amo_operand_b_i[35];
  assign N204 = amo_operand_a_i[34] ^ amo_operand_b_i[34];
  assign N205 = amo_operand_a_i[33] ^ amo_operand_b_i[33];
  assign N206 = amo_operand_a_i[32] ^ amo_operand_b_i[32];
  assign N207 = amo_operand_a_i[31] ^ amo_operand_b_i[31];
  assign N208 = amo_operand_a_i[30] ^ amo_operand_b_i[30];
  assign N209 = amo_operand_a_i[29] ^ amo_operand_b_i[29];
  assign N210 = amo_operand_a_i[28] ^ amo_operand_b_i[28];
  assign N211 = amo_operand_a_i[27] ^ amo_operand_b_i[27];
  assign N212 = amo_operand_a_i[26] ^ amo_operand_b_i[26];
  assign N213 = amo_operand_a_i[25] ^ amo_operand_b_i[25];
  assign N214 = amo_operand_a_i[24] ^ amo_operand_b_i[24];
  assign N215 = amo_operand_a_i[23] ^ amo_operand_b_i[23];
  assign N216 = amo_operand_a_i[22] ^ amo_operand_b_i[22];
  assign N217 = amo_operand_a_i[21] ^ amo_operand_b_i[21];
  assign N218 = amo_operand_a_i[20] ^ amo_operand_b_i[20];
  assign N219 = amo_operand_a_i[19] ^ amo_operand_b_i[19];
  assign N220 = amo_operand_a_i[18] ^ amo_operand_b_i[18];
  assign N221 = amo_operand_a_i[17] ^ amo_operand_b_i[17];
  assign N222 = amo_operand_a_i[16] ^ amo_operand_b_i[16];
  assign N223 = amo_operand_a_i[15] ^ amo_operand_b_i[15];
  assign N224 = amo_operand_a_i[14] ^ amo_operand_b_i[14];
  assign N225 = amo_operand_a_i[13] ^ amo_operand_b_i[13];
  assign N226 = amo_operand_a_i[12] ^ amo_operand_b_i[12];
  assign N227 = amo_operand_a_i[11] ^ amo_operand_b_i[11];
  assign N228 = amo_operand_a_i[10] ^ amo_operand_b_i[10];
  assign N229 = amo_operand_a_i[9] ^ amo_operand_b_i[9];
  assign N230 = amo_operand_a_i[8] ^ amo_operand_b_i[8];
  assign N231 = amo_operand_a_i[7] ^ amo_operand_b_i[7];
  assign N232 = amo_operand_a_i[6] ^ amo_operand_b_i[6];
  assign N233 = amo_operand_a_i[5] ^ amo_operand_b_i[5];
  assign N234 = amo_operand_a_i[4] ^ amo_operand_b_i[4];
  assign N235 = amo_operand_a_i[3] ^ amo_operand_b_i[3];
  assign N236 = amo_operand_a_i[2] ^ amo_operand_b_i[2];
  assign N237 = amo_operand_a_i[1] ^ amo_operand_b_i[1];
  assign N238 = amo_operand_a_i[0] ^ amo_operand_b_i[0];
  assign N304 = ~adder_sum[64];

endmodule