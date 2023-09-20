module cl_decode
(
  instruction_i,
  decode_o_op_writes_rf_,
  decode_o_is_load_op_,
  decode_o_is_store_op_,
  decode_o_is_mem_op_,
  decode_o_is_byte_op_,
  decode_o_is_hex_op_,
  decode_o_is_load_unsigned_,
  decode_o_is_branch_op_,
  decode_o_is_jump_op_,
  decode_o_op_reads_rf1_,
  decode_o_op_reads_rf2_,
  decode_o_op_is_auipc_,
  decode_o_is_md_instr_,
  decode_o_is_fence_op_,
  decode_o_is_fence_i_op_,
  decode_o_op_is_load_reservation_,
  decode_o_op_is_lr_acq_
);

  input [31:0] instruction_i;
  output decode_o_op_writes_rf_;
  output decode_o_is_load_op_;
  output decode_o_is_store_op_;
  output decode_o_is_mem_op_;
  output decode_o_is_byte_op_;
  output decode_o_is_hex_op_;
  output decode_o_is_load_unsigned_;
  output decode_o_is_branch_op_;
  output decode_o_is_jump_op_;
  output decode_o_op_reads_rf1_;
  output decode_o_op_reads_rf2_;
  output decode_o_op_is_auipc_;
  output decode_o_is_md_instr_;
  output decode_o_is_fence_op_;
  output decode_o_is_fence_i_op_;
  output decode_o_op_is_load_reservation_;
  output decode_o_op_is_lr_acq_;
  wire decode_o_op_writes_rf_,decode_o_is_load_op_,decode_o_is_store_op_,
  decode_o_is_mem_op_,decode_o_is_byte_op_,decode_o_is_hex_op_,decode_o_is_load_unsigned_,
  decode_o_is_branch_op_,decode_o_is_jump_op_,decode_o_op_reads_rf1_,
  decode_o_op_reads_rf2_,decode_o_op_is_auipc_,decode_o_is_md_instr_,decode_o_is_fence_op_,
  decode_o_is_fence_i_op_,decode_o_op_is_load_reservation_,decode_o_op_is_lr_acq_,N0,N1,N2,
  N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,
  N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,
  N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,
  N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,
  N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,
  N184,N185,N186,N187,N188,N189,N190;
  assign N9 = instruction_i[1] & instruction_i[0];
  assign N11 = instruction_i[6] | N89;
  assign N12 = N90 | instruction_i[3];
  assign N13 = N11 | N12;
  assign N14 = N13 | N106;
  assign N15 = instruction_i[6] | instruction_i[5];
  assign N16 = N15 | N12;
  assign N17 = N16 | N106;
  assign N18 = N84 | N89;
  assign N19 = instruction_i[4] | N105;
  assign N20 = N18 | N19;
  assign N21 = N20 | N106;
  assign N22 = instruction_i[4] | instruction_i[3];
  assign N23 = N18 | N22;
  assign N24 = N23 | N106;
  assign N25 = N84 & N89;
  assign N26 = N90 & N105;
  assign N27 = N25 & N26;
  assign N28 = N27 & N106;
  assign N29 = N13 | instruction_i[2];
  assign N30 = N16 | instruction_i[2];
  assign N31 = N11 | N19;
  assign N32 = N31 | N106;
  assign N34 = N84 & N90;
  assign N35 = N34 & N9;
  assign N37 = N89 & N105;
  assign N38 = N37 & N106;
  assign N39 = N89 | instruction_i[3];
  assign N40 = N39 | instruction_i[2];
  assign N41 = instruction_i[5] & instruction_i[3];
  assign N42 = N41 & instruction_i[2];
  assign N45 = N44 & N131;
  assign N47 = instruction_i[13] | N131;
  assign N51 = N11 | N22;
  assign N52 = N55 | N92;
  assign N53 = N51 | N52;
  assign N55 = instruction_i[2] | N91;
  assign N56 = N23 | N55;
  assign N58 = instruction_i[6] & instruction_i[5];
  assign N59 = N90 & instruction_i[2];
  assign N60 = N58 & N59;
  assign N61 = N60 & N9;
  assign N62 = N106 | N92;
  assign N63 = N23 | N62;
  assign N64 = N58 & N26;
  assign N65 = N64 & N106;
  assign N66 = instruction_i[2] | N92;
  assign N67 = N15 | N22;
  assign N68 = N67 | N66;
  assign N69 = N51 | N66;
  assign N70 = N13 | N66;
  assign N71 = N16 | N66;
  assign N72 = N31 | N62;
  assign N74 = instruction_i[5] & N105;
  assign N75 = N106 & instruction_i[1];
  assign N76 = N74 & N75;
  assign N78 = instruction_i[6] & N90;
  assign N79 = instruction_i[6] | instruction_i[4];
  assign N80 = N79 | N92;
  assign N81 = instruction_i[6] | N90;
  assign N82 = N81 | N92;
  assign N85 = N106 | N91;
  assign N86 = N85 | N92;
  assign N87 = N16 | N86;
  assign N89 = ~instruction_i[5];
  assign N90 = ~instruction_i[4];
  assign N91 = ~instruction_i[1];
  assign N92 = ~instruction_i[0];
  assign N93 = N89 | instruction_i[6];
  assign N94 = N90 | N93;
  assign N95 = instruction_i[3] | N94;
  assign N96 = instruction_i[2] | N95;
  assign N97 = N91 | N96;
  assign N98 = N92 | N97;
  assign N99 = ~N98;
  assign N100 = ~instruction_i[25];
  assign N101 = instruction_i[27] | N129;
  assign N102 = instruction_i[26] | N101;
  assign N103 = N100 | N102;
  assign N104 = ~N103;
  assign N105 = ~instruction_i[3];
  assign N106 = ~instruction_i[2];
  assign N107 = instruction_i[5] | instruction_i[6];
  assign N108 = instruction_i[4] | N107;
  assign N109 = N105 | N108;
  assign N110 = N106 | N109;
  assign N111 = N91 | N110;
  assign N112 = N92 | N111;
  assign N113 = ~N112;
  assign N114 = instruction_i[13] | instruction_i[14];
  assign N115 = instruction_i[12] | N114;
  assign N116 = ~N115;
  assign N117 = instruction_i[18] | instruction_i[19];
  assign N118 = instruction_i[17] | N117;
  assign N119 = instruction_i[16] | N118;
  assign N120 = instruction_i[15] | N119;
  assign N121 = ~N120;
  assign N122 = instruction_i[10] | instruction_i[11];
  assign N123 = instruction_i[9] | N122;
  assign N124 = instruction_i[8] | N123;
  assign N125 = instruction_i[7] | N124;
  assign N126 = ~N125;
  assign N127 = instruction_i[30] | instruction_i[31];
  assign N128 = instruction_i[29] | N127;
  assign N129 = instruction_i[28] | N128;
  assign N130 = ~N129;
  assign N131 = ~instruction_i[12];
  assign N132 = N131 | N114;
  assign N133 = ~N132;
  assign N134 = instruction_i[25] | N102;
  assign N135 = instruction_i[24] | N134;
  assign N136 = instruction_i[23] | N135;
  assign N137 = instruction_i[22] | N136;
  assign N138 = instruction_i[21] | N137;
  assign N139 = instruction_i[20] | N138;
  assign N140 = ~N139;
  assign decode_o_op_writes_rf_ = (N0)? N33 : 
                                  (N10)? 1'b0 : 1'b0;
  assign N0 = N9;
  assign decode_o_is_mem_op_ = (N1)? N43 : 
                               (N36)? 1'b0 : 1'b0;
  assign N1 = N35;
  assign decode_o_is_byte_op_ = (N2)? decode_o_is_mem_op_ : 
                                (N46)? 1'b0 : 1'b0;
  assign N2 = N45;
  assign decode_o_is_hex_op_ = (N3)? decode_o_is_mem_op_ : 
                               (N4)? 1'b0 : 1'b0;
  assign N3 = N48;
  assign N4 = N47;
  assign decode_o_is_load_op_ = (N1)? N49 : 
                                (N36)? 1'b0 : 1'b0;
  assign decode_o_is_load_unsigned_ = (N5)? decode_o_is_load_op_ : 
                                      (N50)? 1'b0 : 1'b0;
  assign N5 = instruction_i[14];
  assign decode_o_op_reads_rf1_ = (N6)? N73 : 
                                  (N7)? 1'b0 : 1'b0;
  assign N6 = instruction_i[1];
  assign N7 = N91;
  assign decode_o_op_reads_rf2_ = (N8)? N83 : 
                                  (N77)? 1'b0 : 1'b0;
  assign N8 = N76;
  assign N10 = ~N9;
  assign N33 = N152 | N153;
  assign N152 = N150 | N151;
  assign N150 = N148 | N149;
  assign N148 = N147 | N28;
  assign N147 = N145 | N146;
  assign N145 = N143 | N144;
  assign N143 = N141 | N142;
  assign N141 = ~N14;
  assign N142 = ~N17;
  assign N144 = ~N21;
  assign N146 = ~N24;
  assign N149 = ~N29;
  assign N151 = ~N30;
  assign N153 = ~N32;
  assign N36 = ~N35;
  assign N43 = N155 | N42;
  assign N155 = N38 | N154;
  assign N154 = ~N40;
  assign N44 = ~instruction_i[13];
  assign N46 = ~N45;
  assign N48 = ~N47;
  assign N49 = N38 | N42;
  assign N50 = ~instruction_i[14];
  assign N54 = ~N53;
  assign decode_o_is_store_op_ = N54;
  assign N57 = ~N56;
  assign decode_o_is_branch_op_ = N57;
  assign decode_o_is_jump_op_ = N61;
  assign N73 = N165 | N166;
  assign N165 = N163 | N164;
  assign N163 = N161 | N162;
  assign N161 = N159 | N160;
  assign N159 = N157 | N158;
  assign N157 = N156 | N65;
  assign N156 = ~N63;
  assign N158 = ~N68;
  assign N160 = ~N69;
  assign N162 = ~N70;
  assign N164 = ~N71;
  assign N166 = ~N72;
  assign N77 = ~N76;
  assign N83 = N168 | N169;
  assign N168 = N78 | N167;
  assign N167 = ~N80;
  assign N169 = ~N82;
  assign N84 = ~instruction_i[6];
  assign N88 = ~N87;
  assign decode_o_op_is_auipc_ = N88;
  assign decode_o_is_md_instr_ = N99 & N104;
  assign decode_o_op_is_load_reservation_ = ~N184;
  assign N184 = N183 | N92;
  assign N183 = N182 | N91;
  assign N182 = N181 | N106;
  assign N181 = N180 | N105;
  assign N180 = N179 | instruction_i[4];
  assign N179 = N178 | N89;
  assign N178 = N177 | instruction_i[6];
  assign N177 = N176 | instruction_i[12];
  assign N176 = N175 | N44;
  assign N175 = N174 | instruction_i[14];
  assign N174 = N173 | instruction_i[27];
  assign N173 = N171 | N172;
  assign N171 = N170 | instruction_i[29];
  assign N170 = instruction_i[31] | instruction_i[30];
  assign N172 = ~instruction_i[28];
  assign decode_o_op_is_lr_acq_ = decode_o_op_is_load_reservation_ & instruction_i[26];
  assign decode_o_is_fence_op_ = N187 & N130;
  assign N187 = N186 & N126;
  assign N186 = N185 & N121;
  assign N185 = N113 & N116;
  assign decode_o_is_fence_i_op_ = N190 & N140;
  assign N190 = N189 & N126;
  assign N189 = N188 & N121;
  assign N188 = N113 & N133;

endmodule