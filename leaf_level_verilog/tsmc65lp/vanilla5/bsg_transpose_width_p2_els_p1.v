module bsg_transpose_width_p2_els_p1
(
  i,
  o
);

  input [1:0] i;
  output [1:0] o;
  wire [1:0] o;
  assign o[1] = i[1];
  assign o[0] = i[0];

endmodule