module bsg_unconcentrate_static_1f
(
  i,
  o
);

  input [4:0] i;
  output [4:0] o;
  wire [4:0] o;
  assign o[4] = i[4];
  assign o[3] = i[3];
  assign o[2] = i[2];
  assign o[1] = i[1];
  assign o[0] = i[0];

endmodule