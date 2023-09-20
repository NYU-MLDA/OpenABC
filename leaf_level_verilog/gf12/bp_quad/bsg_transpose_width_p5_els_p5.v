module bsg_transpose_width_p5_els_p5
(
  i,
  o
);

  input [24:0] i;
  output [24:0] o;
  wire [24:0] o;
  assign o[24] = i[24];
  assign o[23] = i[19];
  assign o[22] = i[14];
  assign o[21] = i[9];
  assign o[20] = i[4];
  assign o[19] = i[23];
  assign o[18] = i[18];
  assign o[17] = i[13];
  assign o[16] = i[8];
  assign o[15] = i[3];
  assign o[14] = i[22];
  assign o[13] = i[17];
  assign o[12] = i[12];
  assign o[11] = i[7];
  assign o[10] = i[2];
  assign o[9] = i[21];
  assign o[8] = i[16];
  assign o[7] = i[11];
  assign o[6] = i[6];
  assign o[5] = i[1];
  assign o[4] = i[20];
  assign o[3] = i[15];
  assign o[2] = i[10];
  assign o[1] = i[5];
  assign o[0] = i[0];

endmodule