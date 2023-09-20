module bsg_concentrate_static_1d
(
  i,
  o
);

  input [4:0] i;
  output [3:0] o;
  wire [3:0] o;
  assign o[3] = i[4];
  assign o[2] = i[3];
  assign o[1] = i[2];
  assign o[0] = i[0];

endmodule