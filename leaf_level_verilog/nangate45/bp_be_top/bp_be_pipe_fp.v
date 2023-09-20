module bp_be_pipe_fp
(
  clk_i,
  reset_i,
  decode_i,
  rs1_i,
  rs2_i,
  exc_i,
  result_o
);

  input [42:0] decode_i;
  input [63:0] rs1_i;
  input [63:0] rs2_i;
  input [6:0] exc_i;
  output [63:0] result_o;
  input clk_i;
  input reset_i;
  wire [63:0] result_o;
  assign result_o[0] = 1'b0;
  assign result_o[1] = 1'b0;
  assign result_o[2] = 1'b0;
  assign result_o[3] = 1'b0;
  assign result_o[4] = 1'b0;
  assign result_o[5] = 1'b0;
  assign result_o[6] = 1'b0;
  assign result_o[7] = 1'b0;
  assign result_o[8] = 1'b0;
  assign result_o[9] = 1'b0;
  assign result_o[10] = 1'b0;
  assign result_o[11] = 1'b0;
  assign result_o[12] = 1'b0;
  assign result_o[13] = 1'b0;
  assign result_o[14] = 1'b0;
  assign result_o[15] = 1'b0;
  assign result_o[16] = 1'b0;
  assign result_o[17] = 1'b0;
  assign result_o[18] = 1'b0;
  assign result_o[19] = 1'b0;
  assign result_o[20] = 1'b0;
  assign result_o[21] = 1'b0;
  assign result_o[22] = 1'b0;
  assign result_o[23] = 1'b0;
  assign result_o[24] = 1'b0;
  assign result_o[25] = 1'b0;
  assign result_o[26] = 1'b0;
  assign result_o[27] = 1'b0;
  assign result_o[28] = 1'b0;
  assign result_o[29] = 1'b0;
  assign result_o[30] = 1'b0;
  assign result_o[31] = 1'b0;
  assign result_o[32] = 1'b0;
  assign result_o[33] = 1'b0;
  assign result_o[34] = 1'b0;
  assign result_o[35] = 1'b0;
  assign result_o[36] = 1'b0;
  assign result_o[37] = 1'b0;
  assign result_o[38] = 1'b0;
  assign result_o[39] = 1'b0;
  assign result_o[40] = 1'b0;
  assign result_o[41] = 1'b0;
  assign result_o[42] = 1'b0;
  assign result_o[43] = 1'b0;
  assign result_o[44] = 1'b0;
  assign result_o[45] = 1'b0;
  assign result_o[46] = 1'b0;
  assign result_o[47] = 1'b0;
  assign result_o[48] = 1'b0;
  assign result_o[49] = 1'b0;
  assign result_o[50] = 1'b0;
  assign result_o[51] = 1'b0;
  assign result_o[52] = 1'b0;
  assign result_o[53] = 1'b0;
  assign result_o[54] = 1'b0;
  assign result_o[55] = 1'b0;
  assign result_o[56] = 1'b0;
  assign result_o[57] = 1'b0;
  assign result_o[58] = 1'b0;
  assign result_o[59] = 1'b0;
  assign result_o[60] = 1'b0;
  assign result_o[61] = 1'b0;
  assign result_o[62] = 1'b0;
  assign result_o[63] = 1'b0;

endmodule