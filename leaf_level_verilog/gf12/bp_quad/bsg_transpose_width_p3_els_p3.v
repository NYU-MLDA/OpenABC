module bsg_transpose_width_p3_els_p3
(
  i,
  o
);

  input [8:0] i;
  output [8:0] o;
  wire [8:0] o;
  assign o[8] = i[8];
  assign o[7] = i[5];
  assign o[6] = i[2];
  assign o[5] = i[7];
  assign o[4] = i[4];
  assign o[3] = i[1];
  assign o[2] = i[6];
  assign o[1] = i[3];
  assign o[0] = i[0];

endmodule