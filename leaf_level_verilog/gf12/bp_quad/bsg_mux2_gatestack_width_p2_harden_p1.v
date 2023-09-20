module bsg_mux2_gatestack_width_p2_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [1:0] i0;
  input [1:0] i1;
  input [1:0] i2;
  output [1:0] o;
  wire [1:0] o;
  wire N0,N1,N2,N3;
  assign o[0] = (N0)? i1[0] : 
                (N2)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign o[1] = (N1)? i1[1] : 
                (N3)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N2 = ~i2[0];
  assign N3 = ~i2[1];

endmodule