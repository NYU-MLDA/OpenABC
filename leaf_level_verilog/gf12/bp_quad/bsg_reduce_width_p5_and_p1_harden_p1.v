module bsg_reduce_width_p5_and_p1_harden_p1
(
  i,
  o
);

  input [4:0] i;
  output o;
  wire o,N0,N1,N2;
  assign o = N2 & i[0];
  assign N2 = N1 & i[1];
  assign N1 = N0 & i[2];
  assign N0 = i[4] & i[3];

endmodule