module bp_be_dcache_lru_encode_ways_p8
(
  lru_i,
  way_id_o
);

  input [6:0] lru_i;
  output [2:0] way_id_o;
  wire [2:0] way_id_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30;
  assign N11 = N8 & N9;
  assign N12 = N11 & N10;
  assign N13 = lru_i[3] & N9;
  assign N14 = N13 & N10;
  assign N16 = N15 & lru_i[1];
  assign N17 = N16 & N10;
  assign N18 = lru_i[4] & lru_i[1];
  assign N19 = N18 & N10;
  assign N22 = N20 & N21;
  assign N23 = N22 & lru_i[0];
  assign N24 = lru_i[5] & N21;
  assign N25 = N24 & lru_i[0];
  assign N27 = N26 & lru_i[2];
  assign N28 = N27 & lru_i[0];
  assign N29 = lru_i[6] & lru_i[2];
  assign N30 = N29 & lru_i[0];
  assign way_id_o = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                    (N1)? { 1'b0, 1'b0, 1'b1 } : 
                    (N2)? { 1'b0, 1'b1, 1'b0 } : 
                    (N3)? { 1'b0, 1'b1, 1'b1 } : 
                    (N4)? { 1'b1, 1'b0, 1'b0 } : 
                    (N5)? { 1'b1, 1'b0, 1'b1 } : 
                    (N6)? { 1'b1, 1'b1, 1'b0 } : 
                    (N7)? { 1'b1, 1'b1, 1'b1 } : 1'b0;
  assign N0 = N12;
  assign N1 = N14;
  assign N2 = N17;
  assign N3 = N19;
  assign N4 = N23;
  assign N5 = N25;
  assign N6 = N28;
  assign N7 = N30;
  assign N8 = ~lru_i[3];
  assign N9 = ~lru_i[1];
  assign N10 = ~lru_i[0];
  assign N15 = ~lru_i[4];
  assign N20 = ~lru_i[5];
  assign N21 = ~lru_i[2];
  assign N26 = ~lru_i[6];

endmodule