module branch_unit
(
  fu_data_i,
  pc_i,
  is_compressed_instr_i,
  fu_valid_i,
  branch_valid_i,
  branch_comp_res_i,
  branch_result_o,
  branch_predict_i,
  resolved_branch_o,
  resolve_branch_o,
  branch_exception_o
);

  input [205:0] fu_data_i;
  input [63:0] pc_i;
  output [63:0] branch_result_o;
  input [67:0] branch_predict_i;
  output [133:0] resolved_branch_o;
  output [128:0] branch_exception_o;
  input is_compressed_instr_i;
  input fu_valid_i;
  input branch_valid_i;
  input branch_comp_res_i;
  output resolve_branch_o;
  wire [63:0] branch_result_o,target_address;
  wire [133:0] resolved_branch_o;
  wire [128:0] branch_exception_o;
  wire resolve_branch_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
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
  N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239;
  assign branch_exception_o[65] = 1'b0;
  assign branch_exception_o[66] = 1'b0;
  assign branch_exception_o[67] = 1'b0;
  assign branch_exception_o[68] = 1'b0;
  assign branch_exception_o[69] = 1'b0;
  assign branch_exception_o[70] = 1'b0;
  assign branch_exception_o[71] = 1'b0;
  assign branch_exception_o[72] = 1'b0;
  assign branch_exception_o[73] = 1'b0;
  assign branch_exception_o[74] = 1'b0;
  assign branch_exception_o[75] = 1'b0;
  assign branch_exception_o[76] = 1'b0;
  assign branch_exception_o[77] = 1'b0;
  assign branch_exception_o[78] = 1'b0;
  assign branch_exception_o[79] = 1'b0;
  assign branch_exception_o[80] = 1'b0;
  assign branch_exception_o[81] = 1'b0;
  assign branch_exception_o[82] = 1'b0;
  assign branch_exception_o[83] = 1'b0;
  assign branch_exception_o[84] = 1'b0;
  assign branch_exception_o[85] = 1'b0;
  assign branch_exception_o[86] = 1'b0;
  assign branch_exception_o[87] = 1'b0;
  assign branch_exception_o[88] = 1'b0;
  assign branch_exception_o[89] = 1'b0;
  assign branch_exception_o[90] = 1'b0;
  assign branch_exception_o[91] = 1'b0;
  assign branch_exception_o[92] = 1'b0;
  assign branch_exception_o[93] = 1'b0;
  assign branch_exception_o[94] = 1'b0;
  assign branch_exception_o[95] = 1'b0;
  assign branch_exception_o[96] = 1'b0;
  assign branch_exception_o[97] = 1'b0;
  assign branch_exception_o[98] = 1'b0;
  assign branch_exception_o[99] = 1'b0;
  assign branch_exception_o[100] = 1'b0;
  assign branch_exception_o[101] = 1'b0;
  assign branch_exception_o[102] = 1'b0;
  assign branch_exception_o[103] = 1'b0;
  assign branch_exception_o[104] = 1'b0;
  assign branch_exception_o[105] = 1'b0;
  assign branch_exception_o[106] = 1'b0;
  assign branch_exception_o[107] = 1'b0;
  assign branch_exception_o[108] = 1'b0;
  assign branch_exception_o[109] = 1'b0;
  assign branch_exception_o[110] = 1'b0;
  assign branch_exception_o[111] = 1'b0;
  assign branch_exception_o[112] = 1'b0;
  assign branch_exception_o[113] = 1'b0;
  assign branch_exception_o[114] = 1'b0;
  assign branch_exception_o[115] = 1'b0;
  assign branch_exception_o[116] = 1'b0;
  assign branch_exception_o[117] = 1'b0;
  assign branch_exception_o[118] = 1'b0;
  assign branch_exception_o[119] = 1'b0;
  assign branch_exception_o[120] = 1'b0;
  assign branch_exception_o[121] = 1'b0;
  assign branch_exception_o[122] = 1'b0;
  assign branch_exception_o[123] = 1'b0;
  assign branch_exception_o[124] = 1'b0;
  assign branch_exception_o[125] = 1'b0;
  assign branch_exception_o[126] = 1'b0;
  assign branch_exception_o[127] = 1'b0;
  assign branch_exception_o[128] = 1'b0;
  assign resolved_branch_o[1] = branch_predict_i[1];
  assign resolved_branch_o[0] = branch_predict_i[0];
  assign branch_exception_o[64] = pc_i[63];
  assign branch_exception_o[63] = pc_i[62];
  assign branch_exception_o[62] = pc_i[61];
  assign branch_exception_o[61] = pc_i[60];
  assign branch_exception_o[60] = pc_i[59];
  assign branch_exception_o[59] = pc_i[58];
  assign branch_exception_o[58] = pc_i[57];
  assign branch_exception_o[57] = pc_i[56];
  assign branch_exception_o[56] = pc_i[55];
  assign branch_exception_o[55] = pc_i[54];
  assign branch_exception_o[54] = pc_i[53];
  assign branch_exception_o[53] = pc_i[52];
  assign branch_exception_o[52] = pc_i[51];
  assign branch_exception_o[51] = pc_i[50];
  assign branch_exception_o[50] = pc_i[49];
  assign branch_exception_o[49] = pc_i[48];
  assign branch_exception_o[48] = pc_i[47];
  assign branch_exception_o[47] = pc_i[46];
  assign branch_exception_o[46] = pc_i[45];
  assign branch_exception_o[45] = pc_i[44];
  assign branch_exception_o[44] = pc_i[43];
  assign branch_exception_o[43] = pc_i[42];
  assign branch_exception_o[42] = pc_i[41];
  assign branch_exception_o[41] = pc_i[40];
  assign branch_exception_o[40] = pc_i[39];
  assign branch_exception_o[39] = pc_i[38];
  assign branch_exception_o[38] = pc_i[37];
  assign branch_exception_o[37] = pc_i[36];
  assign branch_exception_o[36] = pc_i[35];
  assign branch_exception_o[35] = pc_i[34];
  assign branch_exception_o[34] = pc_i[33];
  assign branch_exception_o[33] = pc_i[32];
  assign branch_exception_o[32] = pc_i[31];
  assign branch_exception_o[31] = pc_i[30];
  assign branch_exception_o[30] = pc_i[29];
  assign branch_exception_o[29] = pc_i[28];
  assign branch_exception_o[28] = pc_i[27];
  assign branch_exception_o[27] = pc_i[26];
  assign branch_exception_o[26] = pc_i[25];
  assign branch_exception_o[25] = pc_i[24];
  assign branch_exception_o[24] = pc_i[23];
  assign branch_exception_o[23] = pc_i[22];
  assign branch_exception_o[22] = pc_i[21];
  assign branch_exception_o[21] = pc_i[20];
  assign branch_exception_o[20] = pc_i[19];
  assign branch_exception_o[19] = pc_i[18];
  assign branch_exception_o[18] = pc_i[17];
  assign branch_exception_o[17] = pc_i[16];
  assign branch_exception_o[16] = pc_i[15];
  assign branch_exception_o[15] = pc_i[14];
  assign branch_exception_o[14] = pc_i[13];
  assign branch_exception_o[13] = pc_i[12];
  assign branch_exception_o[12] = pc_i[11];
  assign branch_exception_o[11] = pc_i[10];
  assign branch_exception_o[10] = pc_i[9];
  assign branch_exception_o[9] = pc_i[8];
  assign branch_exception_o[8] = pc_i[7];
  assign branch_exception_o[7] = pc_i[6];
  assign branch_exception_o[6] = pc_i[5];
  assign branch_exception_o[5] = pc_i[4];
  assign branch_exception_o[4] = pc_i[3];
  assign branch_exception_o[3] = pc_i[2];
  assign branch_exception_o[2] = pc_i[1];
  assign branch_exception_o[1] = pc_i[0];
  assign { target_address[63:1], N76 } = $signed({ N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11 }) + $signed(fu_data_i[66:3]);
  assign N215 = branch_predict_i[2] ^ branch_comp_res_i;
  assign N216 = target_address != branch_predict_i[66:3];
  assign N227 = ~pc_i[1];
  assign N228 = ~target_address[0];
  assign N229 = ~fu_data_i[199];
  assign N230 = ~fu_data_i[196];
  assign N231 = ~fu_data_i[195];
  assign N232 = fu_data_i[200] | fu_data_i[201];
  assign N233 = N229 | N232;
  assign N234 = fu_data_i[198] | N233;
  assign N235 = fu_data_i[197] | N234;
  assign N236 = N230 | N235;
  assign N237 = N231 | N236;
  assign N238 = ~N237;
  assign { N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79 } = { pc_i[63:2], 1'b0, 1'b0 } + { 1'b1, 1'b0, 1'b0 };
  assign branch_result_o = pc_i + { N75, is_compressed_instr_i, 1'b0 };
  assign { N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11 } = (N0)? fu_data_i[194:131] : 
                                                                                                                                                                                                                                                                                                                                              (N1)? pc_i : 1'b0;
  assign N0 = N238;
  assign N1 = N237;
  assign target_address[0] = (N0)? 1'b0 : 
                             (N1)? N76 : 1'b0;
  assign resolved_branch_o[133:70] = (N2)? pc_i : 
                                     (N78)? { N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79 } : 1'b0;
  assign N2 = N77;
  assign { N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148 } = (N3)? target_address : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N4)? branch_result_o : 1'b0;
  assign N3 = branch_comp_res_i;
  assign N4 = N147;
  assign N219 = (N5)? 1'b1 : 
                (N218)? N215 : 1'b0;
  assign N5 = N217;
  assign N220 = (N6)? N219 : 
                (N225)? 1'b1 : 
                (N214)? 1'b0 : 1'b0;
  assign N6 = branch_predict_i[67];
  assign N221 = (N7)? N220 : 
                (N8)? 1'b0 : 1'b0;
  assign N7 = N228;
  assign N8 = target_address[0];
  assign { resolved_branch_o[69:5], resolved_branch_o[3:2] } = (N9)? { N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N221, branch_valid_i, 1'b0 } : 
                                                               (N223)? { branch_result_o, 1'b1, 1'b1, 1'b1 } : 
                                                               (N145)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, branch_valid_i, 1'b0 } : 1'b0;
  assign N9 = branch_valid_i;
  assign resolved_branch_o[4] = (N9)? branch_comp_res_i : 
                                (N222)? 1'b0 : 
                                (N10)? 1'b0 : 1'b0;
  assign N10 = 1'b0;
  assign resolve_branch_o = (N9)? 1'b1 : 
                            (N223)? 1'b1 : 
                            (N145)? 1'b0 : 1'b0;
  assign N75 = ~is_compressed_instr_i;
  assign N77 = is_compressed_instr_i | N227;
  assign N78 = ~N77;
  assign N143 = N239 & branch_predict_i[2];
  assign N239 = fu_valid_i & branch_predict_i[67];
  assign N144 = N143 | branch_valid_i;
  assign N145 = ~N144;
  assign N146 = branch_valid_i;
  assign N147 = ~branch_comp_res_i;
  assign N212 = N146 & N228;
  assign N213 = branch_comp_res_i | branch_predict_i[67];
  assign N214 = ~N213;
  assign N217 = branch_predict_i[2] & N216;
  assign N218 = ~N217;
  assign N222 = ~branch_valid_i;
  assign N223 = N143 & N222;
  assign N224 = ~branch_predict_i[67];
  assign N225 = branch_comp_res_i & N224;
  assign N226 = branch_valid_i & target_address[0];
  assign branch_exception_o[0] = N226;

endmodule