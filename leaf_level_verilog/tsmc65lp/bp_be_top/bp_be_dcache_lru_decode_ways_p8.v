module bp_be_dcache_lru_decode_ways_p8
(
  way_id_i,
  data_o,
  mask_o
);

  input [2:0] way_id_i;
  output [6:0] data_o;
  output [6:0] mask_o;
  wire [6:0] data_o,mask_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  assign mask_o[0] = 1'b1;
  assign N11 = N8 & N9;
  assign N12 = N11 & N10;
  assign N13 = way_id_i[2] | way_id_i[1];
  assign N14 = N13 | N10;
  assign N16 = way_id_i[2] | N9;
  assign N17 = N16 | way_id_i[0];
  assign N19 = N16 | N10;
  assign N21 = N8 | way_id_i[1];
  assign N22 = N21 | way_id_i[0];
  assign N24 = N21 | N10;
  assign N26 = N8 | N9;
  assign N27 = N26 | way_id_i[0];
  assign N29 = way_id_i[2] & way_id_i[1];
  assign N30 = N29 & way_id_i[0];
  assign data_o = (N0)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                  (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                  (N2)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                  (N3)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                  (N4)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                  (N6)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                  (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N12;
  assign N1 = N15;
  assign N2 = N18;
  assign N3 = N20;
  assign N4 = N23;
  assign N5 = N25;
  assign N6 = N28;
  assign N7 = N30;
  assign mask_o[6:1] = (N0)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                       (N1)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                       (N2)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                       (N3)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                       (N4)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                       (N5)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                       (N6)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                       (N7)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 1'b0;
  assign N8 = ~way_id_i[2];
  assign N9 = ~way_id_i[1];
  assign N10 = ~way_id_i[0];
  assign N15 = ~N14;
  assign N18 = ~N17;
  assign N20 = ~N19;
  assign N23 = ~N22;
  assign N25 = ~N24;
  assign N28 = ~N27;

endmodule