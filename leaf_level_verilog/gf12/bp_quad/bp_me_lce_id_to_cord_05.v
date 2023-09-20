module bp_me_lce_id_to_cord_05
(
  lce_id_i,
  lce_cord_o,
  lce_cid_o
);

  input [5:0] lce_id_i;
  output [4:0] lce_cord_o;
  output [1:0] lce_cid_o;
  wire [4:0] lce_cord_o;
  wire [1:0] lce_cid_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  assign lce_cord_o[1] = 1'b0;
  assign lce_cid_o[1] = 1'b0;
  assign { N5, N4, N3 } = 1'b1 + lce_id_i[4:2];
  assign { lce_cord_o[4:2], lce_cord_o[0:0] } = (N0)? { N5, N4, N3, lce_id_i[1:1] } : 
                                                (N1)? { 1'b0, 1'b0, 1'b0, lce_id_i[0:0] } : 1'b0;
  assign N0 = N2;
  assign N1 = N7;
  assign lce_cid_o[0] = (N0)? lce_id_i[0] : 
                        (N1)? 1'b0 : 1'b0;
  assign N2 = ~N7;
  assign N7 = N6 | lce_id_i[3];
  assign N6 = lce_id_i[5] | lce_id_i[4];

endmodule