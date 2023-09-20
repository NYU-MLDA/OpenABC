module bp_cce_inst_decode_inst_width_p95_inst_addr_width_p8
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

  input [94:0] inst_i;
  output [122:0] decoded_inst_o;
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
  wire [122:0] decoded_inst_o;
  wire [7:0] pc_branch_target_o;
  wire decoded_inst_v_o,pc_stall_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,pushq_op,
  popq_op,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,N36,N37,N38,wfq_op,stall_op,wfq_q_ready,N39,N40,N41,N42,N43,
  N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,
  N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,
  N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,
  N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,
  N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,
  N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,
  N151,N152;
  assign N41 = N99 & N96;
  assign N42 = inst_i[62] | N96;
  assign N44 = N99 | inst_i[61];
  assign N46 = inst_i[62] & inst_i[61];
  assign N54 = inst_i[93] | inst_i[94];
  assign N55 = inst_i[92] | N54;
  assign N56 = ~N55;
  assign N57 = ~inst_i[92];
  assign N58 = N57 | N54;
  assign N59 = ~N58;
  assign N60 = ~inst_i[94];
  assign N61 = ~inst_i[93];
  assign N62 = N61 | N60;
  assign N63 = inst_i[92] | N62;
  assign N64 = ~N63;
  assign N65 = inst_i[90] | inst_i[91];
  assign N66 = inst_i[89] | N65;
  assign N67 = ~N66;
  assign N68 = inst_i[93] | N60;
  assign N69 = inst_i[92] | N68;
  assign N70 = ~N69;
  assign N71 = ~inst_i[89];
  assign N72 = N71 | N65;
  assign N73 = ~N72;
  assign N74 = ~inst_i[90];
  assign N75 = N74 | inst_i[91];
  assign N76 = inst_i[89] | N75;
  assign N77 = ~N76;
  assign N78 = inst_i[59] | inst_i[60];
  assign N79 = inst_i[58] | N78;
  assign N80 = ~N79;
  assign N81 = ~inst_i[60];
  assign N82 = inst_i[59] | N81;
  assign N83 = inst_i[58] | N82;
  assign N84 = ~N83;
  assign N85 = ~inst_i[58];
  assign N86 = N85 | N82;
  assign N87 = ~N86;
  assign N88 = N85 | N78;
  assign N89 = ~N88;
  assign N90 = ~inst_i[59];
  assign N91 = N90 | inst_i[60];
  assign N92 = inst_i[58] | N91;
  assign N93 = ~N92;
  assign N94 = inst_i[61] | inst_i[62];
  assign N95 = ~N94;
  assign N96 = ~inst_i[61];
  assign N97 = N96 | inst_i[62];
  assign N98 = ~N97;
  assign N99 = ~inst_i[62];
  assign N100 = inst_i[61] | N99;
  assign N101 = ~N100;
  assign N102 = inst_i[61] & inst_i[62];
  assign N103 = ~inst_i[75];
  assign N104 = ~inst_i[74];
  assign N105 = inst_i[77] | inst_i[78];
  assign N106 = inst_i[76] | N105;
  assign N107 = N103 | N106;
  assign N108 = N104 | N107;
  assign N109 = ~N108;
  assign N110 = inst_i[74] | N107;
  assign N111 = ~N110;
  assign N112 = inst_i[75] | N106;
  assign N113 = N104 | N112;
  assign N114 = ~N113;
  assign N115 = inst_i[74] | N112;
  assign N116 = ~N115;
  assign N117 = N61 | inst_i[94];
  assign N118 = inst_i[92] | N117;
  assign N119 = ~N118;
  assign N120 = inst_i[93] & inst_i[94];
  assign N121 = inst_i[92] & N120;
  assign N122 = N57 | N68;
  assign N123 = ~N122;
  assign N124 = inst_i[90] & inst_i[91];
  assign N125 = inst_i[89] & N124;
  assign { N18, N17, N16 } = (N0)? inst_i[91:89] :
                             (N1)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N70;
  assign N1 = N69;
  assign { N21, N20, N19 } = (N2)? inst_i[91:89] :
                             (N3)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N2 = N123;
  assign N3 = N122;
  assign decoded_inst_v_o = (N4)? 1'b0 :
                            (N14)? inst_v_i : 1'b0;
  assign N4 = N13;
  assign decoded_inst_o = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                          (N14)? { inst_i[91:58], N15, inst_i[57:28], N18, N17, N16, N70, N21, N20, N19, N123, inst_i[27:19], inst_i[60:58], inst_i[18:18], N119, N56, N22, N23, N24, N25, N26, inst_i[17:12], N27, N28, N29, inst_i[11:0], N30, N31, N32, N33, N34, N35, N36, N37, N38 } : 1'b0;
  assign N51 = (N5)? N47 :
               (N6)? N48 :
               (N7)? N49 :
               (N8)? N50 : 1'b0;
  assign N5 = N41;
  assign N6 = N43;
  assign N7 = N45;
  assign N8 = N46;
  assign N52 = (N9)? N51 :
               (N10)? N39 : 1'b0;
  assign N9 = pushq_op;
  assign N10 = N40;
  assign pc_stall_o = (N11)? 1'b0 :
                      (N12)? N52 : 1'b0;
  assign N11 = reset_i;
  assign N12 = N53;
  assign pc_branch_target_o = (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                              (N12)? inst_i[65:58] : 1'b0;
  assign pushq_op = N121 & N73;
  assign popq_op = N121 & N77;
  assign N13 = reset_i | N126;
  assign N126 = ~inst_v_i;
  assign N14 = ~N13;
  assign N15 = N56 | N59;
  assign N22 = N109 & N127;
  assign N127 = N119 | N56;
  assign N23 = N111 & N128;
  assign N128 = N119 | N56;
  assign N24 = N114 & N129;
  assign N129 = N119 | N56;
  assign N25 = N116 & N130;
  assign N130 = N119 | N56;
  assign N26 = N132 | N25;
  assign N132 = N131 | N24;
  assign N131 = N22 | N23;
  assign N27 = N64 & N67;
  assign N28 = N70 & N73;
  assign N29 = N70 & N77;
  assign N30 = popq_op & N80;
  assign N31 = popq_op & N84;
  assign N32 = popq_op & N87;
  assign N33 = popq_op & N89;
  assign N34 = popq_op & N93;
  assign N35 = N133 & N95;
  assign N133 = lce_cmd_ready_i & pushq_op;
  assign N36 = N134 & N98;
  assign N134 = lce_data_cmd_ready_i & pushq_op;
  assign N37 = N135 & N101;
  assign N135 = mem_cmd_ready_i & pushq_op;
  assign N38 = N136 & N102;
  assign N136 = mem_data_cmd_ready_i & pushq_op;
  assign wfq_op = N121 & N67;
  assign stall_op = N64 & N125;
  assign wfq_q_ready = N145 | N146;
  assign N145 = N143 | N144;
  assign N143 = N141 | N142;
  assign N141 = N139 | N140;
  assign N139 = N137 | N138;
  assign N137 = inst_i[63] & lce_req_v_i;
  assign N138 = inst_i[62] & lce_resp_v_i;
  assign N140 = inst_i[61] & lce_data_resp_v_i;
  assign N142 = inst_i[60] & mem_resp_v_i;
  assign N144 = inst_i[59] & mem_data_resp_v_i;
  assign N146 = inst_i[58] & pending_v_i;
  assign N39 = stall_op | N148;
  assign N148 = wfq_op & N147;
  assign N147 = ~wfq_q_ready;
  assign N40 = ~pushq_op;
  assign N43 = ~N42;
  assign N45 = ~N44;
  assign N47 = N39 | N149;
  assign N149 = ~lce_cmd_ready_i;
  assign N48 = N39 | N150;
  assign N150 = ~lce_data_cmd_ready_i;
  assign N49 = N39 | N151;
  assign N151 = ~mem_cmd_ready_i;
  assign N50 = N39 | N152;
  assign N152 = ~mem_data_cmd_ready_i;
  assign N53 = ~reset_i;

endmodule