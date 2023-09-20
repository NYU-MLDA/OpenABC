module dec_dec_ctl
(
  inst,
  out_alu_,
  out_rs1_,
  out_rs2_,
  out_imm12_,
  out_rd_,
  out_shimm5_,
  out_imm20_,
  out_pc_,
  out_load_,
  out_store_,
  out_lsu_,
  out_add_,
  out_sub_,
  out_land_,
  out_lor_,
  out_lxor_,
  out_sll_,
  out_sra_,
  out_srl_,
  out_slt_,
  out_unsign_,
  out_condbr_,
  out_beq_,
  out_bne_,
  out_bge_,
  out_blt_,
  out_jal_,
  out_by_,
  out_half_,
  out_word_,
  out_csr_read_,
  out_csr_clr_,
  out_csr_set_,
  out_csr_write_,
  out_csr_imm_,
  out_presync_,
  out_postsync_,
  out_ebreak_,
  out_ecall_,
  out_mret_,
  out_mul_,
  out_rs1_sign_,
  out_rs2_sign_,
  out_low_,
  out_div_,
  out_rem_,
  out_fence_,
  out_fence_i_,
  out_pm_alu_,
  out_legal_
);

  input [31:0] inst;
  output out_alu_;
  output out_rs1_;
  output out_rs2_;
  output out_imm12_;
  output out_rd_;
  output out_shimm5_;
  output out_imm20_;
  output out_pc_;
  output out_load_;
  output out_store_;
  output out_lsu_;
  output out_add_;
  output out_sub_;
  output out_land_;
  output out_lor_;
  output out_lxor_;
  output out_sll_;
  output out_sra_;
  output out_srl_;
  output out_slt_;
  output out_unsign_;
  output out_condbr_;
  output out_beq_;
  output out_bne_;
  output out_bge_;
  output out_blt_;
  output out_jal_;
  output out_by_;
  output out_half_;
  output out_word_;
  output out_csr_read_;
  output out_csr_clr_;
  output out_csr_set_;
  output out_csr_write_;
  output out_csr_imm_;
  output out_presync_;
  output out_postsync_;
  output out_ebreak_;
  output out_ecall_;
  output out_mret_;
  output out_mul_;
  output out_rs1_sign_;
  output out_rs2_sign_;
  output out_low_;
  output out_div_;
  output out_rem_;
  output out_fence_;
  output out_fence_i_;
  output out_pm_alu_;
  output out_legal_;
  wire out_alu_,out_rs1_,out_rs2_,out_imm12_,out_rd_,out_shimm5_,out_imm20_,out_pc_,
  out_load_,out_store_,out_lsu_,out_add_,out_sub_,out_land_,out_lor_,out_lxor_,
  out_sll_,out_sra_,out_srl_,out_slt_,out_unsign_,out_condbr_,out_beq_,out_bne_,
  out_bge_,out_blt_,out_jal_,out_by_,out_half_,out_word_,out_csr_read_,out_csr_clr_,
  out_csr_set_,out_csr_write_,out_csr_imm_,out_presync_,out_postsync_,out_ebreak_,
  out_ecall_,out_mret_,out_mul_,out_rs1_sign_,out_rs2_sign_,out_low_,out_div_,out_rem_,
  out_fence_,out_fence_i_,out_pm_alu_,out_legal_,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,
  N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,
  N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,
  N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,
  N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,
  N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,
  N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,
  N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,
  N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,
  N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,
  N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,
  N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,
  N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,
  N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,
  N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,
  N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,
  N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,
  N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,
  N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,
  N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,
  N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,
  N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,
  N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,N425,N426,N427,
  N428,N429,N430,N431,N432,N433,N434,N435,N436,N437,N438,N439,N440,N441,N442,N443,
  N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,N454,N455,N456,N457,N458,N459,
  N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,N470,N471,N472,N473,N474,N475,
  N476,N477,N478,N479,N480,N481,N482,N483,N484,N485,N486,N487,N488,N489,N490,N491,
  N492,N493,N494,N495,N496,N497,N498,N499,N500,N501,N502,N503,N504,N505,N506,N507,
  N508,N509,N510,N511,N512,N513,N514,N515,N516,N517,N518,N519,N520,N521,N522,N523,
  N524,N525,N526,N527,N528,N529,N530,N531,N532,N533,N534,N535,N536,N537,N538,N539,
  N540,N541,N542,N543,N544,N545,N546,N547,N548,N549,N550,N551,N552,N553,N554,N555,
  N556,N557,N558,N559,N560,N561,N562,N563,N564,N565,N566,N567,N568,N569,N570,N571,
  N572,N573,N574,N575,N576,N577,N578,N579,N580,N581,N582,N583,N584,N585,N586,N587,
  N588,N589,N590,N591,N592,N593,N594,N595,N596,N597,N598,N599,N600,N601,N602,N603,
  N604,N605,N606,N607,N608,N609,N610,N611,N612,N613,N614,N615,N616,N617,N618,N619,
  N620,N621,N622,N623,N624,N625,N626,N627,N628,N629,N630,N631,N632,N633,N634,N635,
  N636,N637,N638,N639,N640,N641,N642,N643,N644,N645,N646,N647,N648,N649,N650,N651,
  N652,N653,N654,N655,N656,N657,N658,N659,N660,N661,N662,N663,N664,N665,N666,N667,
  N668,N669,N670,N671,N672,N673,N674,N675,N676,N677,N678,N679,N680,N681,N682,N683,
  N684,N685,N686,N687,N688,N689,N690,N691,N692,N693,N694,N695,N696,N697,N698,N699,
  N700,N701,N702,N703,N704,N705,N706,N707,N708,N709,N710,N711,N712,N713,N714,N715,
  N716,N717,N718,N719,N720,N721,N722,N723,N724,N725,N726;
  assign out_alu_ = N32 | N34;
  assign N32 = N29 | N31;
  assign N29 = inst[2] | inst[6];
  assign N31 = N30 & inst[4];
  assign N30 = ~inst[25];
  assign N34 = N33 & inst[4];
  assign N33 = ~inst[5];
  assign N0 = ~inst[13];
  assign N1 = ~inst[2];
  assign out_rs1_ = N71 | N73;
  assign N71 = N67 | N70;
  assign N67 = N64 | N66;
  assign N64 = N61 | N63;
  assign N61 = N58 | N60;
  assign N58 = N55 | N57;
  assign N55 = N52 | N54;
  assign N52 = N49 | N51;
  assign N49 = N46 | N48;
  assign N46 = N43 | N45;
  assign N43 = N40 | N42;
  assign N40 = N37 | N39;
  assign N37 = N36 & N1;
  assign N36 = N35 & N0;
  assign N35 = ~inst[14];
  assign N39 = N38 & N1;
  assign N38 = N0 & inst[11];
  assign N42 = N41 & N1;
  assign N41 = inst[19] & inst[13];
  assign N45 = N44 & N1;
  assign N44 = N0 & inst[10];
  assign N48 = N47 & N1;
  assign N47 = inst[18] & inst[13];
  assign N51 = N50 & N1;
  assign N50 = N0 & inst[9];
  assign N54 = N53 & N1;
  assign N53 = inst[17] & inst[13];
  assign N57 = N56 & N1;
  assign N56 = N0 & inst[8];
  assign N60 = N59 & N1;
  assign N59 = inst[16] & inst[13];
  assign N63 = N62 & N1;
  assign N62 = N0 & inst[7];
  assign N66 = N65 & N1;
  assign N65 = inst[15] & inst[13];
  assign N70 = N68 & N69;
  assign N68 = ~inst[4];
  assign N69 = ~inst[3];
  assign N73 = N72 & N1;
  assign N72 = ~inst[6];
  assign out_rs2_ = N75 | N77;
  assign N75 = N74 & N1;
  assign N74 = inst[5] & N68;
  assign N77 = N76 & N1;
  assign N76 = N72 & inst[5];
  assign N2 = ~inst[12];
  assign out_imm12_ = N87 | N90;
  assign N87 = N83 | N86;
  assign N83 = N79 | N82;
  assign N79 = N78 & inst[2];
  assign N78 = N68 & N69;
  assign N82 = N81 & N1;
  assign N81 = N80 & inst[4];
  assign N80 = inst[13] & N33;
  assign N86 = N85 & inst[4];
  assign N85 = N84 & inst[6];
  assign N84 = N0 & N2;
  assign N90 = N89 & N1;
  assign N89 = N88 & inst[4];
  assign N88 = N2 & N33;
  assign out_rd_ = N93 | inst[4];
  assign N93 = N91 | N92;
  assign N91 = N33 & N1;
  assign N92 = inst[5] & inst[2];
  assign out_shimm5_ = N96 & N1;
  assign N96 = N95 & inst[4];
  assign N95 = N94 & N33;
  assign N94 = N0 & inst[12];
  assign out_imm20_ = N97 | N98;
  assign N97 = inst[5] & inst[3];
  assign N98 = inst[4] & inst[2];
  assign out_pc_ = N100 | N101;
  assign N100 = N99 & inst[2];
  assign N99 = N33 & N69;
  assign N101 = inst[5] & inst[3];
  assign out_load_ = N102 & N1;
  assign N102 = N33 & N68;
  assign out_store_ = N103 & N68;
  assign N103 = N72 & inst[5];
  assign out_lsu_ = N104 & N1;
  assign N104 = N72 & N68;
  assign out_add_ = N111 | N119;
  assign N111 = N108 | N110;
  assign N108 = N107 & inst[4];
  assign N107 = N106 & N33;
  assign N106 = N105 & N2;
  assign N105 = N35 & N0;
  assign N110 = N109 & inst[2];
  assign N109 = N33 & N69;
  assign N119 = N118 & N1;
  assign N118 = N117 & inst[4];
  assign N117 = N116 & N72;
  assign N116 = N115 & N2;
  assign N115 = N114 & N0;
  assign N114 = N113 & N35;
  assign N113 = N112 & N30;
  assign N112 = ~inst[30];
  assign out_sub_ = N135 | N137;
  assign N135 = N130 | N134;
  assign N130 = N124 | N129;
  assign N124 = N123 & N1;
  assign N123 = N122 & inst[4];
  assign N122 = N121 & inst[5];
  assign N121 = N120 & N72;
  assign N120 = inst[30] & N2;
  assign N129 = N128 & N1;
  assign N128 = N127 & inst[4];
  assign N127 = N126 & N72;
  assign N126 = N125 & inst[13];
  assign N125 = N30 & N35;
  assign N134 = N133 & N1;
  assign N133 = N132 & inst[4];
  assign N132 = N131 & N33;
  assign N131 = N35 & inst[13];
  assign N137 = N136 & N1;
  assign N136 = inst[6] & N68;
  assign out_land_ = N141 | N146;
  assign N141 = N140 & N1;
  assign N140 = N139 & N33;
  assign N139 = N138 & inst[12];
  assign N138 = inst[14] & inst[13];
  assign N146 = N145 & N1;
  assign N145 = N144 & N72;
  assign N144 = N143 & inst[12];
  assign N143 = N142 & inst[13];
  assign N142 = N30 & inst[14];
  assign out_lor_ = N179 | N181;
  assign N179 = N176 | N178;
  assign N176 = N173 | N175;
  assign N173 = N170 | N172;
  assign N170 = N167 | N169;
  assign N167 = N162 | N166;
  assign N162 = N159 | N161;
  assign N159 = N156 | N158;
  assign N156 = N153 | N155;
  assign N153 = N147 | N152;
  assign N147 = N72 & inst[3];
  assign N152 = N151 & N1;
  assign N151 = N150 & inst[4];
  assign N150 = N149 & N2;
  assign N149 = N148 & inst[13];
  assign N148 = N30 & inst[14];
  assign N155 = N154 & inst[2];
  assign N154 = inst[5] & inst[4];
  assign N158 = N157 & inst[4];
  assign N157 = N2 & inst[6];
  assign N161 = N160 & inst[4];
  assign N160 = inst[13] & inst[6];
  assign N166 = N165 & N1;
  assign N165 = N164 & N33;
  assign N164 = N163 & N2;
  assign N163 = inst[14] & inst[13];
  assign N169 = N168 & inst[4];
  assign N168 = inst[7] & inst[6];
  assign N172 = N171 & inst[4];
  assign N171 = inst[8] & inst[6];
  assign N175 = N174 & inst[4];
  assign N174 = inst[9] & inst[6];
  assign N178 = N177 & inst[4];
  assign N177 = inst[10] & inst[6];
  assign N181 = N180 & inst[4];
  assign N180 = inst[11] & inst[6];
  assign out_lxor_ = N186 | N191;
  assign N186 = N185 & N1;
  assign N185 = N184 & inst[4];
  assign N184 = N183 & N2;
  assign N183 = N182 & N0;
  assign N182 = N30 & inst[14];
  assign N191 = N190 & N1;
  assign N190 = N189 & inst[4];
  assign N189 = N188 & N33;
  assign N188 = N187 & N2;
  assign N187 = inst[14] & N0;
  assign out_sll_ = N196 & N1;
  assign N196 = N195 & inst[4];
  assign N195 = N194 & N72;
  assign N194 = N193 & inst[12];
  assign N193 = N192 & N0;
  assign N192 = N30 & N35;
  assign out_sra_ = N200 & N1;
  assign N200 = N199 & inst[4];
  assign N199 = N198 & N72;
  assign N198 = N197 & inst[12];
  assign N197 = inst[30] & N0;
  assign out_srl_ = N206 & N1;
  assign N206 = N205 & inst[4];
  assign N205 = N204 & N72;
  assign N204 = N203 & inst[12];
  assign N203 = N202 & N0;
  assign N202 = N201 & inst[14];
  assign N201 = N112 & N30;
  assign out_slt_ = N211 | N215;
  assign N211 = N210 & N1;
  assign N210 = N209 & inst[4];
  assign N209 = N208 & N72;
  assign N208 = N207 & inst[13];
  assign N207 = N30 & N35;
  assign N215 = N214 & N1;
  assign N214 = N213 & inst[4];
  assign N213 = N212 & N33;
  assign N212 = N35 & inst[13];
  assign out_unsign_ = N232 | N237;
  assign N232 = N226 | N231;
  assign N226 = N223 | N225;
  assign N223 = N219 | N222;
  assign N219 = N218 & N1;
  assign N218 = N217 & N33;
  assign N217 = N216 & inst[12];
  assign N216 = N35 & inst[13];
  assign N222 = N221 & N1;
  assign N221 = N220 & N68;
  assign N220 = inst[13] & inst[6];
  assign N225 = N224 & N68;
  assign N224 = inst[14] & N33;
  assign N231 = N230 & N1;
  assign N230 = N229 & N72;
  assign N229 = N228 & inst[12];
  assign N228 = N227 & inst[13];
  assign N227 = N30 & N35;
  assign N237 = N236 & N1;
  assign N236 = N235 & inst[5];
  assign N235 = N234 & N72;
  assign N234 = N233 & inst[12];
  assign N233 = inst[25] & inst[14];
  assign out_condbr_ = N238 & N1;
  assign N238 = inst[6] & N68;
  assign out_beq_ = N241 & N1;
  assign N241 = N240 & N68;
  assign N240 = N239 & inst[6];
  assign N239 = N35 & N2;
  assign out_bne_ = N244 & N1;
  assign N244 = N243 & N68;
  assign N243 = N242 & inst[6];
  assign N242 = N35 & inst[12];
  assign out_bge_ = N247 & N1;
  assign N247 = N246 & N68;
  assign N246 = N245 & inst[5];
  assign N245 = inst[14] & inst[12];
  assign out_blt_ = N250 & N1;
  assign N250 = N249 & N68;
  assign N249 = N248 & inst[5];
  assign N248 = inst[14] & N2;
  assign out_jal_ = inst[6] & inst[2];
  assign out_by_ = N253 & N1;
  assign N253 = N252 & N68;
  assign N252 = N251 & N72;
  assign N251 = N0 & N2;
  assign out_half_ = N255 & N1;
  assign N255 = N254 & N68;
  assign N254 = inst[12] & N72;
  assign out_word_ = N256 & N68;
  assign N256 = inst[13] & N72;
  assign out_csr_read_ = N270 | N272;
  assign N270 = N267 | N269;
  assign N267 = N264 | N266;
  assign N264 = N261 | N263;
  assign N261 = N258 | N260;
  assign N258 = N257 & inst[4];
  assign N257 = inst[13] & inst[6];
  assign N260 = N259 & inst[4];
  assign N259 = inst[7] & inst[6];
  assign N263 = N262 & inst[4];
  assign N262 = inst[8] & inst[6];
  assign N266 = N265 & inst[4];
  assign N265 = inst[9] & inst[6];
  assign N269 = N268 & inst[4];
  assign N268 = inst[10] & inst[6];
  assign N272 = N271 & inst[4];
  assign N271 = inst[11] & inst[6];
  assign out_csr_clr_ = N291 | N295;
  assign N291 = N286 | N290;
  assign N286 = N281 | N285;
  assign N281 = N276 | N280;
  assign N276 = N275 & inst[4];
  assign N275 = N274 & inst[6];
  assign N274 = N273 & inst[12];
  assign N273 = inst[15] & inst[13];
  assign N280 = N279 & inst[4];
  assign N279 = N278 & inst[6];
  assign N278 = N277 & inst[12];
  assign N277 = inst[16] & inst[13];
  assign N285 = N284 & inst[4];
  assign N284 = N283 & inst[6];
  assign N283 = N282 & inst[12];
  assign N282 = inst[17] & inst[13];
  assign N290 = N289 & inst[4];
  assign N289 = N288 & inst[6];
  assign N288 = N287 & inst[12];
  assign N287 = inst[18] & inst[13];
  assign N295 = N294 & inst[4];
  assign N294 = N293 & inst[6];
  assign N293 = N292 & inst[12];
  assign N292 = inst[19] & inst[13];
  assign out_csr_set_ = N310 | N313;
  assign N310 = N306 | N309;
  assign N306 = N302 | N305;
  assign N302 = N298 | N301;
  assign N298 = N297 & inst[4];
  assign N297 = N296 & inst[6];
  assign N296 = inst[15] & N2;
  assign N301 = N300 & inst[4];
  assign N300 = N299 & inst[6];
  assign N299 = inst[16] & N2;
  assign N305 = N304 & inst[4];
  assign N304 = N303 & inst[6];
  assign N303 = inst[17] & N2;
  assign N309 = N308 & inst[4];
  assign N308 = N307 & inst[6];
  assign N307 = inst[18] & N2;
  assign N313 = N312 & inst[4];
  assign N312 = N311 & inst[6];
  assign N311 = inst[19] & N2;
  assign out_csr_write_ = N315 & inst[4];
  assign N315 = N314 & inst[6];
  assign N314 = N0 & inst[12];
  assign out_csr_imm_ = N334 | N337;
  assign N334 = N330 | N333;
  assign N330 = N326 | N329;
  assign N326 = N322 | N325;
  assign N322 = N318 | N321;
  assign N318 = N317 & inst[4];
  assign N317 = N316 & inst[6];
  assign N316 = inst[14] & N0;
  assign N321 = N320 & inst[4];
  assign N320 = N319 & inst[6];
  assign N319 = inst[15] & inst[14];
  assign N325 = N324 & inst[4];
  assign N324 = N323 & inst[6];
  assign N323 = inst[16] & inst[14];
  assign N329 = N328 & inst[4];
  assign N328 = N327 & inst[6];
  assign N327 = inst[17] & inst[14];
  assign N333 = N332 & inst[4];
  assign N332 = N331 & inst[6];
  assign N331 = inst[18] & inst[14];
  assign N337 = N336 & inst[4];
  assign N336 = N335 & inst[6];
  assign N335 = inst[19] & inst[14];
  assign out_presync_ = N379 | N382;
  assign N379 = N375 | N378;
  assign N375 = N371 | N374;
  assign N371 = N367 | N370;
  assign N367 = N363 | N366;
  assign N363 = N359 | N362;
  assign N359 = N355 | N358;
  assign N355 = N351 | N354;
  assign N351 = N347 | N350;
  assign N347 = N343 | N346;
  assign N343 = N338 | N342;
  assign N338 = N33 & inst[3];
  assign N342 = N341 & N1;
  assign N341 = N340 & inst[5];
  assign N340 = N339 & N72;
  assign N339 = inst[25] & inst[14];
  assign N346 = N345 & inst[4];
  assign N345 = N344 & inst[6];
  assign N344 = N0 & inst[7];
  assign N350 = N349 & inst[4];
  assign N349 = N348 & inst[6];
  assign N348 = N0 & inst[8];
  assign N354 = N353 & inst[4];
  assign N353 = N352 & inst[6];
  assign N352 = N0 & inst[9];
  assign N358 = N357 & inst[4];
  assign N357 = N356 & inst[6];
  assign N356 = N0 & inst[10];
  assign N362 = N361 & inst[4];
  assign N361 = N360 & inst[6];
  assign N360 = N0 & inst[11];
  assign N366 = N365 & inst[4];
  assign N365 = N364 & inst[6];
  assign N364 = inst[15] & inst[13];
  assign N370 = N369 & inst[4];
  assign N369 = N368 & inst[6];
  assign N368 = inst[16] & inst[13];
  assign N374 = N373 & inst[4];
  assign N373 = N372 & inst[6];
  assign N372 = inst[17] & inst[13];
  assign N378 = N377 & inst[4];
  assign N377 = N376 & inst[6];
  assign N376 = inst[18] & inst[13];
  assign N382 = N381 & inst[4];
  assign N381 = N380 & inst[6];
  assign N380 = inst[19] & inst[13];
  assign out_postsync_ = N431 | N434;
  assign N431 = N427 | N430;
  assign N427 = N423 | N426;
  assign N423 = N419 | N422;
  assign N419 = N415 | N418;
  assign N415 = N411 | N414;
  assign N411 = N407 | N410;
  assign N407 = N403 | N406;
  assign N403 = N399 | N402;
  assign N399 = N395 | N398;
  assign N395 = N390 | N394;
  assign N390 = N384 | N389;
  assign N384 = N383 & inst[3];
  assign N383 = inst[12] & N33;
  assign N389 = N388 & inst[4];
  assign N388 = N387 & inst[6];
  assign N387 = N386 & N2;
  assign N386 = N385 & N0;
  assign N385 = ~inst[22];
  assign N394 = N393 & N1;
  assign N393 = N392 & inst[5];
  assign N392 = N391 & N72;
  assign N391 = inst[25] & inst[14];
  assign N398 = N397 & inst[4];
  assign N397 = N396 & inst[6];
  assign N396 = N0 & inst[7];
  assign N402 = N401 & inst[4];
  assign N401 = N400 & inst[6];
  assign N400 = N0 & inst[8];
  assign N406 = N405 & inst[4];
  assign N405 = N404 & inst[6];
  assign N404 = N0 & inst[9];
  assign N410 = N409 & inst[4];
  assign N409 = N408 & inst[6];
  assign N408 = N0 & inst[10];
  assign N414 = N413 & inst[4];
  assign N413 = N412 & inst[6];
  assign N412 = N0 & inst[11];
  assign N418 = N417 & inst[4];
  assign N417 = N416 & inst[6];
  assign N416 = inst[15] & inst[13];
  assign N422 = N421 & inst[4];
  assign N421 = N420 & inst[6];
  assign N420 = inst[16] & inst[13];
  assign N426 = N425 & inst[4];
  assign N425 = N424 & inst[6];
  assign N424 = inst[17] & inst[13];
  assign N430 = N429 & inst[4];
  assign N429 = N428 & inst[6];
  assign N428 = inst[18] & inst[13];
  assign N434 = N433 & inst[4];
  assign N433 = N432 & inst[6];
  assign N432 = inst[19] & inst[13];
  assign out_ebreak_ = N438 & inst[4];
  assign N438 = N437 & inst[6];
  assign N437 = N436 & N2;
  assign N436 = N435 & N0;
  assign N435 = N385 & inst[20];
  assign out_ecall_ = N444 & inst[4];
  assign N444 = N443 & inst[6];
  assign N443 = N442 & N2;
  assign N442 = N441 & N0;
  assign N441 = N439 & N440;
  assign N439 = ~inst[21];
  assign N440 = ~inst[20];
  assign out_mret_ = N447 & inst[4];
  assign N447 = N446 & inst[6];
  assign N446 = N445 & N2;
  assign N445 = inst[29] & N0;
  assign out_mul_ = N451 & N1;
  assign N451 = N450 & inst[4];
  assign N450 = N449 & inst[5];
  assign N449 = N448 & N72;
  assign N448 = inst[25] & N35;
  assign N3 = inst[25] & N35;
  assign out_rs1_sign_ = N457 | N462;
  assign N457 = N456 & N1;
  assign N456 = N455 & inst[4];
  assign N455 = N454 & inst[5];
  assign N454 = N453 & N72;
  assign N453 = N452 & N2;
  assign N452 = N3 & inst[13];
  assign N462 = N461 & N1;
  assign N461 = N460 & inst[4];
  assign N460 = N459 & N72;
  assign N459 = N458 & inst[12];
  assign N458 = N3 & N0;
  assign out_rs2_sign_ = N467 & N1;
  assign N467 = N466 & inst[4];
  assign N466 = N465 & N72;
  assign N465 = N464 & inst[12];
  assign N464 = N463 & N0;
  assign N463 = inst[25] & N35;
  assign out_low_ = N472 & N1;
  assign N472 = N471 & inst[4];
  assign N471 = N470 & inst[5];
  assign N470 = N469 & N2;
  assign N469 = N468 & N0;
  assign N468 = inst[25] & N35;
  assign out_div_ = N475 & N1;
  assign N475 = N474 & inst[5];
  assign N474 = N473 & N72;
  assign N473 = inst[25] & inst[14];
  assign out_rem_ = N479 & N1;
  assign N479 = N478 & inst[5];
  assign N478 = N477 & N72;
  assign N477 = N476 & inst[13];
  assign N476 = inst[25] & inst[14];
  assign out_fence_ = N33 & inst[3];
  assign out_fence_i_ = N480 & inst[3];
  assign N480 = inst[12] & N33;
  assign out_pm_alu_ = N489 | N490;
  assign N489 = N486 | N488;
  assign N486 = N484 | N485;
  assign N484 = N483 & inst[4];
  assign N483 = N482 & N2;
  assign N482 = N481 & N0;
  assign N481 = inst[28] & inst[22];
  assign N485 = inst[4] & inst[2];
  assign N488 = N487 & inst[4];
  assign N487 = N30 & N72;
  assign N490 = N33 & inst[4];
  assign N4 = ~inst[31];
  assign N5 = N4 & N112;
  assign N6 = ~inst[27];
  assign N7 = ~inst[26];
  assign N8 = ~inst[24];
  assign N9 = ~inst[23];
  assign N10 = ~inst[19];
  assign N11 = ~inst[18];
  assign N12 = ~inst[17];
  assign N13 = ~inst[16];
  assign N14 = ~inst[15];
  assign N15 = ~inst[11];
  assign N16 = ~inst[10];
  assign N17 = ~inst[9];
  assign N18 = ~inst[8];
  assign N19 = ~inst[7];
  assign N20 = ~inst[29];
  assign N21 = N5 & N20;
  assign N22 = ~inst[28];
  assign N23 = N21 & N22;
  assign N24 = N491 & N7;
  assign N491 = N23 & N6;
  assign N25 = N24 & N30;
  assign N26 = N494 & N439;
  assign N494 = N493 & N385;
  assign N493 = N492 & N9;
  assign N492 = N25 & N8;
  assign N27 = N498 & N30;
  assign N498 = N497 & N7;
  assign N497 = N496 & N6;
  assign N496 = N495 & N22;
  assign N495 = N4 & N20;
  assign N28 = N35 & N0;
  assign out_legal_ = N721 | N726;
  assign N721 = N713 | N720;
  assign N713 = N706 | N712;
  assign N706 = N699 | N705;
  assign N699 = N691 | N698;
  assign N691 = N683 | N690;
  assign N683 = N662 | N682;
  assign N662 = N641 | N661;
  assign N641 = N633 | N640;
  assign N633 = N626 | N632;
  assign N626 = N619 | N625;
  assign N619 = N611 | N618;
  assign N611 = N603 | N610;
  assign N603 = N596 | N602;
  assign N596 = N587 | N595;
  assign N587 = N578 | N586;
  assign N578 = N572 | N577;
  assign N572 = N554 | N571;
  assign N554 = N526 | N553;
  assign N526 = N525 & inst[0];
  assign N525 = N524 & inst[1];
  assign N524 = N523 & N1;
  assign N523 = N522 & N69;
  assign N522 = N521 & inst[4];
  assign N521 = N520 & inst[5];
  assign N520 = N519 & inst[6];
  assign N519 = N518 & N19;
  assign N518 = N517 & N18;
  assign N517 = N516 & N17;
  assign N516 = N515 & N16;
  assign N515 = N514 & N15;
  assign N514 = N513 & N35;
  assign N513 = N512 & N14;
  assign N512 = N511 & N13;
  assign N511 = N510 & N12;
  assign N510 = N509 & N11;
  assign N509 = N508 & N10;
  assign N508 = N507 & N440;
  assign N507 = N506 & inst[21];
  assign N506 = N505 & N385;
  assign N505 = N504 & N9;
  assign N504 = N503 & N8;
  assign N503 = N502 & N30;
  assign N502 = N501 & N7;
  assign N501 = N500 & N6;
  assign N500 = N499 & inst[28];
  assign N499 = N5 & inst[29];
  assign N553 = N552 & inst[0];
  assign N552 = N551 & inst[1];
  assign N551 = N550 & N1;
  assign N550 = N549 & N69;
  assign N549 = N548 & inst[4];
  assign N548 = N547 & inst[5];
  assign N547 = N546 & inst[6];
  assign N546 = N545 & N19;
  assign N545 = N544 & N18;
  assign N544 = N543 & N17;
  assign N543 = N542 & N16;
  assign N542 = N541 & N15;
  assign N541 = N540 & N35;
  assign N540 = N539 & N14;
  assign N539 = N538 & N13;
  assign N538 = N537 & N12;
  assign N537 = N536 & N11;
  assign N536 = N535 & N10;
  assign N535 = N534 & inst[20];
  assign N534 = N533 & N439;
  assign N533 = N532 & inst[22];
  assign N532 = N531 & N9;
  assign N531 = N530 & N8;
  assign N530 = N529 & N30;
  assign N529 = N528 & N7;
  assign N528 = N527 & N6;
  assign N527 = N21 & inst[28];
  assign N571 = N570 & inst[0];
  assign N570 = N569 & inst[1];
  assign N569 = N568 & N1;
  assign N568 = N567 & N69;
  assign N567 = N566 & inst[4];
  assign N566 = N565 & inst[5];
  assign N565 = N564 & N19;
  assign N564 = N563 & N18;
  assign N563 = N562 & N17;
  assign N562 = N561 & N16;
  assign N561 = N560 & N15;
  assign N560 = N559 & N35;
  assign N559 = N558 & N14;
  assign N558 = N557 & N13;
  assign N557 = N556 & N12;
  assign N556 = N555 & N11;
  assign N555 = N26 & N10;
  assign N577 = N576 & inst[0];
  assign N576 = N575 & inst[1];
  assign N575 = N574 & N69;
  assign N574 = N573 & inst[4];
  assign N573 = N25 & N72;
  assign N586 = N585 & inst[0];
  assign N585 = N584 & inst[1];
  assign N584 = N583 & N1;
  assign N583 = N582 & N69;
  assign N582 = N581 & N72;
  assign N581 = N580 & N2;
  assign N580 = N579 & N0;
  assign N579 = N27 & N35;
  assign N595 = N594 & inst[0];
  assign N594 = N593 & inst[1];
  assign N593 = N592 & N69;
  assign N592 = N591 & inst[4];
  assign N591 = N590 & N72;
  assign N590 = N589 & inst[12];
  assign N589 = N588 & N0;
  assign N588 = N27 & inst[14];
  assign N602 = N601 & inst[0];
  assign N601 = N600 & inst[1];
  assign N600 = N599 & N69;
  assign N599 = N598 & inst[4];
  assign N598 = N597 & inst[5];
  assign N597 = N24 & N72;
  assign N610 = N609 & inst[0];
  assign N609 = N608 & inst[1];
  assign N608 = N607 & N69;
  assign N607 = N606 & N68;
  assign N606 = N605 & inst[5];
  assign N605 = N604 & inst[6];
  assign N604 = N28 & N2;
  assign N618 = N617 & inst[0];
  assign N617 = N616 & inst[1];
  assign N616 = N615 & N1;
  assign N615 = N614 & N69;
  assign N614 = N613 & N68;
  assign N613 = N612 & inst[5];
  assign N612 = inst[14] & inst[6];
  assign N625 = N624 & inst[0];
  assign N624 = N623 & inst[1];
  assign N623 = N622 & N69;
  assign N622 = N621 & inst[4];
  assign N621 = N620 & N33;
  assign N620 = N2 & N72;
  assign N632 = N631 & inst[0];
  assign N631 = N630 & inst[1];
  assign N630 = N629 & N1;
  assign N629 = N628 & N69;
  assign N628 = N627 & N68;
  assign N627 = N28 & inst[5];
  assign N640 = N639 & inst[0];
  assign N639 = N638 & inst[1];
  assign N638 = N637 & N1;
  assign N637 = N636 & N69;
  assign N636 = N635 & inst[4];
  assign N635 = N634 & inst[5];
  assign N634 = inst[12] & inst[6];
  assign N661 = N660 & inst[0];
  assign N660 = N659 & inst[1];
  assign N659 = N658 & inst[2];
  assign N658 = N657 & inst[3];
  assign N657 = N656 & N68;
  assign N656 = N655 & N33;
  assign N655 = N654 & N72;
  assign N654 = N653 & N19;
  assign N653 = N652 & N18;
  assign N652 = N651 & N17;
  assign N651 = N650 & N16;
  assign N650 = N649 & N15;
  assign N649 = N648 & N0;
  assign N648 = N647 & N35;
  assign N647 = N646 & N14;
  assign N646 = N645 & N13;
  assign N645 = N644 & N12;
  assign N644 = N643 & N11;
  assign N643 = N642 & N10;
  assign N642 = N26 & N440;
  assign N682 = N681 & inst[0];
  assign N681 = N680 & inst[1];
  assign N680 = N679 & inst[2];
  assign N679 = N678 & inst[3];
  assign N678 = N677 & N68;
  assign N677 = N676 & N33;
  assign N676 = N675 & N72;
  assign N675 = N674 & N19;
  assign N674 = N673 & N18;
  assign N673 = N672 & N17;
  assign N672 = N671 & N16;
  assign N671 = N670 & N15;
  assign N670 = N669 & N2;
  assign N669 = N668 & N0;
  assign N668 = N667 & N35;
  assign N667 = N666 & N14;
  assign N666 = N665 & N13;
  assign N665 = N664 & N12;
  assign N664 = N663 & N11;
  assign N663 = N23 & N10;
  assign N690 = N689 & inst[0];
  assign N689 = N688 & inst[1];
  assign N688 = N687 & N1;
  assign N687 = N686 & N69;
  assign N686 = N685 & inst[4];
  assign N685 = N684 & inst[5];
  assign N684 = inst[13] & inst[6];
  assign N698 = N697 & inst[0];
  assign N697 = N696 & inst[1];
  assign N696 = N695 & N1;
  assign N695 = N694 & N69;
  assign N694 = N693 & N68;
  assign N693 = N692 & N33;
  assign N692 = N0 & N72;
  assign N705 = N704 & inst[0];
  assign N704 = N703 & inst[1];
  assign N703 = N702 & inst[2];
  assign N702 = N701 & inst[3];
  assign N701 = N700 & N68;
  assign N700 = inst[6] & inst[5];
  assign N712 = N711 & inst[0];
  assign N711 = N710 & inst[1];
  assign N710 = N709 & N69;
  assign N709 = N708 & inst[4];
  assign N708 = N707 & N33;
  assign N707 = inst[13] & N72;
  assign N720 = N719 & inst[0];
  assign N719 = N718 & inst[1];
  assign N718 = N717 & N1;
  assign N717 = N716 & N69;
  assign N716 = N715 & N68;
  assign N715 = N714 & N72;
  assign N714 = N35 & N2;
  assign N726 = N725 & inst[0];
  assign N725 = N724 & inst[1];
  assign N724 = N723 & inst[2];
  assign N723 = N722 & N69;
  assign N722 = N72 & inst[4];

endmodule