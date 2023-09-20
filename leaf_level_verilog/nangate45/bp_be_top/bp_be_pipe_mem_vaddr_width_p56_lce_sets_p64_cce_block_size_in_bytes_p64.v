module bp_be_pipe_mem_vaddr_width_p56_lce_sets_p64_cce_block_size_in_bytes_p64
(
  clk_i,
  reset_i,
  decode_i,
  rs1_i,
  rs2_i,
  imm_i,
  exc_i,
  mmu_cmd_o,
  mmu_cmd_v_o,
  mmu_cmd_ready_i,
  mmu_resp_i,
  mmu_resp_v_i,
  mmu_resp_ready_o,
  result_o,
  cache_miss_o
);

  input [42:0] decode_i;
  input [63:0] rs1_i;
  input [63:0] rs2_i;
  input [63:0] imm_i;
  input [6:0] exc_i;
  output [123:0] mmu_cmd_o;
  input [70:0] mmu_resp_i;
  output [63:0] result_o;
  input clk_i;
  input reset_i;
  input mmu_cmd_ready_i;
  input mmu_resp_v_i;
  output mmu_cmd_v_o;
  output mmu_resp_ready_o;
  output cache_miss_o;
  wire [123:0] mmu_cmd_o;
  wire [63:0] result_o;
  wire mmu_cmd_v_o,mmu_resp_ready_o,cache_miss_o,N0,N1,N2,N3,N4,N5,N6,N7;
  assign mmu_resp_ready_o = 1'b1;
  assign mmu_cmd_o[123] = decode_i[22];
  assign mmu_cmd_o[122] = decode_i[21];
  assign mmu_cmd_o[121] = decode_i[20];
  assign mmu_cmd_o[120] = decode_i[19];
  assign mmu_cmd_o[63] = rs2_i[63];
  assign mmu_cmd_o[62] = rs2_i[62];
  assign mmu_cmd_o[61] = rs2_i[61];
  assign mmu_cmd_o[60] = rs2_i[60];
  assign mmu_cmd_o[59] = rs2_i[59];
  assign mmu_cmd_o[58] = rs2_i[58];
  assign mmu_cmd_o[57] = rs2_i[57];
  assign mmu_cmd_o[56] = rs2_i[56];
  assign mmu_cmd_o[55] = rs2_i[55];
  assign mmu_cmd_o[54] = rs2_i[54];
  assign mmu_cmd_o[53] = rs2_i[53];
  assign mmu_cmd_o[52] = rs2_i[52];
  assign mmu_cmd_o[51] = rs2_i[51];
  assign mmu_cmd_o[50] = rs2_i[50];
  assign mmu_cmd_o[49] = rs2_i[49];
  assign mmu_cmd_o[48] = rs2_i[48];
  assign mmu_cmd_o[47] = rs2_i[47];
  assign mmu_cmd_o[46] = rs2_i[46];
  assign mmu_cmd_o[45] = rs2_i[45];
  assign mmu_cmd_o[44] = rs2_i[44];
  assign mmu_cmd_o[43] = rs2_i[43];
  assign mmu_cmd_o[42] = rs2_i[42];
  assign mmu_cmd_o[41] = rs2_i[41];
  assign mmu_cmd_o[40] = rs2_i[40];
  assign mmu_cmd_o[39] = rs2_i[39];
  assign mmu_cmd_o[38] = rs2_i[38];
  assign mmu_cmd_o[37] = rs2_i[37];
  assign mmu_cmd_o[36] = rs2_i[36];
  assign mmu_cmd_o[35] = rs2_i[35];
  assign mmu_cmd_o[34] = rs2_i[34];
  assign mmu_cmd_o[33] = rs2_i[33];
  assign mmu_cmd_o[32] = rs2_i[32];
  assign mmu_cmd_o[31] = rs2_i[31];
  assign mmu_cmd_o[30] = rs2_i[30];
  assign mmu_cmd_o[29] = rs2_i[29];
  assign mmu_cmd_o[28] = rs2_i[28];
  assign mmu_cmd_o[27] = rs2_i[27];
  assign mmu_cmd_o[26] = rs2_i[26];
  assign mmu_cmd_o[25] = rs2_i[25];
  assign mmu_cmd_o[24] = rs2_i[24];
  assign mmu_cmd_o[23] = rs2_i[23];
  assign mmu_cmd_o[22] = rs2_i[22];
  assign mmu_cmd_o[21] = rs2_i[21];
  assign mmu_cmd_o[20] = rs2_i[20];
  assign mmu_cmd_o[19] = rs2_i[19];
  assign mmu_cmd_o[18] = rs2_i[18];
  assign mmu_cmd_o[17] = rs2_i[17];
  assign mmu_cmd_o[16] = rs2_i[16];
  assign mmu_cmd_o[15] = rs2_i[15];
  assign mmu_cmd_o[14] = rs2_i[14];
  assign mmu_cmd_o[13] = rs2_i[13];
  assign mmu_cmd_o[12] = rs2_i[12];
  assign mmu_cmd_o[11] = rs2_i[11];
  assign mmu_cmd_o[10] = rs2_i[10];
  assign mmu_cmd_o[9] = rs2_i[9];
  assign mmu_cmd_o[8] = rs2_i[8];
  assign mmu_cmd_o[7] = rs2_i[7];
  assign mmu_cmd_o[6] = rs2_i[6];
  assign mmu_cmd_o[5] = rs2_i[5];
  assign mmu_cmd_o[4] = rs2_i[4];
  assign mmu_cmd_o[3] = rs2_i[3];
  assign mmu_cmd_o[2] = rs2_i[2];
  assign mmu_cmd_o[1] = rs2_i[1];
  assign mmu_cmd_o[0] = rs2_i[0];
  assign result_o[63] = mmu_resp_i[70];
  assign result_o[62] = mmu_resp_i[69];
  assign result_o[61] = mmu_resp_i[68];
  assign result_o[60] = mmu_resp_i[67];
  assign result_o[59] = mmu_resp_i[66];
  assign result_o[58] = mmu_resp_i[65];
  assign result_o[57] = mmu_resp_i[64];
  assign result_o[56] = mmu_resp_i[63];
  assign result_o[55] = mmu_resp_i[62];
  assign result_o[54] = mmu_resp_i[61];
  assign result_o[53] = mmu_resp_i[60];
  assign result_o[52] = mmu_resp_i[59];
  assign result_o[51] = mmu_resp_i[58];
  assign result_o[50] = mmu_resp_i[57];
  assign result_o[49] = mmu_resp_i[56];
  assign result_o[48] = mmu_resp_i[55];
  assign result_o[47] = mmu_resp_i[54];
  assign result_o[46] = mmu_resp_i[53];
  assign result_o[45] = mmu_resp_i[52];
  assign result_o[44] = mmu_resp_i[51];
  assign result_o[43] = mmu_resp_i[50];
  assign result_o[42] = mmu_resp_i[49];
  assign result_o[41] = mmu_resp_i[48];
  assign result_o[40] = mmu_resp_i[47];
  assign result_o[39] = mmu_resp_i[46];
  assign result_o[38] = mmu_resp_i[45];
  assign result_o[37] = mmu_resp_i[44];
  assign result_o[36] = mmu_resp_i[43];
  assign result_o[35] = mmu_resp_i[42];
  assign result_o[34] = mmu_resp_i[41];
  assign result_o[33] = mmu_resp_i[40];
  assign result_o[32] = mmu_resp_i[39];
  assign result_o[31] = mmu_resp_i[38];
  assign result_o[30] = mmu_resp_i[37];
  assign result_o[29] = mmu_resp_i[36];
  assign result_o[28] = mmu_resp_i[35];
  assign result_o[27] = mmu_resp_i[34];
  assign result_o[26] = mmu_resp_i[33];
  assign result_o[25] = mmu_resp_i[32];
  assign result_o[24] = mmu_resp_i[31];
  assign result_o[23] = mmu_resp_i[30];
  assign result_o[22] = mmu_resp_i[29];
  assign result_o[21] = mmu_resp_i[28];
  assign result_o[20] = mmu_resp_i[27];
  assign result_o[19] = mmu_resp_i[26];
  assign result_o[18] = mmu_resp_i[25];
  assign result_o[17] = mmu_resp_i[24];
  assign result_o[16] = mmu_resp_i[23];
  assign result_o[15] = mmu_resp_i[22];
  assign result_o[14] = mmu_resp_i[21];
  assign result_o[13] = mmu_resp_i[20];
  assign result_o[12] = mmu_resp_i[19];
  assign result_o[11] = mmu_resp_i[18];
  assign result_o[10] = mmu_resp_i[17];
  assign result_o[9] = mmu_resp_i[16];
  assign result_o[8] = mmu_resp_i[15];
  assign result_o[7] = mmu_resp_i[14];
  assign result_o[6] = mmu_resp_i[13];
  assign result_o[5] = mmu_resp_i[12];
  assign result_o[4] = mmu_resp_i[11];
  assign result_o[3] = mmu_resp_i[10];
  assign result_o[2] = mmu_resp_i[9];
  assign result_o[1] = mmu_resp_i[8];
  assign result_o[0] = mmu_resp_i[7];
  assign cache_miss_o = mmu_resp_i[0];
  assign mmu_cmd_o[119:64] = rs1_i[55:0] + imm_i[55:0];
  assign mmu_cmd_v_o = N0 & N7;
  assign N0 = decode_i[29] | decode_i[30];
  assign N7 = ~N6;
  assign N6 = N5 | exc_i[0];
  assign N5 = N4 | exc_i[1];
  assign N4 = N3 | exc_i[2];
  assign N3 = N2 | exc_i[3];
  assign N2 = N1 | exc_i[4];
  assign N1 = exc_i[6] | exc_i[5];

endmodule