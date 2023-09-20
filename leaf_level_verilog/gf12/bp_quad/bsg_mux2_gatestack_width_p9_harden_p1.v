module bsg_mux2_gatestack_width_p9_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [8:0] i0;
  input [8:0] i1;
  input [8:0] i2;
  output [8:0] o;
  wire [8:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17;
  assign o[0] = (N0)? i1[0] : 
                (N9)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign o[1] = (N1)? i1[1] : 
                (N10)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign o[2] = (N2)? i1[2] : 
                (N11)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign o[3] = (N3)? i1[3] : 
                (N12)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign o[4] = (N4)? i1[4] : 
                (N13)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign o[5] = (N5)? i1[5] : 
                (N14)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign o[6] = (N6)? i1[6] : 
                (N15)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign o[7] = (N7)? i1[7] : 
                (N16)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign o[8] = (N8)? i1[8] : 
                (N17)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N9 = ~i2[0];
  assign N10 = ~i2[1];
  assign N11 = ~i2[2];
  assign N12 = ~i2[3];
  assign N13 = ~i2[4];
  assign N14 = ~i2[5];
  assign N15 = ~i2[6];
  assign N16 = ~i2[7];
  assign N17 = ~i2[8];

endmodule