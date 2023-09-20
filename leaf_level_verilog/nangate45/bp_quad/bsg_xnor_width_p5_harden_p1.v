module bsg_xnor_width_p5_harden_p1
(
  a_i,
  b_i,
  o
);

  input [4:0] a_i;
  input [4:0] b_i;
  output [4:0] o;
  wire [4:0] o;
  wire N0,N1,N2,N3,N4;
  assign o[4] = ~N0;
  assign N0 = a_i[4] ^ b_i[4];
  assign o[3] = ~N1;
  assign N1 = a_i[3] ^ b_i[3];
  assign o[2] = ~N2;
  assign N2 = a_i[2] ^ b_i[2];
  assign o[1] = ~N3;
  assign N3 = a_i[1] ^ b_i[1];
  assign o[0] = ~N4;
  assign N4 = a_i[0] ^ b_i[0];

endmodule