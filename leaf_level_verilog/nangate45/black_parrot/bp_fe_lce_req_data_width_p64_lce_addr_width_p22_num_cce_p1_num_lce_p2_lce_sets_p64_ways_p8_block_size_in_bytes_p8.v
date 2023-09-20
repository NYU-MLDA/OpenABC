module bp_fe_lce_req_data_width_p64_lce_addr_width_p22_num_cce_p1_num_lce_p2_lce_sets_p64_ways_p8_block_size_in_bytes_p8
(
  clk_i,
  reset_i,
  id_i,
  miss_i,
  miss_addr_i,
  lru_way_i,
  cache_miss_o,
  tr_received_i,
  cce_data_received_i,
  tag_set_i,
  tag_set_wakeup_i,
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
  output [29:0] lce_req_o;
  output [25:0] lce_resp_o;
  input clk_i;
  input reset_i;
  input miss_i;
  input tr_received_i;
  input cce_data_received_i;
  input tag_set_i;
  input tag_set_wakeup_i;
  input lce_req_ready_i;
  input lce_resp_yumi_i;
  output cache_miss_o;
  output lce_req_v_o;
  output lce_resp_v_o;
  wire cache_miss_o,lce_req_v_o,lce_resp_v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,tr_received_n,
  cce_data_received_n,tag_set_n,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112;
  wire [2:0] state_n,lru_way_n;
  wire [21:0] miss_addr_n;
  reg [25:0] lce_resp_o;
  reg [29:0] lce_req_o;
  reg [2:0] state_r;
  reg tr_received_r,cce_data_received_r,tag_set_r;
  assign lce_resp_o[23] = 1'b1;
  assign lce_req_o[29] = lce_resp_o[25];
  assign lce_req_o[25] = lce_resp_o[21];
  assign lce_req_o[24] = lce_resp_o[20];
  assign lce_req_o[23] = lce_resp_o[19];
  assign lce_req_o[22] = lce_resp_o[18];
  assign lce_req_o[21] = lce_resp_o[17];
  assign lce_req_o[20] = lce_resp_o[16];
  assign lce_req_o[19] = lce_resp_o[15];
  assign lce_req_o[18] = lce_resp_o[14];
  assign lce_req_o[17] = lce_resp_o[13];
  assign lce_req_o[16] = lce_resp_o[12];
  assign lce_req_o[15] = lce_resp_o[11];
  assign lce_req_o[14] = lce_resp_o[10];
  assign lce_req_o[13] = lce_resp_o[9];
  assign lce_req_o[12] = lce_resp_o[8];
  assign lce_req_o[11] = lce_resp_o[7];
  assign lce_req_o[10] = lce_resp_o[6];
  assign lce_req_o[9] = lce_resp_o[5];
  assign lce_req_o[8] = lce_resp_o[4];
  assign lce_req_o[7] = lce_resp_o[3];
  assign lce_req_o[6] = lce_resp_o[2];
  assign lce_req_o[5] = lce_resp_o[1];
  assign lce_req_o[4] = lce_resp_o[0];
  assign lce_req_o[0] = 1'b0;
  assign lce_req_o[26] = 1'b0;
  assign lce_req_o[27] = 1'b0;
  assign lce_req_o[28] = id_i[0];
  assign lce_resp_o[24] = id_i[0];
  assign N15 = N12 & N13;
  assign N16 = N15 & N14;
  assign N17 = state_r[2] | state_r[1];
  assign N18 = N17 | N14;
  assign N20 = N12 | state_r[1];
  assign N21 = N20 | state_r[0];
  assign N23 = state_r[2] | N13;
  assign N24 = N23 | state_r[0];
  assign N26 = state_r[2] | N13;
  assign N27 = N26 | N14;
  assign { N40, N39, N38 } = (N0)? { 1'b0, 1'b1, 1'b0 } :
                             (N53)? { 1'b0, 1'b1, 1'b1 } :
                             (N37)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N9;
  assign { N43, N42, N41 } = (N1)? { 1'b0, 1'b0, 1'b0 } :
                             (N51)? { N40, N39, N38 } :
                             (N35)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N1 = tag_set_wakeup_i;
  assign cache_miss_o = (N2)? miss_i :
                        (N3)? 1'b1 :
                        (N4)? 1'b1 :
                        (N5)? 1'b1 :
                        (N6)? 1'b1 :
                        (N49)? 1'b0 : 1'b0;
  assign N2 = N16;
  assign N3 = N19;
  assign N4 = N22;
  assign N5 = N25;
  assign N6 = N28;
  assign state_n = (N2)? { 1'b0, 1'b0, 1'b1 } :
                   (N3)? { lce_req_ready_i, 1'b0, N30 } :
                   (N4)? { N43, N42, N41 } :
                   (N5)? { 1'b0, N44, 1'b0 } :
                   (N6)? { 1'b0, N44, N44 } :
                   (N49)? state_r : 1'b0;
  assign miss_addr_n = (N2)? miss_addr_i :
                       (N49)? lce_resp_o[21:0] : 1'b0;
  assign lru_way_n = (N2)? lru_way_i :
                     (N49)? lce_req_o[3:1] : 1'b0;
  assign tr_received_n = (N2)? 1'b0 :
                         (N4)? 1'b1 :
                         (N49)? tr_received_r : 1'b0;
  assign cce_data_received_n = (N2)? 1'b0 :
                               (N4)? 1'b1 :
                               (N49)? cce_data_received_r : 1'b0;
  assign tag_set_n = (N2)? 1'b0 :
                     (N4)? 1'b1 :
                     (N49)? tag_set_r : 1'b0;
  assign lce_req_v_o = (N2)? 1'b0 :
                       (N3)? 1'b1 :
                       (N4)? 1'b0 :
                       (N5)? 1'b0 :
                       (N6)? 1'b0 :
                       (N49)? 1'b0 : 1'b0;
  assign lce_resp_v_o = (N2)? 1'b0 :
                        (N3)? 1'b0 :
                        (N4)? 1'b0 :
                        (N5)? 1'b1 :
                        (N6)? 1'b1 :
                        (N49)? 1'b0 : 1'b0;
  assign lce_resp_o[22] = (N2)? 1'b0 :
                          (N3)? 1'b0 :
                          (N4)? 1'b0 :
                          (N5)? 1'b0 :
                          (N6)? 1'b1 :
                          (N49)? 1'b0 : 1'b0;
  assign { N57, N56, N55 } = (N7)? { 1'b0, 1'b0, 1'b0 } :
                             (N8)? state_n : 1'b0;
  assign N7 = reset_i;
  assign N8 = N54;
  assign { N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58 } = (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                            (N8)? miss_addr_n : 1'b0;
  assign N80 = (N7)? 1'b0 :
               (N8)? tr_received_n : 1'b0;
  assign N81 = (N7)? 1'b0 :
               (N8)? cce_data_received_n : 1'b0;
  assign N82 = (N7)? 1'b0 :
               (N8)? tag_set_n : 1'b0;
  assign { N85, N84, N83 } = (N7)? { 1'b0, 1'b0, 1'b0 } :
                             (N8)? lru_way_n : 1'b0;
  assign N9 = tr_received_r | tr_received_i;
  assign N10 = cce_data_received_r | cce_data_received_i;
  assign N11 = tag_set_r | tag_set_i;
  assign N12 = ~state_r[2];
  assign N13 = ~state_r[1];
  assign N14 = ~state_r[0];
  assign N19 = ~N18;
  assign N22 = ~N21;
  assign N25 = ~N24;
  assign N28 = ~N27;
  assign N29 = ~miss_i;
  assign N30 = ~lce_req_ready_i;
  assign N31 = ~tr_received_i;
  assign N32 = ~cce_data_received_i;
  assign N33 = ~tag_set_i;
  assign N34 = N11 | tag_set_wakeup_i;
  assign N35 = ~N34;
  assign N36 = N10 | N9;
  assign N37 = ~N36;
  assign N44 = ~lce_resp_yumi_i;
  assign N45 = N19 | N16;
  assign N46 = N22 | N45;
  assign N47 = N25 | N46;
  assign N48 = N28 | N47;
  assign N49 = ~N48;
  assign N50 = ~tag_set_wakeup_i;
  assign N51 = N11 & N50;
  assign N52 = ~N9;
  assign N53 = N10 & N52;
  assign N54 = ~reset_i;
  assign N86 = N16 & N54;
  assign N87 = N29 & N86;
  assign N88 = N19 & N54;
  assign N89 = N87 | N88;
  assign N90 = N22 & N54;
  assign N91 = N89 | N90;
  assign N92 = N25 & N54;
  assign N93 = N91 | N92;
  assign N94 = N28 & N54;
  assign N95 = N93 | N94;
  assign N96 = ~N95;
  assign N97 = ~N87;
  assign N98 = N31 & N90;
  assign N99 = N89 | N98;
  assign N100 = N99 | N92;
  assign N101 = N100 | N94;
  assign N102 = ~N101;
  assign N103 = N32 & N90;
  assign N104 = N89 | N103;
  assign N105 = N104 | N92;
  assign N106 = N105 | N94;
  assign N107 = ~N106;
  assign N108 = N33 & N90;
  assign N109 = N89 | N108;
  assign N110 = N109 | N92;
  assign N111 = N110 | N94;
  assign N112 = ~N111;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { lce_resp_o[25:25] } <= { 1'b0 };
    end
    if(N96) begin
      { lce_req_o[3:1] } <= { N85, N84, N83 };
      { lce_resp_o[21:0] } <= { N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58 };
    end
    if(N97) begin
      { state_r[2:0] } <= { N57, N56, N55 };
    end
    if(N102) begin
      tr_received_r <= N80;
    end
    if(N107) begin
      cce_data_received_r <= N81;
    end
    if(N112) begin
      tag_set_r <= N82;
    end
  end


endmodule