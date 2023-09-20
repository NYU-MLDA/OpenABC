module instr_scan
(
  instr_i,
  is_rvc_o,
  rvi_return_o,
  rvi_call_o,
  rvi_branch_o,
  rvi_jalr_o,
  rvi_jump_o,
  rvi_imm_o,
  rvc_branch_o,
  rvc_jump_o,
  rvc_jr_o,
  rvc_return_o,
  rvc_jalr_o,
  rvc_call_o,
  rvc_imm_o
);

  input [31:0] instr_i;
  output [63:0] rvi_imm_o;
  output [63:0] rvc_imm_o;
  output is_rvc_o;
  output rvi_return_o;
  output rvi_call_o;
  output rvi_branch_o;
  output rvi_jalr_o;
  output rvi_jump_o;
  output rvc_branch_o;
  output rvc_jump_o;
  output rvc_jr_o;
  output rvc_return_o;
  output rvc_jalr_o;
  output rvc_call_o;
  wire [63:0] rvi_imm_o,rvc_imm_o;
  wire is_rvc_o,rvi_return_o,rvi_call_o,rvi_branch_o,rvi_jalr_o,rvi_jump_o,
  rvc_branch_o,rvc_jump_o,rvc_jr_o,rvc_return_o,rvc_jalr_o,rvc_call_o,N0,N1,rvc_jalr_o,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,
  N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,
  N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83;
  assign rvc_imm_o[0] = 1'b0;
  assign rvi_imm_o[0] = 1'b0;
  assign rvi_imm_o[20] = instr_i[31];
  assign rvi_imm_o[21] = instr_i[31];
  assign rvi_imm_o[22] = instr_i[31];
  assign rvi_imm_o[23] = instr_i[31];
  assign rvi_imm_o[24] = instr_i[31];
  assign rvi_imm_o[25] = instr_i[31];
  assign rvi_imm_o[26] = instr_i[31];
  assign rvi_imm_o[27] = instr_i[31];
  assign rvi_imm_o[28] = instr_i[31];
  assign rvi_imm_o[29] = instr_i[31];
  assign rvi_imm_o[30] = instr_i[31];
  assign rvi_imm_o[31] = instr_i[31];
  assign rvi_imm_o[32] = instr_i[31];
  assign rvi_imm_o[33] = instr_i[31];
  assign rvi_imm_o[34] = instr_i[31];
  assign rvi_imm_o[35] = instr_i[31];
  assign rvi_imm_o[36] = instr_i[31];
  assign rvi_imm_o[37] = instr_i[31];
  assign rvi_imm_o[38] = instr_i[31];
  assign rvi_imm_o[39] = instr_i[31];
  assign rvi_imm_o[40] = instr_i[31];
  assign rvi_imm_o[41] = instr_i[31];
  assign rvi_imm_o[42] = instr_i[31];
  assign rvi_imm_o[43] = instr_i[31];
  assign rvi_imm_o[44] = instr_i[31];
  assign rvi_imm_o[45] = instr_i[31];
  assign rvi_imm_o[46] = instr_i[31];
  assign rvi_imm_o[47] = instr_i[31];
  assign rvi_imm_o[48] = instr_i[31];
  assign rvi_imm_o[49] = instr_i[31];
  assign rvi_imm_o[50] = instr_i[31];
  assign rvi_imm_o[51] = instr_i[31];
  assign rvi_imm_o[52] = instr_i[31];
  assign rvi_imm_o[53] = instr_i[31];
  assign rvi_imm_o[54] = instr_i[31];
  assign rvi_imm_o[55] = instr_i[31];
  assign rvi_imm_o[56] = instr_i[31];
  assign rvi_imm_o[57] = instr_i[31];
  assign rvi_imm_o[58] = instr_i[31];
  assign rvi_imm_o[59] = instr_i[31];
  assign rvi_imm_o[60] = instr_i[31];
  assign rvi_imm_o[61] = instr_i[31];
  assign rvi_imm_o[62] = instr_i[31];
  assign rvi_imm_o[63] = instr_i[31];
  assign rvi_imm_o[10] = instr_i[30];
  assign rvi_imm_o[9] = instr_i[29];
  assign rvi_imm_o[8] = instr_i[28];
  assign rvi_imm_o[7] = instr_i[27];
  assign rvi_imm_o[6] = instr_i[26];
  assign rvi_imm_o[5] = instr_i[25];
  assign rvc_imm_o[11] = instr_i[12];
  assign rvc_imm_o[12] = instr_i[12];
  assign rvc_imm_o[13] = instr_i[12];
  assign rvc_imm_o[14] = instr_i[12];
  assign rvc_imm_o[15] = instr_i[12];
  assign rvc_imm_o[16] = instr_i[12];
  assign rvc_imm_o[17] = instr_i[12];
  assign rvc_imm_o[18] = instr_i[12];
  assign rvc_imm_o[19] = instr_i[12];
  assign rvc_imm_o[20] = instr_i[12];
  assign rvc_imm_o[21] = instr_i[12];
  assign rvc_imm_o[22] = instr_i[12];
  assign rvc_imm_o[23] = instr_i[12];
  assign rvc_imm_o[24] = instr_i[12];
  assign rvc_imm_o[25] = instr_i[12];
  assign rvc_imm_o[26] = instr_i[12];
  assign rvc_imm_o[27] = instr_i[12];
  assign rvc_imm_o[28] = instr_i[12];
  assign rvc_imm_o[29] = instr_i[12];
  assign rvc_imm_o[30] = instr_i[12];
  assign rvc_imm_o[31] = instr_i[12];
  assign rvc_imm_o[32] = instr_i[12];
  assign rvc_imm_o[33] = instr_i[12];
  assign rvc_imm_o[34] = instr_i[12];
  assign rvc_imm_o[35] = instr_i[12];
  assign rvc_imm_o[36] = instr_i[12];
  assign rvc_imm_o[37] = instr_i[12];
  assign rvc_imm_o[38] = instr_i[12];
  assign rvc_imm_o[39] = instr_i[12];
  assign rvc_imm_o[40] = instr_i[12];
  assign rvc_imm_o[41] = instr_i[12];
  assign rvc_imm_o[42] = instr_i[12];
  assign rvc_imm_o[43] = instr_i[12];
  assign rvc_imm_o[44] = instr_i[12];
  assign rvc_imm_o[45] = instr_i[12];
  assign rvc_imm_o[46] = instr_i[12];
  assign rvc_imm_o[47] = instr_i[12];
  assign rvc_imm_o[48] = instr_i[12];
  assign rvc_imm_o[49] = instr_i[12];
  assign rvc_imm_o[50] = instr_i[12];
  assign rvc_imm_o[51] = instr_i[12];
  assign rvc_imm_o[52] = instr_i[12];
  assign rvc_imm_o[53] = instr_i[12];
  assign rvc_imm_o[54] = instr_i[12];
  assign rvc_imm_o[55] = instr_i[12];
  assign rvc_imm_o[56] = instr_i[12];
  assign rvc_imm_o[57] = instr_i[12];
  assign rvc_imm_o[58] = instr_i[12];
  assign rvc_imm_o[59] = instr_i[12];
  assign rvc_imm_o[60] = instr_i[12];
  assign rvc_imm_o[61] = instr_i[12];
  assign rvc_imm_o[62] = instr_i[12];
  assign rvc_imm_o[63] = instr_i[12];
  assign rvc_imm_o[7] = instr_i[6];
  assign rvc_imm_o[5] = instr_i[2];
  assign rvc_imm_o[4] = instr_i[11];
  assign rvc_imm_o[2] = instr_i[4];
  assign rvc_imm_o[1] = instr_i[3];
  assign rvc_call_o = rvc_jalr_o;
  assign N4 = ~instr_i[15];
  assign N5 = ~instr_i[14];
  assign N6 = N5 | N4;
  assign N7 = instr_i[13] | N6;
  assign N8 = ~N7;
  assign N9 = instr_i[14] & instr_i[15];
  assign N10 = instr_i[13] & N9;
  assign N11 = ~instr_i[0];
  assign N12 = N11 | instr_i[1];
  assign N13 = ~N12;
  assign N14 = ~instr_i[13];
  assign N15 = instr_i[14] | N4;
  assign N16 = N14 | N15;
  assign N17 = ~N16;
  assign N18 = instr_i[13] | N15;
  assign N19 = ~N18;
  assign N20 = instr_i[5] | instr_i[6];
  assign N21 = instr_i[4] | N20;
  assign N22 = instr_i[3] | N21;
  assign N23 = instr_i[2] | N22;
  assign N24 = ~N23;
  assign N25 = instr_i[5] | instr_i[6];
  assign N26 = instr_i[4] | N25;
  assign N27 = instr_i[3] | N26;
  assign N28 = instr_i[2] | N27;
  assign N29 = ~N28;
  assign N30 = ~instr_i[1];
  assign N31 = instr_i[0] | N30;
  assign N32 = ~N31;
  assign N33 = instr_i[0] & instr_i[1];
  assign is_rvc_o = ~N33;
  assign N35 = ~instr_i[6];
  assign N36 = ~instr_i[5];
  assign N37 = N36 | N35;
  assign N38 = instr_i[4] | N37;
  assign N39 = instr_i[3] | N38;
  assign N40 = instr_i[2] | N39;
  assign N41 = N30 | N40;
  assign N42 = N11 | N41;
  assign N43 = ~N42;
  assign N44 = ~instr_i[2];
  assign N45 = N36 | N35;
  assign N46 = instr_i[4] | N45;
  assign N47 = instr_i[3] | N46;
  assign N48 = N44 | N47;
  assign N49 = N30 | N48;
  assign N50 = N11 | N49;
  assign N51 = ~N50;
  assign N52 = ~instr_i[3];
  assign N53 = N36 | N35;
  assign N54 = instr_i[4] | N53;
  assign N55 = N52 | N54;
  assign N56 = N44 | N55;
  assign N57 = N30 | N56;
  assign N58 = N11 | N57;
  assign N59 = ~N58;
  assign { rvi_imm_o[19:11], rvi_imm_o[4:1] } = (N0)? { instr_i[19:12], instr_i[20:20], instr_i[24:21] } : 
                                                (N2)? { instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[7:7], instr_i[11:8] } : 1'b0;
  assign N0 = instr_i[3];
  assign { rvc_imm_o[10:8], rvc_imm_o[6:6], rvc_imm_o[3:3] } = (N1)? { instr_i[12:12], instr_i[12:12], instr_i[12:12], instr_i[5:5], instr_i[10:10] } : 
                                                               (N3)? { instr_i[8:8], instr_i[10:9], instr_i[7:7], instr_i[5:5] } : 1'b0;
  assign N1 = instr_i[14];
  assign rvi_return_o = N67 & instr_i[15];
  assign N67 = N65 & N66;
  assign N65 = N63 & N64;
  assign N63 = N61 & N62;
  assign N61 = rvi_jalr_o & N60;
  assign N60 = ~instr_i[7];
  assign N62 = ~instr_i[19];
  assign N64 = ~instr_i[18];
  assign N66 = ~instr_i[16];
  assign rvi_call_o = N68 & instr_i[7];
  assign N68 = rvi_jalr_o | rvi_jump_o;
  assign N2 = ~instr_i[3];
  assign rvi_branch_o = N43;
  assign rvi_jalr_o = N51;
  assign rvi_jump_o = N59;
  assign rvc_jump_o = N69 & N13;
  assign N69 = N17 & is_rvc_o;
  assign rvc_jr_o = N73 & is_rvc_o;
  assign N73 = N72 & N32;
  assign N72 = N71 & N29;
  assign N71 = N19 & N70;
  assign N70 = ~instr_i[12];
  assign rvc_branch_o = N75 & is_rvc_o;
  assign N75 = N74 & N13;
  assign N74 = N8 | N10;
  assign rvc_return_o = N81 & rvc_jr_o;
  assign N81 = N80 & instr_i[7];
  assign N80 = N78 & N79;
  assign N78 = N76 & N77;
  assign N76 = ~instr_i[11];
  assign N77 = ~instr_i[10];
  assign N79 = ~instr_i[8];
  assign rvc_jalr_o = N83 & is_rvc_o;
  assign N83 = N82 & N24;
  assign N82 = N19 & instr_i[12];
  assign N3 = ~instr_i[14];

endmodule