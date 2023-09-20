module bp_fe_lce_req_data_width_p64_paddr_width_p22_num_cce_p1_num_lce_p2_sets_p64_ways_p8
(
  clk_i,
  reset_i,
  id_i,
  miss_i,
  miss_addr_i,
  lru_way_i,
  cache_miss_o,
  miss_addr_o,
  tr_data_received_i,
  cce_data_received_i,
  set_tag_received_i,
  set_tag_wakeup_received_i,
  lce_req_o,
  lce_req_v_o,
  lce_req_ready_i,
  lce_resp_o,
  lce_resp_v_o,
  lce_resp_yumi_i
);

  input [0:0] id_i;
  input [21:0] miss_addr_i;
  input [2:0] lru_way_i;
  output [21:0] miss_addr_o;
  output [96:0] lce_req_o;
  output [25:0] lce_resp_o;
  input clk_i;
  input reset_i;
  input miss_i;
  input tr_data_received_i;
  input cce_data_received_i;
  input set_tag_received_i;
  input set_tag_wakeup_received_i;
  input lce_req_ready_i;
  input lce_resp_yumi_i;
  output cache_miss_o;
  output lce_req_v_o;
  output lce_resp_v_o;
  wire [96:0] lce_req_o;
  wire cache_miss_o,lce_req_v_o,lce_resp_v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  tr_data_received_n,cce_data_received_n,set_tag_received_n,tr_data_received,
  cce_data_received,set_tag_received,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100;
  wire [2:0] state_n;
  reg [25:0] lce_resp_o;
  reg [2:0] lru_way_r,state_r;
  reg lru_flopped_r,tr_data_received_r,cce_data_received_r,set_tag_received_r;
  reg [21:0] miss_addr_o;
  assign lce_resp_o[23] = 1'b1;
  assign lce_req_o[29] = 1'b1;
  assign lce_req_o[0] = 1'b0;
  assign lce_req_o[1] = 1'b0;
  assign lce_req_o[2] = 1'b0;
  assign lce_req_o[3] = 1'b0;
  assign lce_req_o[30] = 1'b0;
  assign lce_req_o[33] = 1'b0;
  assign lce_req_o[34] = 1'b0;
  assign lce_req_o[35] = 1'b0;
  assign lce_req_o[36] = 1'b0;
  assign lce_req_o[37] = 1'b0;
  assign lce_req_o[38] = 1'b0;
  assign lce_req_o[39] = 1'b0;
  assign lce_req_o[40] = 1'b0;
  assign lce_req_o[41] = 1'b0;
  assign lce_req_o[42] = 1'b0;
  assign lce_req_o[43] = 1'b0;
  assign lce_req_o[44] = 1'b0;
  assign lce_req_o[45] = 1'b0;
  assign lce_req_o[46] = 1'b0;
  assign lce_req_o[47] = 1'b0;
  assign lce_req_o[48] = 1'b0;
  assign lce_req_o[49] = 1'b0;
  assign lce_req_o[50] = 1'b0;
  assign lce_req_o[51] = 1'b0;
  assign lce_req_o[52] = 1'b0;
  assign lce_req_o[53] = 1'b0;
  assign lce_req_o[54] = 1'b0;
  assign lce_req_o[55] = 1'b0;
  assign lce_req_o[56] = 1'b0;
  assign lce_req_o[57] = 1'b0;
  assign lce_req_o[58] = 1'b0;
  assign lce_req_o[59] = 1'b0;
  assign lce_req_o[60] = 1'b0;
  assign lce_req_o[61] = 1'b0;
  assign lce_req_o[62] = 1'b0;
  assign lce_req_o[63] = 1'b0;
  assign lce_req_o[64] = 1'b0;
  assign lce_req_o[65] = 1'b0;
  assign lce_req_o[66] = 1'b0;
  assign lce_req_o[67] = 1'b0;
  assign lce_req_o[68] = 1'b0;
  assign lce_req_o[69] = 1'b0;
  assign lce_req_o[70] = 1'b0;
  assign lce_req_o[71] = 1'b0;
  assign lce_req_o[72] = 1'b0;
  assign lce_req_o[73] = 1'b0;
  assign lce_req_o[74] = 1'b0;
  assign lce_req_o[75] = 1'b0;
  assign lce_req_o[76] = 1'b0;
  assign lce_req_o[77] = 1'b0;
  assign lce_req_o[78] = 1'b0;
  assign lce_req_o[79] = 1'b0;
  assign lce_req_o[80] = 1'b0;
  assign lce_req_o[81] = 1'b0;
  assign lce_req_o[82] = 1'b0;
  assign lce_req_o[83] = 1'b0;
  assign lce_req_o[84] = 1'b0;
  assign lce_req_o[85] = 1'b0;
  assign lce_req_o[86] = 1'b0;
  assign lce_req_o[87] = 1'b0;
  assign lce_req_o[88] = 1'b0;
  assign lce_req_o[89] = 1'b0;
  assign lce_req_o[90] = 1'b0;
  assign lce_req_o[91] = 1'b0;
  assign lce_req_o[92] = 1'b0;
  assign lce_req_o[93] = 1'b0;
  assign lce_req_o[94] = 1'b0;
  assign lce_req_o[95] = 1'b0;
  assign lce_req_o[96] = 1'b0;
  assign lce_resp_o[21] = miss_addr_o[21];
  assign lce_req_o[28] = miss_addr_o[21];
  assign lce_resp_o[20] = miss_addr_o[20];
  assign lce_req_o[27] = miss_addr_o[20];
  assign lce_resp_o[19] = miss_addr_o[19];
  assign lce_req_o[26] = miss_addr_o[19];
  assign lce_resp_o[18] = miss_addr_o[18];
  assign lce_req_o[25] = miss_addr_o[18];
  assign lce_resp_o[17] = miss_addr_o[17];
  assign lce_req_o[24] = miss_addr_o[17];
  assign lce_resp_o[16] = miss_addr_o[16];
  assign lce_req_o[23] = miss_addr_o[16];
  assign lce_resp_o[15] = miss_addr_o[15];
  assign lce_req_o[22] = miss_addr_o[15];
  assign lce_resp_o[14] = miss_addr_o[14];
  assign lce_req_o[21] = miss_addr_o[14];
  assign lce_resp_o[13] = miss_addr_o[13];
  assign lce_req_o[20] = miss_addr_o[13];
  assign lce_resp_o[12] = miss_addr_o[12];
  assign lce_req_o[19] = miss_addr_o[12];
  assign lce_resp_o[11] = miss_addr_o[11];
  assign lce_req_o[18] = miss_addr_o[11];
  assign lce_resp_o[10] = miss_addr_o[10];
  assign lce_req_o[17] = miss_addr_o[10];
  assign lce_resp_o[9] = miss_addr_o[9];
  assign lce_req_o[16] = miss_addr_o[9];
  assign lce_resp_o[8] = miss_addr_o[8];
  assign lce_req_o[15] = miss_addr_o[8];
  assign lce_resp_o[7] = miss_addr_o[7];
  assign lce_req_o[14] = miss_addr_o[7];
  assign lce_resp_o[6] = miss_addr_o[6];
  assign lce_req_o[13] = miss_addr_o[6];
  assign lce_resp_o[5] = miss_addr_o[5];
  assign lce_req_o[12] = miss_addr_o[5];
  assign lce_resp_o[4] = miss_addr_o[4];
  assign lce_req_o[11] = miss_addr_o[4];
  assign lce_resp_o[3] = miss_addr_o[3];
  assign lce_req_o[10] = miss_addr_o[3];
  assign lce_resp_o[2] = miss_addr_o[2];
  assign lce_req_o[9] = miss_addr_o[2];
  assign lce_resp_o[1] = miss_addr_o[1];
  assign lce_req_o[8] = miss_addr_o[1];
  assign lce_resp_o[0] = miss_addr_o[0];
  assign lce_req_o[7] = miss_addr_o[0];
  assign lce_resp_o[24] = id_i[0];
  assign lce_req_o[31] = id_i[0];
  assign lce_req_o[32] = lce_resp_o[25];
  assign N16 = N13 & N14;
  assign N17 = N16 & N15;
  assign N18 = state_r[2] | state_r[1];
  assign N19 = N18 | N15;
  assign N21 = N13 | state_r[1];
  assign N22 = N21 | state_r[0];
  assign N24 = state_r[2] | N14;
  assign N25 = N24 | state_r[0];
  assign N27 = state_r[2] | N14;
  assign N28 = N27 | N15;
  assign N30 = state_r[2] & state_r[0];
  assign N31 = state_r[2] & state_r[1];
  assign lce_req_o[6:4] = (N0)? lru_way_r :
                          (N1)? lru_way_i : 1'b0;
  assign N0 = lru_flopped_r;
  assign N1 = N12;
  assign { N44, N43, N42 } = (N2)? { 1'b0, 1'b1, 1'b0 } :
                             (N52)? { 1'b0, 1'b1, 1'b1 } :
                             (N41)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N2 = tr_data_received;
  assign { N47, N46, N45 } = (N3)? { 1'b0, 1'b0, 1'b0 } :
                             (N50)? { N44, N43, N42 } :
                             (N39)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N3 = set_tag_wakeup_received_i;
  assign cache_miss_o = (N4)? miss_i :
                        (N5)? 1'b1 :
                        (N6)? 1'b1 :
                        (N7)? 1'b1 :
                        (N8)? 1'b1 :
                        (N9)? 1'b0 : 1'b0;
  assign N4 = N17;
  assign N5 = N20;
  assign N6 = N23;
  assign N7 = N26;
  assign N8 = N29;
  assign N9 = N32;
  assign state_n = (N4)? { 1'b0, 1'b0, 1'b1 } :
                   (N5)? { lce_req_ready_i, 1'b0, N34 } :
                   (N6)? { N47, N46, N45 } :
                   (N7)? { 1'b0, N48, 1'b0 } :
                   (N8)? { 1'b0, N48, N48 } :
                   (N9)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign tr_data_received_n = (N4)? 1'b0 :
                              (N6)? 1'b1 : 1'b0;
  assign cce_data_received_n = (N4)? 1'b0 :
                               (N6)? 1'b1 : 1'b0;
  assign set_tag_received_n = (N4)? 1'b0 :
                              (N6)? 1'b1 : 1'b0;
  assign lce_req_v_o = (N4)? 1'b0 :
                       (N5)? 1'b1 :
                       (N6)? 1'b0 :
                       (N7)? 1'b0 :
                       (N8)? 1'b0 :
                       (N9)? 1'b0 : 1'b0;
  assign lce_resp_v_o = (N4)? 1'b0 :
                        (N5)? 1'b0 :
                        (N6)? 1'b0 :
                        (N7)? 1'b1 :
                        (N8)? 1'b1 :
                        (N9)? 1'b0 : 1'b0;
  assign lce_resp_o[22] = (N4)? 1'b0 :
                          (N5)? 1'b0 :
                          (N6)? 1'b0 :
                          (N7)? 1'b1 :
                          (N8)? 1'b1 :
                          (N9)? 1'b0 : 1'b0;
  assign { N56, N55, N54 } = (N10)? { 1'b0, 1'b0, 1'b0 } :
                             (N11)? state_n : 1'b0;
  assign N10 = reset_i;
  assign N11 = N53;
  assign N57 = (N10)? 1'b0 :
               (N11)? tr_data_received_n : 1'b0;
  assign N58 = (N10)? 1'b0 :
               (N11)? cce_data_received_n : 1'b0;
  assign N59 = (N10)? 1'b0 :
               (N11)? set_tag_received_n : 1'b0;
  assign tr_data_received = tr_data_received_r | tr_data_received_i;
  assign cce_data_received = cce_data_received_r | cce_data_received_i;
  assign set_tag_received = set_tag_received_r | set_tag_received_i;
  assign N12 = ~lru_flopped_r;
  assign N13 = ~state_r[2];
  assign N14 = ~state_r[1];
  assign N15 = ~state_r[0];
  assign N20 = ~N19;
  assign N23 = ~N22;
  assign N26 = ~N25;
  assign N29 = ~N28;
  assign N32 = N30 | N31;
  assign N33 = ~miss_i;
  assign N34 = ~lce_req_ready_i;
  assign N35 = ~tr_data_received_i;
  assign N36 = ~cce_data_received_i;
  assign N37 = ~set_tag_received_i;
  assign N38 = set_tag_received | set_tag_wakeup_received_i;
  assign N39 = ~N38;
  assign N40 = cce_data_received | tr_data_received;
  assign N41 = ~N40;
  assign N48 = ~lce_resp_yumi_i;
  assign N49 = ~set_tag_wakeup_received_i;
  assign N50 = set_tag_received & N49;
  assign N51 = ~tr_data_received;
  assign N52 = cce_data_received & N51;
  assign N53 = ~reset_i;
  assign N60 = N17 & N53;
  assign N61 = N20 & N53;
  assign N62 = lru_flopped_r & N61;
  assign N63 = N60 | N62;
  assign N64 = N23 & N53;
  assign N65 = N63 | N64;
  assign N66 = N26 & N53;
  assign N67 = N65 | N66;
  assign N68 = N29 & N53;
  assign N69 = N67 | N68;
  assign N70 = N32 & N53;
  assign N71 = N69 | N70;
  assign N72 = ~N71;
  assign N73 = N53 & N72;
  assign N74 = N33 & N60;
  assign N75 = ~N74;
  assign N76 = N74 | N61;
  assign N77 = N35 & N64;
  assign N78 = N76 | N77;
  assign N79 = N78 | N66;
  assign N80 = N79 | N68;
  assign N81 = N80 | N70;
  assign N82 = ~N81;
  assign N83 = N36 & N64;
  assign N84 = N76 | N83;
  assign N85 = N84 | N66;
  assign N86 = N85 | N68;
  assign N87 = N86 | N70;
  assign N88 = ~N87;
  assign N89 = N37 & N64;
  assign N90 = N76 | N89;
  assign N91 = N90 | N66;
  assign N92 = N91 | N68;
  assign N93 = N92 | N70;
  assign N94 = ~N93;
  assign N95 = N76 | N64;
  assign N96 = N95 | N66;
  assign N97 = N96 | N68;
  assign N98 = N97 | N70;
  assign N99 = ~N98;
  assign N100 = N53 & N99;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { lce_resp_o[25:25] } <= { 1'b0 };
    end
    if(N73) begin
      { lru_way_r[2:0] } <= { lru_way_i[2:0] };
    end
    if(N75) begin
      { state_r[2:0] } <= { N56, N55, N54 };
    end
    if(reset_i) begin
      lru_flopped_r <= 1'b0;
    end
    if(N82) begin
      tr_data_received_r <= N57;
    end
    if(N88) begin
      cce_data_received_r <= N58;
    end
    if(N94) begin
      set_tag_received_r <= N59;
    end
    if(N100) begin
      { miss_addr_o[21:0] } <= { miss_addr_i[21:0] };
    end
  end


endmodule