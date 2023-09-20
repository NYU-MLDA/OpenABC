module bp_be_dcache_lce_req_data_width_p64_paddr_width_p22_num_cce_p1_num_lce_p2_ways_p8_sets_p64
(
  clk_i,
  reset_i,
  lce_id_i,
  load_miss_i,
  store_miss_i,
  miss_addr_i,
  lru_way_i,
  dirty_i,
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

  input [0:0] lce_id_i;
  input [21:0] miss_addr_i;
  input [2:0] lru_way_i;
  input [7:0] dirty_i;
  output [29:0] lce_req_o;
  output [25:0] lce_resp_o;
  input clk_i;
  input reset_i;
  input load_miss_i;
  input store_miss_i;
  input tr_received_i;
  input cce_data_received_i;
  input tag_set_i;
  input tag_set_wakeup_i;
  input lce_req_ready_i;
  input lce_resp_yumi_i;
  output cache_miss_o;
  output lce_req_v_o;
  output lce_resp_v_o;
  wire [25:0] lce_resp_o;
  wire cache_miss_o,lce_req_v_o,lce_resp_v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,missed,
  tr_received,cce_data_received,tag_set,dirty_lru_flopped_n,tr_received_n,
  cce_data_received_n,tag_set_n,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,
  N120,N121,N122,N123,N124;
  wire [2:0] state_n;
  reg [29:0] lce_req_o;
  reg [2:0] state_r,lru_way_r;
  reg dirty_lru_flopped_r,tr_received_r,cce_data_received_r,tag_set_r,
  load_not_store_r,dirty_r;
  assign lce_resp_o[23] = 1'b1;
  assign lce_resp_o[25] = 1'b0;
  assign lce_req_o[26] = 1'b0;
  assign lce_req_o[29] = 1'b0;
  assign lce_resp_o[21] = lce_req_o[25];
  assign lce_resp_o[20] = lce_req_o[24];
  assign lce_resp_o[19] = lce_req_o[23];
  assign lce_resp_o[18] = lce_req_o[22];
  assign lce_resp_o[17] = lce_req_o[21];
  assign lce_resp_o[16] = lce_req_o[20];
  assign lce_resp_o[15] = lce_req_o[19];
  assign lce_resp_o[14] = lce_req_o[18];
  assign lce_resp_o[13] = lce_req_o[17];
  assign lce_resp_o[12] = lce_req_o[16];
  assign lce_resp_o[11] = lce_req_o[15];
  assign lce_resp_o[10] = lce_req_o[14];
  assign lce_resp_o[9] = lce_req_o[13];
  assign lce_resp_o[8] = lce_req_o[12];
  assign lce_resp_o[7] = lce_req_o[11];
  assign lce_resp_o[6] = lce_req_o[10];
  assign lce_resp_o[5] = lce_req_o[9];
  assign lce_resp_o[4] = lce_req_o[8];
  assign lce_resp_o[3] = lce_req_o[7];
  assign lce_resp_o[2] = lce_req_o[6];
  assign lce_resp_o[1] = lce_req_o[5];
  assign lce_resp_o[0] = lce_req_o[4];
  assign lce_resp_o[24] = lce_id_i[0];
  assign lce_req_o[28] = lce_id_i[0];
  assign N27 = (N19)? dirty_i[0] :
               (N21)? dirty_i[1] :
               (N23)? dirty_i[2] :
               (N25)? dirty_i[3] :
               (N20)? dirty_i[4] :
               (N22)? dirty_i[5] :
               (N24)? dirty_i[6] :
               (N26)? dirty_i[7] : 1'b0;
  assign N31 = N28 & N29;
  assign N32 = N31 & N30;
  assign N33 = state_r[2] | state_r[1];
  assign N34 = N33 | N30;
  assign N36 = N28 | state_r[1];
  assign N37 = N36 | state_r[0];
  assign N39 = state_r[2] | N29;
  assign N40 = N39 | state_r[0];
  assign N42 = state_r[2] | N29;
  assign N43 = N42 | N30;
  assign N45 = state_r[2] & state_r[0];
  assign N46 = state_r[2] & state_r[1];
  assign lce_req_o[3:1] = (N0)? lru_way_r :
                          (N1)? lru_way_i : 1'b0;
  assign N0 = dirty_lru_flopped_r;
  assign N1 = N11;
  assign lce_req_o[0] = (N0)? dirty_r :
                        (N1)? N27 : 1'b0;
  assign { N59, N58, N57 } = (N2)? { 1'b0, 1'b1, 1'b0 } :
                             (N67)? { 1'b0, 1'b1, 1'b1 } :
                             (N56)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N2 = tr_received;
  assign { N62, N61, N60 } = (N3)? { 1'b0, 1'b0, 1'b0 } :
                             (N65)? { N59, N58, N57 } :
                             (N54)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N3 = tag_set_wakeup_i;
  assign cache_miss_o = (N4)? missed :
                        (N5)? 1'b1 :
                        (N6)? 1'b1 :
                        (N7)? 1'b1 :
                        (N8)? 1'b1 :
                        (N9)? 1'b0 : 1'b0;
  assign N4 = N32;
  assign N5 = N35;
  assign N6 = N38;
  assign N7 = N41;
  assign N8 = N44;
  assign N9 = N47;
  assign state_n = (N4)? { 1'b0, 1'b0, 1'b1 } :
                   (N5)? { lce_req_ready_i, 1'b0, N49 } :
                   (N6)? { N62, N61, N60 } :
                   (N7)? { 1'b0, N63, 1'b0 } :
                   (N8)? { 1'b0, N63, N63 } :
                   (N9)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign dirty_lru_flopped_n = (N4)? 1'b0 :
                               (N5)? 1'b1 : 1'b0;
  assign tr_received_n = (N4)? 1'b0 :
                         (N6)? 1'b1 : 1'b0;
  assign cce_data_received_n = (N4)? 1'b0 :
                               (N6)? 1'b1 : 1'b0;
  assign tag_set_n = (N4)? 1'b0 :
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
                          (N7)? 1'b0 :
                          (N8)? 1'b1 :
                          (N9)? 1'b0 : 1'b0;
  assign missed = load_miss_i | store_miss_i;
  assign tr_received = tr_received_r | tr_received_i;
  assign cce_data_received = cce_data_received_r | cce_data_received_i;
  assign tag_set = tag_set_r | tag_set_i;
  assign N10 = ~load_not_store_r;
  assign lce_req_o[27] = N10;
  assign N11 = ~dirty_lru_flopped_r;
  assign N12 = ~lru_way_i[0];
  assign N13 = ~lru_way_i[1];
  assign N14 = N12 & N13;
  assign N15 = N12 & lru_way_i[1];
  assign N16 = lru_way_i[0] & N13;
  assign N17 = lru_way_i[0] & lru_way_i[1];
  assign N18 = ~lru_way_i[2];
  assign N19 = N14 & N18;
  assign N20 = N14 & lru_way_i[2];
  assign N21 = N16 & N18;
  assign N22 = N16 & lru_way_i[2];
  assign N23 = N15 & N18;
  assign N24 = N15 & lru_way_i[2];
  assign N25 = N17 & N18;
  assign N26 = N17 & lru_way_i[2];
  assign N28 = ~state_r[2];
  assign N29 = ~state_r[1];
  assign N30 = ~state_r[0];
  assign N35 = ~N34;
  assign N38 = ~N37;
  assign N41 = ~N40;
  assign N44 = ~N43;
  assign N47 = N45 | N46;
  assign N48 = ~missed;
  assign N49 = ~lce_req_ready_i;
  assign N50 = ~tr_received_i;
  assign N51 = ~cce_data_received_i;
  assign N52 = ~tag_set_i;
  assign N53 = tag_set | tag_set_wakeup_i;
  assign N54 = ~N53;
  assign N55 = cce_data_received | tr_received;
  assign N56 = ~N55;
  assign N63 = ~lce_resp_yumi_i;
  assign N64 = ~tag_set_wakeup_i;
  assign N65 = tag_set & N64;
  assign N66 = ~tr_received;
  assign N67 = cce_data_received & N66;
  assign N68 = ~reset_i;
  assign N69 = N32 & N68;
  assign N70 = N48 & N69;
  assign N71 = N35 & N68;
  assign N72 = N70 | N71;
  assign N73 = N38 & N68;
  assign N74 = N72 | N73;
  assign N75 = N41 & N68;
  assign N76 = N74 | N75;
  assign N77 = N44 & N68;
  assign N78 = N76 | N77;
  assign N79 = N47 & N68;
  assign N80 = N78 | N79;
  assign N81 = ~N80;
  assign N82 = N68 & N81;
  assign N83 = N48 & N32;
  assign N84 = ~N83;
  assign N85 = N83 | N38;
  assign N86 = N85 | N41;
  assign N87 = N86 | N44;
  assign N88 = N87 | N47;
  assign N89 = ~N88;
  assign N90 = N83 | N35;
  assign N91 = N50 & N38;
  assign N92 = N90 | N91;
  assign N93 = N92 | N41;
  assign N94 = N93 | N44;
  assign N95 = N94 | N47;
  assign N96 = ~N95;
  assign N97 = N51 & N38;
  assign N98 = N90 | N97;
  assign N99 = N98 | N41;
  assign N100 = N99 | N44;
  assign N101 = N100 | N47;
  assign N102 = ~N101;
  assign N103 = N52 & N38;
  assign N104 = N90 | N103;
  assign N105 = N104 | N41;
  assign N106 = N105 | N44;
  assign N107 = N106 | N47;
  assign N108 = ~N107;
  assign N109 = dirty_lru_flopped_r & N71;
  assign N110 = N69 | N109;
  assign N111 = N110 | N73;
  assign N112 = N111 | N75;
  assign N113 = N112 | N77;
  assign N114 = N113 | N79;
  assign N115 = ~N114;
  assign N116 = N68 & N115;
  assign N117 = dirty_lru_flopped_r & N71;
  assign N118 = N69 | N117;
  assign N119 = N118 | N73;
  assign N120 = N119 | N75;
  assign N121 = N120 | N77;
  assign N122 = N121 | N79;
  assign N123 = ~N122;
  assign N124 = N68 & N123;

  always @(posedge clk_i) begin
    if(N82) begin
      { lce_req_o[25:4] } <= { miss_addr_i[21:0] };
      load_not_store_r <= load_miss_i;
    end
    if(reset_i) begin
      { state_r[2:0] } <= { 1'b0, 1'b0, 1'b0 };
    end else if(N84) begin
      { state_r[2:0] } <= { state_n[2:0] };
    end
    if(reset_i) begin
      dirty_lru_flopped_r <= 1'b0;
    end else if(N89) begin
      dirty_lru_flopped_r <= dirty_lru_flopped_n;
    end
    if(reset_i) begin
      tr_received_r <= 1'b0;
    end else if(N96) begin
      tr_received_r <= tr_received_n;
    end
    if(reset_i) begin
      cce_data_received_r <= 1'b0;
    end else if(N102) begin
      cce_data_received_r <= cce_data_received_n;
    end
    if(reset_i) begin
      tag_set_r <= 1'b0;
    end else if(N108) begin
      tag_set_r <= tag_set_n;
    end
    if(N116) begin
      { lru_way_r[2:0] } <= { lru_way_i[2:0] };
    end
    if(N124) begin
      dirty_r <= N27;
    end
  end


endmodule