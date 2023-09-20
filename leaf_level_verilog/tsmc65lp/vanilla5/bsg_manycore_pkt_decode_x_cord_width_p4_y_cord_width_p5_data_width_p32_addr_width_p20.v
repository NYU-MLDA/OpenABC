module bsg_manycore_pkt_decode_x_cord_width_p4_y_cord_width_p5_data_width_p32_addr_width_p20
(
  v_i,
  data_i,
  pkt_freeze_o,
  pkt_unfreeze_o,
  pkt_arb_cfg_o,
  pkt_unknown_o,
  pkt_remote_store_o,
  data_o,
  addr_o,
  mask_o
);

  input [75:0] data_i;
  output [31:0] data_o;
  output [19:0] addr_o;
  output [3:0] mask_o;
  input v_i;
  output pkt_freeze_o;
  output pkt_unfreeze_o;
  output pkt_arb_cfg_o;
  output pkt_unknown_o;
  output pkt_remote_store_o;
  wire [31:0] data_o;
  wire [19:0] addr_o;
  wire [3:0] mask_o;
  wire pkt_freeze_o,pkt_unfreeze_o,pkt_arb_cfg_o,pkt_unknown_o,pkt_remote_store_o,N0,
  N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75;
  assign addr_o[19] = data_i[75];
  assign addr_o[18] = data_i[74];
  assign addr_o[17] = data_i[73];
  assign addr_o[16] = data_i[72];
  assign addr_o[15] = data_i[71];
  assign addr_o[14] = data_i[70];
  assign addr_o[13] = data_i[69];
  assign addr_o[12] = data_i[68];
  assign addr_o[11] = data_i[67];
  assign addr_o[10] = data_i[66];
  assign addr_o[9] = data_i[65];
  assign addr_o[8] = data_i[64];
  assign addr_o[7] = data_i[63];
  assign addr_o[6] = data_i[62];
  assign addr_o[5] = data_i[61];
  assign addr_o[4] = data_i[60];
  assign addr_o[3] = data_i[59];
  assign addr_o[2] = data_i[58];
  assign addr_o[1] = data_i[57];
  assign addr_o[0] = data_i[56];
  assign data_o[31] = data_i[49];
  assign data_o[30] = data_i[48];
  assign data_o[29] = data_i[47];
  assign data_o[28] = data_i[46];
  assign data_o[27] = data_i[45];
  assign data_o[26] = data_i[44];
  assign data_o[25] = data_i[43];
  assign data_o[24] = data_i[42];
  assign data_o[23] = data_i[41];
  assign data_o[22] = data_i[40];
  assign data_o[21] = data_i[39];
  assign data_o[20] = data_i[38];
  assign data_o[19] = data_i[37];
  assign data_o[18] = data_i[36];
  assign data_o[17] = data_i[35];
  assign data_o[16] = data_i[34];
  assign data_o[15] = data_i[33];
  assign data_o[14] = data_i[32];
  assign data_o[13] = data_i[31];
  assign data_o[12] = data_i[30];
  assign data_o[11] = data_i[29];
  assign data_o[10] = data_i[28];
  assign data_o[9] = data_i[27];
  assign data_o[8] = data_i[26];
  assign data_o[7] = data_i[25];
  assign data_o[6] = data_i[24];
  assign data_o[5] = data_i[23];
  assign data_o[4] = data_i[22];
  assign data_o[3] = data_i[21];
  assign data_o[2] = data_i[20];
  assign data_o[1] = data_i[19];
  assign data_o[0] = data_i[18];
  assign N11 = data_i[55] | N10;
  assign N14 = N13 | data_i[54];
  assign N16 = data_i[55] & data_i[54];
  assign N17 = N13 & N10;
  assign N36 = ~data_i[56];
  assign N37 = data_i[74] | data_i[75];
  assign N38 = data_i[73] | N37;
  assign N39 = data_i[72] | N38;
  assign N40 = data_i[71] | N39;
  assign N41 = data_i[70] | N40;
  assign N42 = data_i[69] | N41;
  assign N43 = data_i[68] | N42;
  assign N44 = data_i[67] | N43;
  assign N45 = data_i[66] | N44;
  assign N46 = data_i[65] | N45;
  assign N47 = data_i[64] | N46;
  assign N48 = data_i[63] | N47;
  assign N49 = data_i[62] | N48;
  assign N50 = data_i[61] | N49;
  assign N51 = data_i[60] | N50;
  assign N52 = data_i[59] | N51;
  assign N53 = data_i[58] | N52;
  assign N54 = data_i[57] | N53;
  assign N55 = N36 | N54;
  assign N56 = ~N55;
  assign N23 = (N0)? data_i[18] : 
               (N1)? 1'b0 : 
               (N2)? 1'b0 : 1'b0;
  assign N0 = N19;
  assign N1 = N75;
  assign N2 = 1'b0;
  assign N24 = (N0)? N22 : 
               (N1)? 1'b0 : 
               (N2)? 1'b0 : 1'b0;
  assign N25 = (N0)? 1'b0 : 
               (N3)? 1'b1 : 
               (N21)? 1'b0 : 1'b0;
  assign N3 = N56;
  assign N26 = (N0)? 1'b0 : 
               (N3)? 1'b0 : 
               (N21)? 1'b1 : 1'b0;
  assign N27 = (N4)? 1'b1 : 
               (N5)? 1'b0 : 
               (N6)? 1'b0 : 1'b0;
  assign N4 = N12;
  assign N5 = N15;
  assign N6 = N18;
  assign { N31, N30, N29, N28 } = (N4)? data_i[53:50] : 
                                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N6)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N32 = (N4)? 1'b0 : 
               (N5)? N26 : 
               (N6)? 1'b1 : 1'b0;
  assign N33 = (N4)? 1'b0 : 
               (N5)? N23 : 
               (N6)? 1'b0 : 1'b0;
  assign N34 = (N4)? 1'b0 : 
               (N5)? N24 : 
               (N6)? 1'b0 : 1'b0;
  assign N35 = (N4)? 1'b0 : 
               (N5)? N25 : 
               (N6)? 1'b0 : 1'b0;
  assign pkt_freeze_o = (N7)? N33 : 
                        (N8)? 1'b0 : 1'b0;
  assign N7 = v_i;
  assign N8 = N9;
  assign pkt_unfreeze_o = (N7)? N34 : 
                          (N8)? 1'b0 : 1'b0;
  assign pkt_arb_cfg_o = (N7)? N35 : 
                         (N8)? 1'b0 : 1'b0;
  assign pkt_remote_store_o = (N7)? N27 : 
                              (N8)? 1'b0 : 1'b0;
  assign mask_o = (N7)? { N31, N30, N29, N28 } : 
                  (N8)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign pkt_unknown_o = (N7)? N32 : 
                         (N8)? 1'b0 : 1'b0;
  assign N9 = ~v_i;
  assign N10 = ~data_i[54];
  assign N12 = ~N11;
  assign N13 = ~data_i[55];
  assign N15 = ~N14;
  assign N18 = N16 | N17;
  assign N19 = ~N75;
  assign N75 = N74 | data_i[56];
  assign N74 = N73 | data_i[57];
  assign N73 = N72 | data_i[58];
  assign N72 = N71 | data_i[59];
  assign N71 = N70 | data_i[60];
  assign N70 = N69 | data_i[61];
  assign N69 = N68 | data_i[62];
  assign N68 = N67 | data_i[63];
  assign N67 = N66 | data_i[64];
  assign N66 = N65 | data_i[65];
  assign N65 = N64 | data_i[66];
  assign N64 = N63 | data_i[67];
  assign N63 = N62 | data_i[68];
  assign N62 = N61 | data_i[69];
  assign N61 = N60 | data_i[70];
  assign N60 = N59 | data_i[71];
  assign N59 = N58 | data_i[72];
  assign N58 = N57 | data_i[73];
  assign N57 = data_i[75] | data_i[74];
  assign N20 = N56 | N19;
  assign N21 = ~N20;
  assign N22 = ~data_i[18];

endmodule