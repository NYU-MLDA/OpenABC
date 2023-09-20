module bsg_muxi2_gatestack_width_p5_harden_p1
(
  i0,
  i1,
  i2,
  o
);

  input [4:0] i0;
  input [4:0] i1;
  input [4:0] i2;
  output [4:0] o;
  wire [4:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  assign N6 = (N0)? i1[0] : 
              (N5)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N8 = (N1)? i1[1] : 
              (N7)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N10 = (N2)? i1[2] : 
               (N9)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N12 = (N3)? i1[3] : 
               (N11)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N14 = (N4)? i1[4] : 
               (N13)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N5 = ~i2[0];
  assign o[0] = ~N6;
  assign N7 = ~i2[1];
  assign o[1] = ~N8;
  assign N9 = ~i2[2];
  assign o[2] = ~N10;
  assign N11 = ~i2[3];
  assign o[3] = ~N12;
  assign N13 = ~i2[4];
  assign o[4] = ~N14;

endmodule