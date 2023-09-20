module bp_be_pipe_mul
(
  clk_i,
  reset_i,
  kill_ex1_i,
  kill_ex2_i,
  decode_i,
  rs1_i,
  rs2_i,
  data_o
);

  input [50:0] decode_i;
  input [63:0] rs1_i;
  input [63:0] rs2_i;
  output [63:0] data_o;
  input clk_i;
  input reset_i;
  input kill_ex1_i;
  input kill_ex2_i;
  wire [63:0] data_o;
  assign data_o[0] = 1'b0;
  assign data_o[1] = 1'b0;
  assign data_o[2] = 1'b0;
  assign data_o[3] = 1'b0;
  assign data_o[4] = 1'b0;
  assign data_o[5] = 1'b0;
  assign data_o[6] = 1'b0;
  assign data_o[7] = 1'b0;
  assign data_o[8] = 1'b0;
  assign data_o[9] = 1'b0;
  assign data_o[10] = 1'b0;
  assign data_o[11] = 1'b0;
  assign data_o[12] = 1'b0;
  assign data_o[13] = 1'b0;
  assign data_o[14] = 1'b0;
  assign data_o[15] = 1'b0;
  assign data_o[16] = 1'b0;
  assign data_o[17] = 1'b0;
  assign data_o[18] = 1'b0;
  assign data_o[19] = 1'b0;
  assign data_o[20] = 1'b0;
  assign data_o[21] = 1'b0;
  assign data_o[22] = 1'b0;
  assign data_o[23] = 1'b0;
  assign data_o[24] = 1'b0;
  assign data_o[25] = 1'b0;
  assign data_o[26] = 1'b0;
  assign data_o[27] = 1'b0;
  assign data_o[28] = 1'b0;
  assign data_o[29] = 1'b0;
  assign data_o[30] = 1'b0;
  assign data_o[31] = 1'b0;
  assign data_o[32] = 1'b0;
  assign data_o[33] = 1'b0;
  assign data_o[34] = 1'b0;
  assign data_o[35] = 1'b0;
  assign data_o[36] = 1'b0;
  assign data_o[37] = 1'b0;
  assign data_o[38] = 1'b0;
  assign data_o[39] = 1'b0;
  assign data_o[40] = 1'b0;
  assign data_o[41] = 1'b0;
  assign data_o[42] = 1'b0;
  assign data_o[43] = 1'b0;
  assign data_o[44] = 1'b0;
  assign data_o[45] = 1'b0;
  assign data_o[46] = 1'b0;
  assign data_o[47] = 1'b0;
  assign data_o[48] = 1'b0;
  assign data_o[49] = 1'b0;
  assign data_o[50] = 1'b0;
  assign data_o[51] = 1'b0;
  assign data_o[52] = 1'b0;
  assign data_o[53] = 1'b0;
  assign data_o[54] = 1'b0;
  assign data_o[55] = 1'b0;
  assign data_o[56] = 1'b0;
  assign data_o[57] = 1'b0;
  assign data_o[58] = 1'b0;
  assign data_o[59] = 1'b0;
  assign data_o[60] = 1'b0;
  assign data_o[61] = 1'b0;
  assign data_o[62] = 1'b0;
  assign data_o[63] = 1'b0;

endmodule