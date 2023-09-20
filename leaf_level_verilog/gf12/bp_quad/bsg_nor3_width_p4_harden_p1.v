module bsg_nor3_width_p4_harden_p1
(
  a_i,
  b_i,
  c_i,
  o
);

  input [3:0] a_i;
  input [3:0] b_i;
  input [3:0] c_i;
  output [3:0] o;
  wire [3:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  assign o[3] = ~N1;
  assign N1 = N0 | c_i[3];
  assign N0 = a_i[3] | b_i[3];
  assign o[2] = ~N3;
  assign N3 = N2 | c_i[2];
  assign N2 = a_i[2] | b_i[2];
  assign o[1] = ~N5;
  assign N5 = N4 | c_i[1];
  assign N4 = a_i[1] | b_i[1];
  assign o[0] = ~N7;
  assign N7 = N6 | c_i[0];
  assign N6 = a_i[0] | b_i[0];

endmodule