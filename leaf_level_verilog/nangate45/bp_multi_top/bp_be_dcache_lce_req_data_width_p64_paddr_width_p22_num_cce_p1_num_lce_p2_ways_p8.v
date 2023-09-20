module bp_be_dcache_lce_req_data_width_p64_paddr_width_p22_num_cce_p1_num_lce_p2_ways_p8
(
  clk_i,
  reset_i,
  lce_id_i,
  load_miss_i,
  store_miss_i,
  miss_addr_i,
  lru_way_i,
  dirty_i,
  uncached_load_req_i,
  uncached_store_req_i,
  store_data_i,
  size_op_i,
  cache_miss_o,
  miss_addr_o,
  tr_data_received_i,
  cce_data_received_i,
  uncached_data_received_i,
  set_tag_received_i,
  set_tag_wakeup_received_i,
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
  input [63:0] store_data_i;
  input [1:0] size_op_i;
  output [21:0] miss_addr_o;
  output [96:0] lce_req_o;
  output [25:0] lce_resp_o;
  input clk_i;
  input reset_i;
  input load_miss_i;
  input store_miss_i;
  input uncached_load_req_i;
  input uncached_store_req_i;
  input tr_data_received_i;
  input cce_data_received_i;
  input uncached_data_received_i;
  input set_tag_received_i;
  input set_tag_wakeup_received_i;
  input lce_req_ready_i;
  input lce_resp_yumi_i;
  output cache_miss_o;
  output lce_req_v_o;
  output lce_resp_v_o;
  wire [96:0] lce_req_o;
  wire [25:0] lce_resp_o;
  wire cache_miss_o,lce_req_v_o,lce_resp_v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  tr_data_received,cce_data_received,set_tag_received,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,dirty_lru_flopped_n,tr_data_received_n,
  cce_data_received_n,set_tag_received_n,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,
  N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,
  N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,
  N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,
  N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,
  N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,
  N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,
  N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256;
  wire [2:0] state_n;
  reg size_op_r,dirty_lru_flopped_r,tr_data_received_r,cce_data_received_r,
  set_tag_received_r,load_not_store_r,dirty_r;
  reg [2:0] state_r,lru_way_r;
  reg [21:0] miss_addr_o;
  assign lce_resp_o[23] = 1'b1;
  assign lce_resp_o[25] = 1'b0;
  assign lce_req_o[29] = 1'b0;
  assign lce_req_o[32] = 1'b0;
  assign lce_resp_o[21] = miss_addr_o[21];
  assign lce_resp_o[20] = miss_addr_o[20];
  assign lce_resp_o[19] = miss_addr_o[19];
  assign lce_resp_o[18] = miss_addr_o[18];
  assign lce_resp_o[17] = miss_addr_o[17];
  assign lce_resp_o[16] = miss_addr_o[16];
  assign lce_resp_o[15] = miss_addr_o[15];
  assign lce_resp_o[14] = miss_addr_o[14];
  assign lce_resp_o[13] = miss_addr_o[13];
  assign lce_resp_o[12] = miss_addr_o[12];
  assign lce_resp_o[11] = miss_addr_o[11];
  assign lce_resp_o[10] = miss_addr_o[10];
  assign lce_resp_o[9] = miss_addr_o[9];
  assign lce_resp_o[8] = miss_addr_o[8];
  assign lce_resp_o[7] = miss_addr_o[7];
  assign lce_resp_o[6] = miss_addr_o[6];
  assign lce_resp_o[5] = miss_addr_o[5];
  assign lce_resp_o[4] = miss_addr_o[4];
  assign lce_resp_o[3] = miss_addr_o[3];
  assign lce_resp_o[2] = miss_addr_o[2];
  assign lce_resp_o[1] = miss_addr_o[1];
  assign lce_resp_o[0] = miss_addr_o[0];
  assign lce_resp_o[24] = lce_id_i[0];
  assign lce_req_o[31] = lce_id_i[0];
  assign N28 = (N20)? dirty_i[0] :
               (N22)? dirty_i[1] :
               (N24)? dirty_i[2] :
               (N26)? dirty_i[3] :
               (N21)? dirty_i[4] :
               (N23)? dirty_i[5] :
               (N25)? dirty_i[6] :
               (N27)? dirty_i[7] : 1'b0;
  assign N32 = N29 & N30;
  assign N33 = N32 & N31;
  assign N34 = state_r[2] | state_r[1];
  assign N35 = N34 | N31;
  assign N37 = state_r[2] | N30;
  assign N38 = N37 | state_r[0];
  assign N40 = N29 | state_r[1];
  assign N41 = N40 | N31;
  assign N43 = state_r[2] | N30;
  assign N44 = N43 | N31;
  assign N46 = N29 | state_r[1];
  assign N47 = N46 | state_r[0];
  assign N49 = state_r[2] & state_r[1];
  assign lce_req_o[6:4] = (N0)? lru_way_r :
                          (N1)? lru_way_i : 1'b0;
  assign N0 = dirty_lru_flopped_r;
  assign N1 = N12;
  assign lce_req_o[3] = (N0)? dirty_r :
                        (N1)? N28 : 1'b0;
  assign N57 = (N2)? 1'b1 :
               (N167)? 1'b1 :
               (N170)? N54 :
               (N53)? 1'b0 : 1'b0;
  assign N2 = N50;
  assign { N59, N58 } = (N2)? { 1'b0, 1'b1 } :
                        (N167)? { 1'b1, 1'b0 } :
                        (N170)? { 1'b0, 1'b0 } :
                        (N53)? { 1'b0, 1'b0 } : 1'b0;
  assign N60 = (N2)? 1'b0 :
               (N167)? 1'b0 :
               (N170)? 1'b1 :
               (N53)? 1'b0 : 1'b0;
  assign { N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61 } = (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, miss_addr_o } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (N167)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, miss_addr_o } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (N170)? { store_data_i, miss_addr_i } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (N53)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, miss_addr_o } : 1'b0;
  assign { N158, N157, N156 } = (N3)? { 1'b0, 1'b1, 1'b1 } :
                                (N174)? { 1'b1, 1'b0, 1'b0 } :
                                (N155)? { 1'b1, 1'b0, 1'b1 } : 1'b0;
  assign N3 = tr_data_received;
  assign { N161, N160, N159 } = (N4)? { 1'b0, 1'b0, 1'b0 } :
                                (N172)? { N158, N157, N156 } :
                                (N153)? { 1'b1, 1'b0, 1'b1 } : 1'b0;
  assign N4 = N151;
  assign lce_req_o[1:0] = (N5)? { 1'b0, size_op_r } :
                          (N163)? size_op_i : 1'b0;
  assign N5 = N39;
  assign lce_req_o[2] = (N6)? N60 :
                        (N7)? 1'b0 :
                        (N5)? 1'b1 :
                        (N8)? 1'b0 :
                        (N9)? 1'b0 :
                        (N10)? 1'b0 :
                        (N11)? 1'b0 : 1'b0;
  assign N6 = N33;
  assign N7 = N36;
  assign N8 = N42;
  assign N9 = N45;
  assign N10 = N48;
  assign N11 = N49;
  assign { lce_req_o[96:33], lce_req_o[28:7] } = (N6)? { N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61 } :
                                                 (N165)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, miss_addr_o } : 1'b0;
  assign lce_req_o[30] = (N7)? N147 :
                         (N166)? 1'b0 : 1'b0;
  assign dirty_lru_flopped_n = (N6)? 1'b0 :
                               (N7)? 1'b1 : 1'b0;
  assign tr_data_received_n = (N6)? 1'b0 :
                              (N8)? 1'b1 : 1'b0;
  assign cce_data_received_n = (N6)? 1'b0 :
                               (N8)? 1'b1 : 1'b0;
  assign set_tag_received_n = (N6)? 1'b0 :
                              (N8)? 1'b1 : 1'b0;
  assign cache_miss_o = (N6)? N57 :
                        (N7)? 1'b1 :
                        (N5)? 1'b1 :
                        (N8)? 1'b1 :
                        (N9)? 1'b1 :
                        (N10)? 1'b1 :
                        (N11)? 1'b0 : 1'b0;
  assign state_n = (N6)? { 1'b0, N59, N58 } :
                   (N7)? { lce_req_ready_i, 1'b0, 1'b1 } :
                   (N5)? { lce_req_ready_i, N54, lce_req_ready_i } :
                   (N8)? { N161, N160, N159 } :
                   (N9)? { 1'b0, N162, N162 } :
                   (N10)? { N162, 1'b0, 1'b0 } :
                   (N11)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign lce_req_v_o = (N6)? N60 :
                       (N7)? 1'b1 :
                       (N5)? 1'b1 :
                       (N8)? 1'b0 :
                       (N9)? 1'b0 :
                       (N10)? 1'b0 :
                       (N11)? 1'b0 : 1'b0;
  assign lce_resp_v_o = (N6)? 1'b0 :
                        (N7)? 1'b0 :
                        (N5)? 1'b0 :
                        (N8)? 1'b0 :
                        (N9)? 1'b1 :
                        (N10)? 1'b1 :
                        (N11)? 1'b0 : 1'b0;
  assign lce_resp_o[22] = (N6)? 1'b0 :
                          (N7)? 1'b0 :
                          (N5)? 1'b0 :
                          (N8)? 1'b0 :
                          (N9)? 1'b0 :
                          (N10)? 1'b1 :
                          (N11)? 1'b0 : 1'b0;
  assign tr_data_received = tr_data_received_r | tr_data_received_i;
  assign cce_data_received = cce_data_received_r | cce_data_received_i;
  assign set_tag_received = set_tag_received_r | set_tag_received_i;
  assign N12 = ~dirty_lru_flopped_r;
  assign N13 = ~lru_way_i[0];
  assign N14 = ~lru_way_i[1];
  assign N15 = N13 & N14;
  assign N16 = N13 & lru_way_i[1];
  assign N17 = lru_way_i[0] & N14;
  assign N18 = lru_way_i[0] & lru_way_i[1];
  assign N19 = ~lru_way_i[2];
  assign N20 = N15 & N19;
  assign N21 = N15 & lru_way_i[2];
  assign N22 = N17 & N19;
  assign N23 = N17 & lru_way_i[2];
  assign N24 = N16 & N19;
  assign N25 = N16 & lru_way_i[2];
  assign N26 = N18 & N19;
  assign N27 = N18 & lru_way_i[2];
  assign N29 = ~state_r[2];
  assign N30 = ~state_r[1];
  assign N31 = ~state_r[0];
  assign N36 = ~N35;
  assign N39 = ~N38;
  assign N42 = ~N41;
  assign N45 = ~N44;
  assign N48 = ~N47;
  assign N50 = load_miss_i | store_miss_i;
  assign N51 = uncached_load_req_i | N50;
  assign N52 = uncached_store_req_i | N51;
  assign N53 = ~N52;
  assign N54 = ~lce_req_ready_i;
  assign N55 = ~N51;
  assign N56 = ~N50;
  assign N147 = ~load_not_store_r;
  assign N148 = ~tr_data_received_i;
  assign N149 = ~cce_data_received_i;
  assign N150 = ~set_tag_received_i;
  assign N151 = set_tag_wakeup_received_i | uncached_data_received_i;
  assign N152 = set_tag_received | N151;
  assign N153 = ~N152;
  assign N154 = cce_data_received | tr_data_received;
  assign N155 = ~N154;
  assign N162 = ~lce_resp_yumi_i;
  assign N163 = N38;
  assign N164 = ~N33;
  assign N165 = N164;
  assign N166 = N35;
  assign N167 = uncached_load_req_i & N56;
  assign N168 = ~uncached_load_req_i;
  assign N169 = N56 & N168;
  assign N170 = uncached_store_req_i & N169;
  assign N171 = ~N151;
  assign N172 = set_tag_received & N171;
  assign N173 = ~tr_data_received;
  assign N174 = cce_data_received & N173;
  assign N175 = ~reset_i;
  assign N176 = N33 & N175;
  assign N177 = N50 & N176;
  assign N178 = N55 & N176;
  assign N179 = N177 | N178;
  assign N180 = N36 & N175;
  assign N181 = N179 | N180;
  assign N182 = N39 & N175;
  assign N183 = N181 | N182;
  assign N184 = N42 & N175;
  assign N185 = N183 | N184;
  assign N186 = N45 & N175;
  assign N187 = N185 | N186;
  assign N188 = N48 & N175;
  assign N189 = N187 | N188;
  assign N190 = N49 & N175;
  assign N191 = N189 | N190;
  assign N192 = ~N191;
  assign N193 = N175 & N192;
  assign N194 = N56 & N33;
  assign N195 = N194 | N39;
  assign N196 = N195 | N42;
  assign N197 = N196 | N45;
  assign N198 = N197 | N48;
  assign N199 = N198 | N49;
  assign N200 = ~N199;
  assign N201 = N55 & N33;
  assign N202 = N201 | N36;
  assign N203 = N202 | N39;
  assign N204 = N148 & N42;
  assign N205 = N203 | N204;
  assign N206 = N205 | N45;
  assign N207 = N206 | N48;
  assign N208 = N207 | N49;
  assign N209 = ~N208;
  assign N210 = N149 & N42;
  assign N211 = N203 | N210;
  assign N212 = N211 | N45;
  assign N213 = N212 | N48;
  assign N214 = N213 | N49;
  assign N215 = ~N214;
  assign N216 = N150 & N42;
  assign N217 = N203 | N216;
  assign N218 = N217 | N45;
  assign N219 = N218 | N48;
  assign N220 = N219 | N49;
  assign N221 = ~N220;
  assign N222 = N56 & N176;
  assign N223 = N222 | N180;
  assign N224 = N223 | N182;
  assign N225 = N224 | N184;
  assign N226 = N225 | N186;
  assign N227 = N226 | N188;
  assign N228 = N227 | N190;
  assign N229 = ~N228;
  assign N230 = N175 & N229;
  assign N231 = dirty_lru_flopped_r & N180;
  assign N232 = N176 | N231;
  assign N233 = N232 | N182;
  assign N234 = N233 | N184;
  assign N235 = N234 | N186;
  assign N236 = N235 | N188;
  assign N237 = N236 | N190;
  assign N238 = ~N237;
  assign N239 = N175 & N238;
  assign N240 = dirty_lru_flopped_r & N180;
  assign N241 = N176 | N240;
  assign N242 = N241 | N182;
  assign N243 = N242 | N184;
  assign N244 = N243 | N186;
  assign N245 = N244 | N188;
  assign N246 = N245 | N190;
  assign N247 = ~N246;
  assign N248 = N175 & N247;
  assign N249 = N178 | N180;
  assign N250 = N249 | N182;
  assign N251 = N250 | N184;
  assign N252 = N251 | N186;
  assign N253 = N252 | N188;
  assign N254 = N253 | N190;
  assign N255 = ~N254;
  assign N256 = N175 & N255;

  always @(posedge clk_i) begin
    if(N193) begin
      size_op_r <= size_op_i[0];
    end
    if(reset_i) begin
      { state_r[2:0] } <= { 1'b0, 1'b0, 1'b0 };
    end else if(1'b1) begin
      { state_r[2:0] } <= { state_n[2:0] };
    end
    if(reset_i) begin
      dirty_lru_flopped_r <= 1'b0;
    end else if(N200) begin
      dirty_lru_flopped_r <= dirty_lru_flopped_n;
    end
    if(reset_i) begin
      tr_data_received_r <= 1'b0;
    end else if(N209) begin
      tr_data_received_r <= tr_data_received_n;
    end
    if(reset_i) begin
      cce_data_received_r <= 1'b0;
    end else if(N215) begin
      cce_data_received_r <= cce_data_received_n;
    end
    if(reset_i) begin
      set_tag_received_r <= 1'b0;
    end else if(N221) begin
      set_tag_received_r <= set_tag_received_n;
    end
    if(N230) begin
      load_not_store_r <= load_miss_i;
    end
    if(N239) begin
      { lru_way_r[2:0] } <= { lru_way_i[2:0] };
    end
    if(N248) begin
      dirty_r <= N28;
    end
    if(N256) begin
      { miss_addr_o[21:0] } <= { miss_addr_i[21:0] };
    end
  end


endmodule