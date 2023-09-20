module bp_me_cce_id_to_cord_05
(
  cce_id_i,
  cce_cord_o,
  cce_cid_o
);

  input [3:0] cce_id_i;
  output [4:0] cce_cord_o;
  output [1:0] cce_cid_o;
  wire [4:0] cce_cord_o;
  wire [1:0] cce_cid_o;
  wire N0,N1,cce_cord_o_0_,N2,N3,N4,N5,N6;
  assign cce_cord_o[1] = 1'b0;
  assign cce_cid_o[0] = 1'b0;
  assign cce_cid_o[1] = 1'b0;
  assign cce_cord_o_0_ = cce_id_i[0];
  assign cce_cord_o[0] = cce_cord_o_0_;
  assign { N5, N4, N3 } = 1'b1 + cce_id_i[3:1];
  assign cce_cord_o[4:2] = (N0)? { N5, N4, N3 } : 
                           (N1)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N2;
  assign N1 = N6;
  assign N2 = ~N6;
  assign N6 = cce_id_i[3] | cce_id_i[2];

endmodule