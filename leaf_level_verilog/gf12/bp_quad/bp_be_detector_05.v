module bp_be_detector_05
(
  clk_i,
  reset_i,
  cfg_bus_i,
  isd_status_i,
  calc_status_i,
  expected_npc_i,
  fe_cmd_ready_i,
  mmu_cmd_ready_i,
  credits_full_i,
  credits_empty_i,
  debug_mode_i,
  single_step_i,
  chk_dispatch_v_o
);

  input [309:0] cfg_bus_i;
  input [85:0] isd_status_i;
  input [106:0] calc_status_i;
  input [38:0] expected_npc_i;
  input clk_i;
  input reset_i;
  input fe_cmd_ready_i;
  input mmu_cmd_ready_i;
  input credits_full_i;
  input credits_empty_i;
  input debug_mode_i;
  input single_step_i;
  output chk_dispatch_v_o;
  wire chk_dispatch_v_o,N0,N1,N2,N3,N4,N5,instr_in_pipe_v,mem_in_pipe_v,fence_haz_v,
  interrupt_haz_v,debug_haz_v,queue_haz_v,step_haz_v,serial_haz_v,control_haz_v,
  data_haz_v,struct_haz_v,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57;
  wire [2:0] rs1_match_vector,rs2_match_vector,frs1_data_haz_v,frs2_data_haz_v;
  wire [1:0] irs1_data_haz_v,irs2_data_haz_v;
  assign N0 = isd_status_i[11:7] == calc_status_i[4:0];
  assign N1 = isd_status_i[4:0] == calc_status_i[4:0];
  assign N2 = isd_status_i[11:7] == calc_status_i[17:13];
  assign N3 = isd_status_i[4:0] == calc_status_i[17:13];
  assign N4 = isd_status_i[11:7] == calc_status_i[30:26];
  assign N5 = isd_status_i[4:0] == calc_status_i[30:26];
  assign N6 = isd_status_i[10] | isd_status_i[11];
  assign N7 = isd_status_i[9] | N6;
  assign N8 = isd_status_i[8] | N7;
  assign N9 = isd_status_i[7] | N8;
  assign N10 = isd_status_i[3] | isd_status_i[4];
  assign N11 = isd_status_i[2] | N10;
  assign N12 = isd_status_i[1] | N11;
  assign N13 = isd_status_i[0] | N12;
  assign rs1_match_vector[0] = N9 & N0;
  assign rs2_match_vector[0] = N13 & N1;
  assign rs1_match_vector[1] = N9 & N2;
  assign rs2_match_vector[1] = N13 & N3;
  assign rs1_match_vector[2] = N9 & N4;
  assign rs2_match_vector[2] = N13 & N5;
  assign irs1_data_haz_v[0] = N14 & N15;
  assign N14 = isd_status_i[13] & rs1_match_vector[0];
  assign N15 = calc_status_i[10] | calc_status_i[9];
  assign irs2_data_haz_v[0] = N16 & N17;
  assign N16 = isd_status_i[6] & rs2_match_vector[0];
  assign N17 = calc_status_i[10] | calc_status_i[9];
  assign frs1_data_haz_v[0] = N18 & N19;
  assign N18 = isd_status_i[12] & rs1_match_vector[0];
  assign N19 = calc_status_i[8] | calc_status_i[7];
  assign frs2_data_haz_v[0] = N20 & N21;
  assign N20 = isd_status_i[5] & rs2_match_vector[0];
  assign N21 = calc_status_i[8] | calc_status_i[7];
  assign irs1_data_haz_v[1] = N22 & calc_status_i[22];
  assign N22 = isd_status_i[13] & rs1_match_vector[1];
  assign irs2_data_haz_v[1] = N23 & calc_status_i[22];
  assign N23 = isd_status_i[6] & rs2_match_vector[1];
  assign frs1_data_haz_v[1] = N24 & N25;
  assign N24 = isd_status_i[12] & rs1_match_vector[1];
  assign N25 = calc_status_i[21] | calc_status_i[20];
  assign frs2_data_haz_v[1] = N26 & N27;
  assign N26 = isd_status_i[5] & rs2_match_vector[1];
  assign N27 = calc_status_i[21] | calc_status_i[20];
  assign frs1_data_haz_v[2] = N28 & calc_status_i[33];
  assign N28 = isd_status_i[12] & rs1_match_vector[2];
  assign frs2_data_haz_v[2] = N29 & calc_status_i[33];
  assign N29 = isd_status_i[5] & rs2_match_vector[2];
  assign instr_in_pipe_v = N30 | calc_status_i[38];
  assign N30 = calc_status_i[12] | calc_status_i[25];
  assign mem_in_pipe_v = N31 | calc_status_i[31];
  assign N31 = calc_status_i[5] | calc_status_i[18];
  assign fence_haz_v = N34 | N35;
  assign N34 = isd_status_i[15] & N33;
  assign N33 = N32 | mem_in_pipe_v;
  assign N32 = ~credits_empty_i;
  assign N35 = isd_status_i[14] & credits_full_i;
  assign interrupt_haz_v = isd_status_i[16] & instr_in_pipe_v;
  assign debug_haz_v = N37 | N38;
  assign N37 = N36 & debug_mode_i;
  assign N36 = ~isd_status_i[17];
  assign N38 = isd_status_i[17] & instr_in_pipe_v;
  assign queue_haz_v = ~fe_cmd_ready_i;
  assign step_haz_v = single_step_i & instr_in_pipe_v;
  assign serial_haz_v = N40 | calc_status_i[45];
  assign N40 = N39 | calc_status_i[32];
  assign N39 = calc_status_i[6] | calc_status_i[19];
  assign control_haz_v = N43 | debug_haz_v;
  assign N43 = N42 | serial_haz_v;
  assign N42 = N41 | step_haz_v;
  assign N41 = fence_haz_v | interrupt_haz_v;
  assign data_haz_v = N49 | N51;
  assign N49 = N46 | N48;
  assign N46 = N44 | N45;
  assign N44 = irs1_data_haz_v[1] | irs1_data_haz_v[0];
  assign N45 = irs2_data_haz_v[1] | irs2_data_haz_v[0];
  assign N48 = N47 | frs1_data_haz_v[0];
  assign N47 = frs1_data_haz_v[2] | frs1_data_haz_v[1];
  assign N51 = N50 | frs2_data_haz_v[0];
  assign N50 = frs2_data_haz_v[2] | frs2_data_haz_v[1];
  assign struct_haz_v = N54 | queue_haz_v;
  assign N54 = N52 | N53;
  assign N52 = cfg_bus_i[309] & N36;
  assign N53 = ~mmu_cmd_ready_i;
  assign chk_dispatch_v_o = cfg_bus_i[223] | N57;
  assign N57 = ~N56;
  assign N56 = N55 | struct_haz_v;
  assign N55 = control_haz_v | data_haz_v;

endmodule