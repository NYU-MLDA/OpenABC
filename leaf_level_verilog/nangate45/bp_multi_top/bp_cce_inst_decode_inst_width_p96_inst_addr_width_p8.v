module bp_cce_inst_decode_inst_width_p96_inst_addr_width_p8
(
  clk_i,
  reset_i,
  inst_i,
  inst_v_i,
  lce_req_v_i,
  lce_resp_v_i,
  lce_data_resp_v_i,
  mem_resp_v_i,
  mem_data_resp_v_i,
  pending_v_i,
  lce_cmd_ready_i,
  lce_data_cmd_ready_i,
  mem_cmd_ready_i,
  mem_data_cmd_ready_i,
  decoded_inst_o,
  decoded_inst_v_o,
  pc_stall_o,
  pc_branch_target_o
);

  input [95:0] inst_i;
  output [127:0] decoded_inst_o;
  output [7:0] pc_branch_target_o;
  input clk_i;
  input reset_i;
  input inst_v_i;
  input lce_req_v_i;
  input lce_resp_v_i;
  input lce_data_resp_v_i;
  input mem_resp_v_i;
  input mem_data_resp_v_i;
  input pending_v_i;
  input lce_cmd_ready_i;
  input lce_data_cmd_ready_i;
  input mem_cmd_ready_i;
  input mem_data_cmd_ready_i;
  output decoded_inst_v_o;
  output pc_stall_o;
  wire [127:0] decoded_inst_o;
  wire [7:0] pc_branch_target_o;
  wire decoded_inst_v_o,pc_stall_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,pushq_op,
  popq_op,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,wfq_op,stall_op,wfq_q_ready,N42,N43,
  N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,
  N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,
  N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,
  N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,
  N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,
  N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,
  N151,N152,N153,N154,N155;
  assign N44 = N102 & N99;
  assign N45 = inst_i[63] | N99;
  assign N47 = N102 | inst_i[62];
  assign N49 = inst_i[63] & inst_i[62];
  assign N57 = inst_i[94] | inst_i[95];
  assign N58 = inst_i[93] | N57;
  assign N59 = ~N58;
  assign N60 = ~inst_i[93];
  assign N61 = N60 | N57;
  assign N62 = ~N61;
  assign N63 = ~inst_i[95];
  assign N64 = ~inst_i[94];
  assign N65 = N64 | N63;
  assign N66 = inst_i[93] | N65;
  assign N67 = ~N66;
  assign N68 = inst_i[91] | inst_i[92];
  assign N69 = inst_i[90] | N68;
  assign N70 = ~N69;
  assign N71 = inst_i[94] | N63;
  assign N72 = inst_i[93] | N71;
  assign N73 = ~N72;
  assign N74 = ~inst_i[90];
  assign N75 = N74 | N68;
  assign N76 = ~N75;
  assign N77 = ~inst_i[91];
  assign N78 = N77 | inst_i[92];
  assign N79 = inst_i[90] | N78;
  assign N80 = ~N79;
  assign N81 = inst_i[60] | inst_i[61];
  assign N82 = inst_i[59] | N81;
  assign N83 = ~N82;
  assign N84 = ~inst_i[60];
  assign N85 = N84 | inst_i[61];
  assign N86 = inst_i[59] | N85;
  assign N87 = ~N86;
  assign N88 = ~inst_i[61];
  assign N89 = inst_i[60] | N88;
  assign N90 = inst_i[59] | N89;
  assign N91 = ~N90;
  assign N92 = ~inst_i[59];
  assign N93 = N92 | N89;
  assign N94 = ~N93;
  assign N95 = N92 | N81;
  assign N96 = ~N95;
  assign N97 = inst_i[62] | inst_i[63];
  assign N98 = ~N97;
  assign N99 = ~inst_i[62];
  assign N100 = N99 | inst_i[63];
  assign N101 = ~N100;
  assign N102 = ~inst_i[63];
  assign N103 = inst_i[62] | N102;
  assign N104 = ~N103;
  assign N105 = inst_i[62] & inst_i[63];
  assign N106 = ~inst_i[76];
  assign N107 = ~inst_i[75];
  assign N108 = inst_i[78] | inst_i[79];
  assign N109 = inst_i[77] | N108;
  assign N110 = N106 | N109;
  assign N111 = N107 | N110;
  assign N112 = ~N111;
  assign N113 = inst_i[75] | N110;
  assign N114 = ~N113;
  assign N115 = inst_i[76] | N109;
  assign N116 = N107 | N115;
  assign N117 = ~N116;
  assign N118 = inst_i[75] | N115;
  assign N119 = ~N118;
  assign N120 = N64 | inst_i[95];
  assign N121 = inst_i[93] | N120;
  assign N122 = ~N121;
  assign N123 = inst_i[94] & inst_i[95];
  assign N124 = inst_i[93] & N123;
  assign N125 = N60 | N71;
  assign N126 = ~N125;
  assign N127 = inst_i[91] & inst_i[92];
  assign N128 = inst_i[90] & N127;
  assign { N18, N17, N16 } = (N0)? inst_i[92:90] :
                             (N1)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N73;
  assign N1 = N72;
  assign { N21, N20, N19 } = (N2)? inst_i[92:90] :
                             (N3)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N2 = N126;
  assign N3 = N125;
  assign decoded_inst_v_o = (N4)? 1'b0 :
                            (N14)? inst_v_i : 1'b0;
  assign N4 = N13;
  assign decoded_inst_o = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                          (N14)? { inst_i[92:59], N15, inst_i[58:29], N18, N17, N16, N73, N21, N20, N19, N126, inst_i[28:20], inst_i[61:59], inst_i[19:19], N122, N59, N22, N23, N24, N25, N26, inst_i[18:13], N27, N28, N29, inst_i[12:0], N39, N40, N41, inst_i[12:12], N30, N31, N32, N33, N34, N35, N36, N37, N38 } : 1'b0;
  assign N54 = (N5)? N50 :
               (N6)? N51 :
               (N7)? N52 :
               (N8)? N53 : 1'b0;
  assign N5 = N44;
  assign N6 = N46;
  assign N7 = N48;
  assign N8 = N49;
  assign N55 = (N9)? N54 :
               (N10)? N42 : 1'b0;
  assign N9 = pushq_op;
  assign N10 = N43;
  assign pc_stall_o = (N11)? 1'b0 :
                      (N12)? N55 : 1'b0;
  assign N11 = reset_i;
  assign N12 = N56;
  assign pc_branch_target_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                              (N12)? inst_i[66:59] : 1'b0;
  assign pushq_op = N124 & N76;
  assign popq_op = N124 & N80;
  assign N13 = reset_i | N129;
  assign N129 = ~inst_v_i;
  assign N14 = ~N13;
  assign N15 = N59 | N62;
  assign N22 = N112 & N130;
  assign N130 = N122 | N59;
  assign N23 = N114 & N131;
  assign N131 = N122 | N59;
  assign N24 = N117 & N132;
  assign N132 = N122 | N59;
  assign N25 = N119 & N133;
  assign N133 = N122 | N59;
  assign N26 = N135 | N25;
  assign N135 = N134 | N24;
  assign N134 = N22 | N23;
  assign N27 = N67 & N70;
  assign N28 = N73 & N76;
  assign N29 = N73 & N80;
  assign N30 = popq_op & N83;
  assign N31 = popq_op & N91;
  assign N32 = popq_op & N94;
  assign N33 = popq_op & N96;
  assign N34 = popq_op & N87;
  assign N35 = N136 & N98;
  assign N136 = lce_cmd_ready_i & pushq_op;
  assign N36 = pushq_op & N101;
  assign N37 = N137 & N104;
  assign N137 = mem_cmd_ready_i & pushq_op;
  assign N38 = N138 & N105;
  assign N138 = mem_data_cmd_ready_i & pushq_op;
  assign N39 = popq_op & N83;
  assign N40 = popq_op & N87;
  assign N41 = popq_op & N139;
  assign N139 = N83 | N87;
  assign wfq_op = N124 & N70;
  assign stall_op = N67 & N128;
  assign wfq_q_ready = N148 | N149;
  assign N148 = N146 | N147;
  assign N146 = N144 | N145;
  assign N144 = N142 | N143;
  assign N142 = N140 | N141;
  assign N140 = inst_i[64] & lce_req_v_i;
  assign N141 = inst_i[63] & lce_resp_v_i;
  assign N143 = inst_i[62] & lce_data_resp_v_i;
  assign N145 = inst_i[61] & mem_resp_v_i;
  assign N147 = inst_i[60] & mem_data_resp_v_i;
  assign N149 = inst_i[59] & pending_v_i;
  assign N42 = stall_op | N151;
  assign N151 = wfq_op & N150;
  assign N150 = ~wfq_q_ready;
  assign N43 = ~pushq_op;
  assign N46 = ~N45;
  assign N48 = ~N47;
  assign N50 = N42 | N152;
  assign N152 = ~lce_cmd_ready_i;
  assign N51 = N42 | N153;
  assign N153 = ~lce_data_cmd_ready_i;
  assign N52 = N42 | N154;
  assign N154 = ~mem_cmd_ready_i;
  assign N53 = N42 | N155;
  assign N155 = ~mem_data_cmd_ready_i;
  assign N56 = ~reset_i;

endmodule