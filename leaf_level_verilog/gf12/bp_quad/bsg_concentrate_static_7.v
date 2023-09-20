module bsg_concentrate_static_7
(
  i,
  o
);

  input [2:0] i;
  output [2:0] o;
  wire [2:0] o;
  assign o[2] = i[2];
  assign o[1] = i[1];
  assign o[0] = i[0];

endmodule