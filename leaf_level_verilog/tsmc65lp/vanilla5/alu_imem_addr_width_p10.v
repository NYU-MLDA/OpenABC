module alu_imem_addr_width_p10
(
  rs1_i,
  rs2_i,
  pc_plus4_i,
  op_i,
  result_o,
  jalr_addr_o,
  jump_now_o
);

  input [31:0] rs1_i;
  input [31:0] rs2_i;
  input [31:0] pc_plus4_i;
  input [31:0] op_i;
  output [31:0] result_o;
  output [9:0] jalr_addr_o;
  output jump_now_o;
  wire [31:0] result_o,op2,adder_input,shr_out,shl_out,xor_out,and_out,or_out;
  wire [9:0] jalr_addr_o;
  wire jump_now_o,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,
  N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,is_imm_op,N37,sub_not_add,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,carry,sign_ex_or_zero,N105,N106,N107,N108,N109,N110,N111,N112,
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
  N289,N290,N291,N292,N293,rs1_eq_rs2,rs1_lt_rs2_unsigned,rs1_lt_rs2_signed,N294,
  N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,
  N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,
  N327,N328,N329,N330,N331,N332,N333,N334,N335,SV2V_UNCONNECTED_1;
  wire [4:0] sh_amount;
  wire [32:0] sum;
  assign { SV2V_UNCONNECTED_1, shr_out } = $signed({ sign_ex_or_zero, rs1_i }) >>> sh_amount;
  assign shl_out = rs1_i << sh_amount;
  assign N106 = N326 & op_i[5];
  assign N107 = op_i[4] & N105;
  assign N108 = op_i[2] & op_i[1];
  assign N109 = N106 & N107;
  assign N110 = N108 & op_i[0];
  assign N111 = N109 & N110;
  assign N112 = N326 & N327;
  assign N113 = N112 & N107;
  assign N114 = N113 & N110;
  assign N115 = N301 & N147;
  assign N116 = N115 & N152;
  assign N117 = N116 & N150;
  assign N118 = N193 & N167;
  assign N119 = N118 & op_i[0];
  assign N125 = N121 & N122;
  assign N126 = N123 & op_i[28];
  assign N127 = N124 & N310;
  assign N128 = op_i[13] & N300;
  assign N129 = N125 & N126;
  assign N130 = N127 & N128;
  assign N131 = N106 & N226;
  assign N132 = N129 & N130;
  assign N133 = N131 & N110;
  assign N134 = N132 & N133;
  assign N135 = N311 & N147;
  assign N136 = N135 & N152;
  assign N137 = N136 & N150;
  assign N138 = N193 & N175;
  assign N139 = N138 & op_i[0];
  assign N141 = N311 & N179;
  assign N142 = N141 & N152;
  assign N143 = N142 & N150;
  assign N144 = N193 & N185;
  assign N145 = N144 & op_i[0];
  assign N147 = N300 & N326;
  assign N148 = N327 & op_i[4];
  assign N149 = N105 & N331;
  assign N150 = op_i[1] & op_i[0];
  assign N151 = N304 & N147;
  assign N152 = N148 & N149;
  assign N153 = N151 & N152;
  assign N154 = N153 & N150;
  assign N158 = N123 & N155;
  assign N159 = N124 & N156;
  assign N160 = N157 & op_i[14];
  assign N161 = N299 & N300;
  assign N162 = N125 & N158;
  assign N163 = N159 & N160;
  assign N164 = N161 & N106;
  assign N165 = N107 & N295;
  assign N166 = N162 & N163;
  assign N167 = N164 & N165;
  assign N168 = N166 & N167;
  assign N169 = N168 & op_i[0];
  assign N171 = N307 & N147;
  assign N172 = N171 & N152;
  assign N173 = N172 & N150;
  assign N174 = N128 & N106;
  assign N175 = N174 & N165;
  assign N176 = N166 & N175;
  assign N177 = N176 & op_i[0];
  assign N179 = op_i[12] & N326;
  assign N180 = N307 & N179;
  assign N181 = N180 & N152;
  assign N182 = N181 & N150;
  assign N183 = op_i[13] & op_i[12];
  assign N184 = N183 & N106;
  assign N185 = N184 & N165;
  assign N186 = N166 & N185;
  assign N187 = N186 & op_i[0];
  assign N189 = N157 & N310;
  assign N190 = N299 & op_i[12];
  assign N191 = N159 & N189;
  assign N192 = N190 & N112;
  assign N193 = N162 & N191;
  assign N194 = N192 & N165;
  assign N195 = N193 & N194;
  assign N196 = N195 & op_i[0];
  assign N197 = N190 & N106;
  assign N198 = N197 & N165;
  assign N199 = N193 & N198;
  assign N200 = N199 & op_i[0];
  assign N202 = N166 & N194;
  assign N203 = N202 & op_i[0];
  assign N204 = N166 & N198;
  assign N205 = N204 & op_i[0];
  assign N207 = N121 & op_i[30];
  assign N208 = N207 & N158;
  assign N209 = N208 & N163;
  assign N210 = N209 & N194;
  assign N211 = N210 & op_i[0];
  assign N212 = N209 & N198;
  assign N213 = N212 & op_i[0];
  assign N215 = N208 & N191;
  assign N216 = N215 & N167;
  assign N217 = N216 & op_i[0];
  assign N218 = N300 & op_i[6];
  assign N219 = op_i[5] & N317;
  assign N220 = N105 & op_i[2];
  assign N221 = N301 & N218;
  assign N222 = N219 & N220;
  assign N223 = N221 & N222;
  assign N224 = N223 & N150;
  assign N225 = op_i[6] & op_i[5];
  assign N226 = N317 & op_i[3];
  assign N227 = N225 & N226;
  assign N228 = N227 & N110;
  assign rs1_eq_rs2 = rs1_i == rs2_i;
  assign rs1_lt_rs2_unsigned = rs1_i < rs2_i;
  assign rs1_lt_rs2_signed = $signed(rs1_i) < $signed(rs2_i);
  assign N294 = N317 & N105;
  assign N295 = N331 & op_i[1];
  assign N296 = N225 & N294;
  assign N297 = N296 & N295;
  assign N301 = N310 & N299;
  assign N302 = N301 & N300;
  assign N303 = N301 & op_i[12];
  assign N304 = op_i[14] & N299;
  assign N305 = N304 & N300;
  assign N306 = N304 & op_i[12];
  assign N307 = op_i[14] & op_i[13];
  assign N308 = N307 & N300;
  assign N309 = N307 & op_i[12];
  assign N311 = N310 & op_i[13];
  assign { N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229 } = { op_i[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } + pc_plus4_i;
  assign { N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261 } = { N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229 } - { 1'b1, 1'b0, 1'b0 };
  assign { N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71 } = { rs1_i[31:31], rs1_i } + { adder_input[31:31], adder_input };
  assign { carry, sum } = { N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71 } + sub_not_add;
  assign jalr_addr_o[0] = sum[2];
  assign jalr_addr_o[1] = sum[3];
  assign jalr_addr_o[2] = sum[4];
  assign jalr_addr_o[3] = sum[5];
  assign jalr_addr_o[4] = sum[6];
  assign jalr_addr_o[5] = sum[7];
  assign jalr_addr_o[6] = sum[8];
  assign jalr_addr_o[7] = sum[9];
  assign jalr_addr_o[8] = sum[10];
  assign jalr_addr_o[9] = sum[11];
  assign op2 = (N10)? { op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:31], op_i[31:20] } : 
               (N11)? rs2_i : 1'b0;
  assign N10 = is_imm_op;
  assign N11 = N37;
  assign adder_input = (N12)? { N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70 } : 
                       (N13)? op2 : 1'b0;
  assign N12 = sub_not_add;
  assign N13 = N38;
  assign sh_amount = (N10)? op_i[24:20] : 
                     (N11)? rs2_i[4:0] : 1'b0;
  assign result_o = (N14)? { op_i[31:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N15)? { N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261 } : 
                    (N16)? sum[31:0] : 
                    (N17)? rs1_i : 
                    (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, sum[32:32] } : 
                    (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N293 } : 
                    (N20)? xor_out : 
                    (N21)? or_out : 
                    (N22)? and_out : 
                    (N23)? shl_out : 
                    (N24)? shr_out : 
                    (N25)? shr_out : 
                    (N26)? sum[31:0] : 
                    (N27)? pc_plus4_i : 
                    (N28)? pc_plus4_i : 1'b0;
  assign N14 = N111;
  assign N15 = N114;
  assign N16 = N120;
  assign N17 = N134;
  assign N18 = N140;
  assign N19 = N146;
  assign N20 = N170;
  assign N21 = N178;
  assign N22 = N188;
  assign N23 = N201;
  assign N24 = N206;
  assign N25 = N214;
  assign N26 = N217;
  assign N27 = N224;
  assign N28 = N228;
  assign sub_not_add = (N16)? 1'b0 : 
                       (N18)? 1'b1 : 
                       (N19)? 1'b1 : 
                       (N26)? 1'b1 : 
                       (N27)? 1'b0 : 1'b0;
  assign sign_ex_or_zero = (N24)? 1'b0 : 
                           (N25)? rs1_i[31] : 1'b0;
  assign N315 = (N29)? rs1_eq_rs2 : 
                (N30)? N312 : 
                (N31)? rs1_lt_rs2_signed : 
                (N32)? N313 : 
                (N33)? rs1_lt_rs2_unsigned : 
                (N34)? N314 : 
                (N35)? 1'b0 : 1'b0;
  assign N29 = N302;
  assign N30 = N303;
  assign N31 = N305;
  assign N32 = N306;
  assign N33 = N308;
  assign N34 = N309;
  assign N35 = N311;
  assign jump_now_o = (N36)? N315 : 
                      (N298)? 1'b0 : 1'b0;
  assign N36 = N297;
  assign is_imm_op = N325 | N335;
  assign N325 = ~N324;
  assign N324 = N322 | N323;
  assign N322 = N320 | N321;
  assign N320 = N319 | op_i[2];
  assign N319 = N318 | op_i[3];
  assign N318 = N316 | N317;
  assign N316 = op_i[6] | op_i[5];
  assign N317 = ~op_i[4];
  assign N321 = ~op_i[1];
  assign N323 = ~op_i[0];
  assign N335 = ~N334;
  assign N334 = N333 | N323;
  assign N333 = N332 | N321;
  assign N332 = N330 | N331;
  assign N330 = N329 | op_i[3];
  assign N329 = N328 | op_i[4];
  assign N328 = N326 | N327;
  assign N326 = ~op_i[6];
  assign N327 = ~op_i[5];
  assign N331 = ~op_i[2];
  assign N37 = ~is_imm_op;
  assign N38 = ~sub_not_add;
  assign N39 = ~op2[31];
  assign N40 = ~op2[30];
  assign N41 = ~op2[29];
  assign N42 = ~op2[28];
  assign N43 = ~op2[27];
  assign N44 = ~op2[26];
  assign N45 = ~op2[25];
  assign N46 = ~op2[24];
  assign N47 = ~op2[23];
  assign N48 = ~op2[22];
  assign N49 = ~op2[21];
  assign N50 = ~op2[20];
  assign N51 = ~op2[19];
  assign N52 = ~op2[18];
  assign N53 = ~op2[17];
  assign N54 = ~op2[16];
  assign N55 = ~op2[15];
  assign N56 = ~op2[14];
  assign N57 = ~op2[13];
  assign N58 = ~op2[12];
  assign N59 = ~op2[11];
  assign N60 = ~op2[10];
  assign N61 = ~op2[9];
  assign N62 = ~op2[8];
  assign N63 = ~op2[7];
  assign N64 = ~op2[6];
  assign N65 = ~op2[5];
  assign N66 = ~op2[4];
  assign N67 = ~op2[3];
  assign N68 = ~op2[2];
  assign N69 = ~op2[1];
  assign N70 = ~op2[0];
  assign xor_out[31] = rs1_i[31] ^ op2[31];
  assign xor_out[30] = rs1_i[30] ^ op2[30];
  assign xor_out[29] = rs1_i[29] ^ op2[29];
  assign xor_out[28] = rs1_i[28] ^ op2[28];
  assign xor_out[27] = rs1_i[27] ^ op2[27];
  assign xor_out[26] = rs1_i[26] ^ op2[26];
  assign xor_out[25] = rs1_i[25] ^ op2[25];
  assign xor_out[24] = rs1_i[24] ^ op2[24];
  assign xor_out[23] = rs1_i[23] ^ op2[23];
  assign xor_out[22] = rs1_i[22] ^ op2[22];
  assign xor_out[21] = rs1_i[21] ^ op2[21];
  assign xor_out[20] = rs1_i[20] ^ op2[20];
  assign xor_out[19] = rs1_i[19] ^ op2[19];
  assign xor_out[18] = rs1_i[18] ^ op2[18];
  assign xor_out[17] = rs1_i[17] ^ op2[17];
  assign xor_out[16] = rs1_i[16] ^ op2[16];
  assign xor_out[15] = rs1_i[15] ^ op2[15];
  assign xor_out[14] = rs1_i[14] ^ op2[14];
  assign xor_out[13] = rs1_i[13] ^ op2[13];
  assign xor_out[12] = rs1_i[12] ^ op2[12];
  assign xor_out[11] = rs1_i[11] ^ op2[11];
  assign xor_out[10] = rs1_i[10] ^ op2[10];
  assign xor_out[9] = rs1_i[9] ^ op2[9];
  assign xor_out[8] = rs1_i[8] ^ op2[8];
  assign xor_out[7] = rs1_i[7] ^ op2[7];
  assign xor_out[6] = rs1_i[6] ^ op2[6];
  assign xor_out[5] = rs1_i[5] ^ op2[5];
  assign xor_out[4] = rs1_i[4] ^ op2[4];
  assign xor_out[3] = rs1_i[3] ^ op2[3];
  assign xor_out[2] = rs1_i[2] ^ op2[2];
  assign xor_out[1] = rs1_i[1] ^ op2[1];
  assign xor_out[0] = rs1_i[0] ^ op2[0];
  assign and_out[31] = rs1_i[31] & op2[31];
  assign and_out[30] = rs1_i[30] & op2[30];
  assign and_out[29] = rs1_i[29] & op2[29];
  assign and_out[28] = rs1_i[28] & op2[28];
  assign and_out[27] = rs1_i[27] & op2[27];
  assign and_out[26] = rs1_i[26] & op2[26];
  assign and_out[25] = rs1_i[25] & op2[25];
  assign and_out[24] = rs1_i[24] & op2[24];
  assign and_out[23] = rs1_i[23] & op2[23];
  assign and_out[22] = rs1_i[22] & op2[22];
  assign and_out[21] = rs1_i[21] & op2[21];
  assign and_out[20] = rs1_i[20] & op2[20];
  assign and_out[19] = rs1_i[19] & op2[19];
  assign and_out[18] = rs1_i[18] & op2[18];
  assign and_out[17] = rs1_i[17] & op2[17];
  assign and_out[16] = rs1_i[16] & op2[16];
  assign and_out[15] = rs1_i[15] & op2[15];
  assign and_out[14] = rs1_i[14] & op2[14];
  assign and_out[13] = rs1_i[13] & op2[13];
  assign and_out[12] = rs1_i[12] & op2[12];
  assign and_out[11] = rs1_i[11] & op2[11];
  assign and_out[10] = rs1_i[10] & op2[10];
  assign and_out[9] = rs1_i[9] & op2[9];
  assign and_out[8] = rs1_i[8] & op2[8];
  assign and_out[7] = rs1_i[7] & op2[7];
  assign and_out[6] = rs1_i[6] & op2[6];
  assign and_out[5] = rs1_i[5] & op2[5];
  assign and_out[4] = rs1_i[4] & op2[4];
  assign and_out[3] = rs1_i[3] & op2[3];
  assign and_out[2] = rs1_i[2] & op2[2];
  assign and_out[1] = rs1_i[1] & op2[1];
  assign and_out[0] = rs1_i[0] & op2[0];
  assign or_out[31] = rs1_i[31] | op2[31];
  assign or_out[30] = rs1_i[30] | op2[30];
  assign or_out[29] = rs1_i[29] | op2[29];
  assign or_out[28] = rs1_i[28] | op2[28];
  assign or_out[27] = rs1_i[27] | op2[27];
  assign or_out[26] = rs1_i[26] | op2[26];
  assign or_out[25] = rs1_i[25] | op2[25];
  assign or_out[24] = rs1_i[24] | op2[24];
  assign or_out[23] = rs1_i[23] | op2[23];
  assign or_out[22] = rs1_i[22] | op2[22];
  assign or_out[21] = rs1_i[21] | op2[21];
  assign or_out[20] = rs1_i[20] | op2[20];
  assign or_out[19] = rs1_i[19] | op2[19];
  assign or_out[18] = rs1_i[18] | op2[18];
  assign or_out[17] = rs1_i[17] | op2[17];
  assign or_out[16] = rs1_i[16] | op2[16];
  assign or_out[15] = rs1_i[15] | op2[15];
  assign or_out[14] = rs1_i[14] | op2[14];
  assign or_out[13] = rs1_i[13] | op2[13];
  assign or_out[12] = rs1_i[12] | op2[12];
  assign or_out[11] = rs1_i[11] | op2[11];
  assign or_out[10] = rs1_i[10] | op2[10];
  assign or_out[9] = rs1_i[9] | op2[9];
  assign or_out[8] = rs1_i[8] | op2[8];
  assign or_out[7] = rs1_i[7] | op2[7];
  assign or_out[6] = rs1_i[6] | op2[6];
  assign or_out[5] = rs1_i[5] | op2[5];
  assign or_out[4] = rs1_i[4] | op2[4];
  assign or_out[3] = rs1_i[3] | op2[3];
  assign or_out[2] = rs1_i[2] | op2[2];
  assign or_out[1] = rs1_i[1] | op2[1];
  assign or_out[0] = rs1_i[0] | op2[0];
  assign N105 = ~op_i[3];
  assign N120 = N117 | N119;
  assign N121 = ~op_i[31];
  assign N122 = ~op_i[30];
  assign N123 = ~op_i[29];
  assign N124 = ~op_i[27];
  assign N140 = N137 | N139;
  assign N146 = N143 | N145;
  assign N155 = ~op_i[28];
  assign N156 = ~op_i[26];
  assign N157 = ~op_i[25];
  assign N170 = N154 | N169;
  assign N178 = N173 | N177;
  assign N188 = N182 | N187;
  assign N201 = N196 | N200;
  assign N206 = N203 | N205;
  assign N214 = N211 | N213;
  assign N293 = ~carry;
  assign N298 = ~N297;
  assign N299 = ~op_i[13];
  assign N300 = ~op_i[12];
  assign N310 = ~op_i[14];
  assign N312 = ~rs1_eq_rs2;
  assign N313 = ~rs1_lt_rs2_signed;
  assign N314 = ~rs1_lt_rs2_unsigned;

endmodule