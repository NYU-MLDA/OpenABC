module Arbiter_11
(
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr,
  io_in_0_bits_tag,
  io_in_0_bits_cmd,
  io_in_0_bits_typ,
  io_in_0_bits_data,
  io_in_0_bits_nack,
  io_in_0_bits_replay,
  io_in_0_bits_has_data,
  io_in_0_bits_data_word_bypass,
  io_in_0_bits_store_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr,
  io_out_bits_tag,
  io_out_bits_cmd,
  io_out_bits_typ,
  io_out_bits_data,
  io_out_bits_nack,
  io_out_bits_replay,
  io_out_bits_has_data,
  io_out_bits_data_word_bypass,
  io_out_bits_store_data,
  io_chosen
);

  input [39:0] io_in_0_bits_addr;
  input [9:0] io_in_0_bits_tag;
  input [4:0] io_in_0_bits_cmd;
  input [2:0] io_in_0_bits_typ;
  input [63:0] io_in_0_bits_data;
  input [63:0] io_in_0_bits_data_word_bypass;
  input [63:0] io_in_0_bits_store_data;
  output [39:0] io_out_bits_addr;
  output [9:0] io_out_bits_tag;
  output [4:0] io_out_bits_cmd;
  output [2:0] io_out_bits_typ;
  output [63:0] io_out_bits_data;
  output [63:0] io_out_bits_data_word_bypass;
  output [63:0] io_out_bits_store_data;
  input io_in_0_valid;
  input io_in_0_bits_nack;
  input io_in_0_bits_replay;
  input io_in_0_bits_has_data;
  input io_out_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_nack;
  output io_out_bits_replay;
  output io_out_bits_has_data;
  output io_chosen;
  wire [39:0] io_out_bits_addr;
  wire [9:0] io_out_bits_tag;
  wire [4:0] io_out_bits_cmd;
  wire [2:0] io_out_bits_typ;
  wire [63:0] io_out_bits_data,io_out_bits_data_word_bypass,io_out_bits_store_data;
  wire io_in_0_ready,io_out_valid,io_out_bits_nack,io_out_bits_replay,
  io_out_bits_has_data,io_chosen,io_out_ready,io_in_0_valid,io_in_0_bits_nack,io_in_0_bits_replay,
  io_in_0_bits_has_data;
  assign io_chosen = 1'b0;
  assign io_in_0_ready = io_out_ready;
  assign io_out_valid = io_in_0_valid;
  assign io_out_bits_addr[39] = io_in_0_bits_addr[39];
  assign io_out_bits_addr[38] = io_in_0_bits_addr[38];
  assign io_out_bits_addr[37] = io_in_0_bits_addr[37];
  assign io_out_bits_addr[36] = io_in_0_bits_addr[36];
  assign io_out_bits_addr[35] = io_in_0_bits_addr[35];
  assign io_out_bits_addr[34] = io_in_0_bits_addr[34];
  assign io_out_bits_addr[33] = io_in_0_bits_addr[33];
  assign io_out_bits_addr[32] = io_in_0_bits_addr[32];
  assign io_out_bits_addr[31] = io_in_0_bits_addr[31];
  assign io_out_bits_addr[30] = io_in_0_bits_addr[30];
  assign io_out_bits_addr[29] = io_in_0_bits_addr[29];
  assign io_out_bits_addr[28] = io_in_0_bits_addr[28];
  assign io_out_bits_addr[27] = io_in_0_bits_addr[27];
  assign io_out_bits_addr[26] = io_in_0_bits_addr[26];
  assign io_out_bits_addr[25] = io_in_0_bits_addr[25];
  assign io_out_bits_addr[24] = io_in_0_bits_addr[24];
  assign io_out_bits_addr[23] = io_in_0_bits_addr[23];
  assign io_out_bits_addr[22] = io_in_0_bits_addr[22];
  assign io_out_bits_addr[21] = io_in_0_bits_addr[21];
  assign io_out_bits_addr[20] = io_in_0_bits_addr[20];
  assign io_out_bits_addr[19] = io_in_0_bits_addr[19];
  assign io_out_bits_addr[18] = io_in_0_bits_addr[18];
  assign io_out_bits_addr[17] = io_in_0_bits_addr[17];
  assign io_out_bits_addr[16] = io_in_0_bits_addr[16];
  assign io_out_bits_addr[15] = io_in_0_bits_addr[15];
  assign io_out_bits_addr[14] = io_in_0_bits_addr[14];
  assign io_out_bits_addr[13] = io_in_0_bits_addr[13];
  assign io_out_bits_addr[12] = io_in_0_bits_addr[12];
  assign io_out_bits_addr[11] = io_in_0_bits_addr[11];
  assign io_out_bits_addr[10] = io_in_0_bits_addr[10];
  assign io_out_bits_addr[9] = io_in_0_bits_addr[9];
  assign io_out_bits_addr[8] = io_in_0_bits_addr[8];
  assign io_out_bits_addr[7] = io_in_0_bits_addr[7];
  assign io_out_bits_addr[6] = io_in_0_bits_addr[6];
  assign io_out_bits_addr[5] = io_in_0_bits_addr[5];
  assign io_out_bits_addr[4] = io_in_0_bits_addr[4];
  assign io_out_bits_addr[3] = io_in_0_bits_addr[3];
  assign io_out_bits_addr[2] = io_in_0_bits_addr[2];
  assign io_out_bits_addr[1] = io_in_0_bits_addr[1];
  assign io_out_bits_addr[0] = io_in_0_bits_addr[0];
  assign io_out_bits_tag[9] = io_in_0_bits_tag[9];
  assign io_out_bits_tag[8] = io_in_0_bits_tag[8];
  assign io_out_bits_tag[7] = io_in_0_bits_tag[7];
  assign io_out_bits_tag[6] = io_in_0_bits_tag[6];
  assign io_out_bits_tag[5] = io_in_0_bits_tag[5];
  assign io_out_bits_tag[4] = io_in_0_bits_tag[4];
  assign io_out_bits_tag[3] = io_in_0_bits_tag[3];
  assign io_out_bits_tag[2] = io_in_0_bits_tag[2];
  assign io_out_bits_tag[1] = io_in_0_bits_tag[1];
  assign io_out_bits_tag[0] = io_in_0_bits_tag[0];
  assign io_out_bits_cmd[4] = io_in_0_bits_cmd[4];
  assign io_out_bits_cmd[3] = io_in_0_bits_cmd[3];
  assign io_out_bits_cmd[2] = io_in_0_bits_cmd[2];
  assign io_out_bits_cmd[1] = io_in_0_bits_cmd[1];
  assign io_out_bits_cmd[0] = io_in_0_bits_cmd[0];
  assign io_out_bits_typ[2] = io_in_0_bits_typ[2];
  assign io_out_bits_typ[1] = io_in_0_bits_typ[1];
  assign io_out_bits_typ[0] = io_in_0_bits_typ[0];
  assign io_out_bits_data[63] = io_in_0_bits_data[63];
  assign io_out_bits_data[62] = io_in_0_bits_data[62];
  assign io_out_bits_data[61] = io_in_0_bits_data[61];
  assign io_out_bits_data[60] = io_in_0_bits_data[60];
  assign io_out_bits_data[59] = io_in_0_bits_data[59];
  assign io_out_bits_data[58] = io_in_0_bits_data[58];
  assign io_out_bits_data[57] = io_in_0_bits_data[57];
  assign io_out_bits_data[56] = io_in_0_bits_data[56];
  assign io_out_bits_data[55] = io_in_0_bits_data[55];
  assign io_out_bits_data[54] = io_in_0_bits_data[54];
  assign io_out_bits_data[53] = io_in_0_bits_data[53];
  assign io_out_bits_data[52] = io_in_0_bits_data[52];
  assign io_out_bits_data[51] = io_in_0_bits_data[51];
  assign io_out_bits_data[50] = io_in_0_bits_data[50];
  assign io_out_bits_data[49] = io_in_0_bits_data[49];
  assign io_out_bits_data[48] = io_in_0_bits_data[48];
  assign io_out_bits_data[47] = io_in_0_bits_data[47];
  assign io_out_bits_data[46] = io_in_0_bits_data[46];
  assign io_out_bits_data[45] = io_in_0_bits_data[45];
  assign io_out_bits_data[44] = io_in_0_bits_data[44];
  assign io_out_bits_data[43] = io_in_0_bits_data[43];
  assign io_out_bits_data[42] = io_in_0_bits_data[42];
  assign io_out_bits_data[41] = io_in_0_bits_data[41];
  assign io_out_bits_data[40] = io_in_0_bits_data[40];
  assign io_out_bits_data[39] = io_in_0_bits_data[39];
  assign io_out_bits_data[38] = io_in_0_bits_data[38];
  assign io_out_bits_data[37] = io_in_0_bits_data[37];
  assign io_out_bits_data[36] = io_in_0_bits_data[36];
  assign io_out_bits_data[35] = io_in_0_bits_data[35];
  assign io_out_bits_data[34] = io_in_0_bits_data[34];
  assign io_out_bits_data[33] = io_in_0_bits_data[33];
  assign io_out_bits_data[32] = io_in_0_bits_data[32];
  assign io_out_bits_data[31] = io_in_0_bits_data[31];
  assign io_out_bits_data[30] = io_in_0_bits_data[30];
  assign io_out_bits_data[29] = io_in_0_bits_data[29];
  assign io_out_bits_data[28] = io_in_0_bits_data[28];
  assign io_out_bits_data[27] = io_in_0_bits_data[27];
  assign io_out_bits_data[26] = io_in_0_bits_data[26];
  assign io_out_bits_data[25] = io_in_0_bits_data[25];
  assign io_out_bits_data[24] = io_in_0_bits_data[24];
  assign io_out_bits_data[23] = io_in_0_bits_data[23];
  assign io_out_bits_data[22] = io_in_0_bits_data[22];
  assign io_out_bits_data[21] = io_in_0_bits_data[21];
  assign io_out_bits_data[20] = io_in_0_bits_data[20];
  assign io_out_bits_data[19] = io_in_0_bits_data[19];
  assign io_out_bits_data[18] = io_in_0_bits_data[18];
  assign io_out_bits_data[17] = io_in_0_bits_data[17];
  assign io_out_bits_data[16] = io_in_0_bits_data[16];
  assign io_out_bits_data[15] = io_in_0_bits_data[15];
  assign io_out_bits_data[14] = io_in_0_bits_data[14];
  assign io_out_bits_data[13] = io_in_0_bits_data[13];
  assign io_out_bits_data[12] = io_in_0_bits_data[12];
  assign io_out_bits_data[11] = io_in_0_bits_data[11];
  assign io_out_bits_data[10] = io_in_0_bits_data[10];
  assign io_out_bits_data[9] = io_in_0_bits_data[9];
  assign io_out_bits_data[8] = io_in_0_bits_data[8];
  assign io_out_bits_data[7] = io_in_0_bits_data[7];
  assign io_out_bits_data[6] = io_in_0_bits_data[6];
  assign io_out_bits_data[5] = io_in_0_bits_data[5];
  assign io_out_bits_data[4] = io_in_0_bits_data[4];
  assign io_out_bits_data[3] = io_in_0_bits_data[3];
  assign io_out_bits_data[2] = io_in_0_bits_data[2];
  assign io_out_bits_data[1] = io_in_0_bits_data[1];
  assign io_out_bits_data[0] = io_in_0_bits_data[0];
  assign io_out_bits_nack = io_in_0_bits_nack;
  assign io_out_bits_replay = io_in_0_bits_replay;
  assign io_out_bits_has_data = io_in_0_bits_has_data;
  assign io_out_bits_data_word_bypass[63] = io_in_0_bits_data_word_bypass[63];
  assign io_out_bits_data_word_bypass[62] = io_in_0_bits_data_word_bypass[62];
  assign io_out_bits_data_word_bypass[61] = io_in_0_bits_data_word_bypass[61];
  assign io_out_bits_data_word_bypass[60] = io_in_0_bits_data_word_bypass[60];
  assign io_out_bits_data_word_bypass[59] = io_in_0_bits_data_word_bypass[59];
  assign io_out_bits_data_word_bypass[58] = io_in_0_bits_data_word_bypass[58];
  assign io_out_bits_data_word_bypass[57] = io_in_0_bits_data_word_bypass[57];
  assign io_out_bits_data_word_bypass[56] = io_in_0_bits_data_word_bypass[56];
  assign io_out_bits_data_word_bypass[55] = io_in_0_bits_data_word_bypass[55];
  assign io_out_bits_data_word_bypass[54] = io_in_0_bits_data_word_bypass[54];
  assign io_out_bits_data_word_bypass[53] = io_in_0_bits_data_word_bypass[53];
  assign io_out_bits_data_word_bypass[52] = io_in_0_bits_data_word_bypass[52];
  assign io_out_bits_data_word_bypass[51] = io_in_0_bits_data_word_bypass[51];
  assign io_out_bits_data_word_bypass[50] = io_in_0_bits_data_word_bypass[50];
  assign io_out_bits_data_word_bypass[49] = io_in_0_bits_data_word_bypass[49];
  assign io_out_bits_data_word_bypass[48] = io_in_0_bits_data_word_bypass[48];
  assign io_out_bits_data_word_bypass[47] = io_in_0_bits_data_word_bypass[47];
  assign io_out_bits_data_word_bypass[46] = io_in_0_bits_data_word_bypass[46];
  assign io_out_bits_data_word_bypass[45] = io_in_0_bits_data_word_bypass[45];
  assign io_out_bits_data_word_bypass[44] = io_in_0_bits_data_word_bypass[44];
  assign io_out_bits_data_word_bypass[43] = io_in_0_bits_data_word_bypass[43];
  assign io_out_bits_data_word_bypass[42] = io_in_0_bits_data_word_bypass[42];
  assign io_out_bits_data_word_bypass[41] = io_in_0_bits_data_word_bypass[41];
  assign io_out_bits_data_word_bypass[40] = io_in_0_bits_data_word_bypass[40];
  assign io_out_bits_data_word_bypass[39] = io_in_0_bits_data_word_bypass[39];
  assign io_out_bits_data_word_bypass[38] = io_in_0_bits_data_word_bypass[38];
  assign io_out_bits_data_word_bypass[37] = io_in_0_bits_data_word_bypass[37];
  assign io_out_bits_data_word_bypass[36] = io_in_0_bits_data_word_bypass[36];
  assign io_out_bits_data_word_bypass[35] = io_in_0_bits_data_word_bypass[35];
  assign io_out_bits_data_word_bypass[34] = io_in_0_bits_data_word_bypass[34];
  assign io_out_bits_data_word_bypass[33] = io_in_0_bits_data_word_bypass[33];
  assign io_out_bits_data_word_bypass[32] = io_in_0_bits_data_word_bypass[32];
  assign io_out_bits_data_word_bypass[31] = io_in_0_bits_data_word_bypass[31];
  assign io_out_bits_data_word_bypass[30] = io_in_0_bits_data_word_bypass[30];
  assign io_out_bits_data_word_bypass[29] = io_in_0_bits_data_word_bypass[29];
  assign io_out_bits_data_word_bypass[28] = io_in_0_bits_data_word_bypass[28];
  assign io_out_bits_data_word_bypass[27] = io_in_0_bits_data_word_bypass[27];
  assign io_out_bits_data_word_bypass[26] = io_in_0_bits_data_word_bypass[26];
  assign io_out_bits_data_word_bypass[25] = io_in_0_bits_data_word_bypass[25];
  assign io_out_bits_data_word_bypass[24] = io_in_0_bits_data_word_bypass[24];
  assign io_out_bits_data_word_bypass[23] = io_in_0_bits_data_word_bypass[23];
  assign io_out_bits_data_word_bypass[22] = io_in_0_bits_data_word_bypass[22];
  assign io_out_bits_data_word_bypass[21] = io_in_0_bits_data_word_bypass[21];
  assign io_out_bits_data_word_bypass[20] = io_in_0_bits_data_word_bypass[20];
  assign io_out_bits_data_word_bypass[19] = io_in_0_bits_data_word_bypass[19];
  assign io_out_bits_data_word_bypass[18] = io_in_0_bits_data_word_bypass[18];
  assign io_out_bits_data_word_bypass[17] = io_in_0_bits_data_word_bypass[17];
  assign io_out_bits_data_word_bypass[16] = io_in_0_bits_data_word_bypass[16];
  assign io_out_bits_data_word_bypass[15] = io_in_0_bits_data_word_bypass[15];
  assign io_out_bits_data_word_bypass[14] = io_in_0_bits_data_word_bypass[14];
  assign io_out_bits_data_word_bypass[13] = io_in_0_bits_data_word_bypass[13];
  assign io_out_bits_data_word_bypass[12] = io_in_0_bits_data_word_bypass[12];
  assign io_out_bits_data_word_bypass[11] = io_in_0_bits_data_word_bypass[11];
  assign io_out_bits_data_word_bypass[10] = io_in_0_bits_data_word_bypass[10];
  assign io_out_bits_data_word_bypass[9] = io_in_0_bits_data_word_bypass[9];
  assign io_out_bits_data_word_bypass[8] = io_in_0_bits_data_word_bypass[8];
  assign io_out_bits_data_word_bypass[7] = io_in_0_bits_data_word_bypass[7];
  assign io_out_bits_data_word_bypass[6] = io_in_0_bits_data_word_bypass[6];
  assign io_out_bits_data_word_bypass[5] = io_in_0_bits_data_word_bypass[5];
  assign io_out_bits_data_word_bypass[4] = io_in_0_bits_data_word_bypass[4];
  assign io_out_bits_data_word_bypass[3] = io_in_0_bits_data_word_bypass[3];
  assign io_out_bits_data_word_bypass[2] = io_in_0_bits_data_word_bypass[2];
  assign io_out_bits_data_word_bypass[1] = io_in_0_bits_data_word_bypass[1];
  assign io_out_bits_data_word_bypass[0] = io_in_0_bits_data_word_bypass[0];
  assign io_out_bits_store_data[63] = io_in_0_bits_store_data[63];
  assign io_out_bits_store_data[62] = io_in_0_bits_store_data[62];
  assign io_out_bits_store_data[61] = io_in_0_bits_store_data[61];
  assign io_out_bits_store_data[60] = io_in_0_bits_store_data[60];
  assign io_out_bits_store_data[59] = io_in_0_bits_store_data[59];
  assign io_out_bits_store_data[58] = io_in_0_bits_store_data[58];
  assign io_out_bits_store_data[57] = io_in_0_bits_store_data[57];
  assign io_out_bits_store_data[56] = io_in_0_bits_store_data[56];
  assign io_out_bits_store_data[55] = io_in_0_bits_store_data[55];
  assign io_out_bits_store_data[54] = io_in_0_bits_store_data[54];
  assign io_out_bits_store_data[53] = io_in_0_bits_store_data[53];
  assign io_out_bits_store_data[52] = io_in_0_bits_store_data[52];
  assign io_out_bits_store_data[51] = io_in_0_bits_store_data[51];
  assign io_out_bits_store_data[50] = io_in_0_bits_store_data[50];
  assign io_out_bits_store_data[49] = io_in_0_bits_store_data[49];
  assign io_out_bits_store_data[48] = io_in_0_bits_store_data[48];
  assign io_out_bits_store_data[47] = io_in_0_bits_store_data[47];
  assign io_out_bits_store_data[46] = io_in_0_bits_store_data[46];
  assign io_out_bits_store_data[45] = io_in_0_bits_store_data[45];
  assign io_out_bits_store_data[44] = io_in_0_bits_store_data[44];
  assign io_out_bits_store_data[43] = io_in_0_bits_store_data[43];
  assign io_out_bits_store_data[42] = io_in_0_bits_store_data[42];
  assign io_out_bits_store_data[41] = io_in_0_bits_store_data[41];
  assign io_out_bits_store_data[40] = io_in_0_bits_store_data[40];
  assign io_out_bits_store_data[39] = io_in_0_bits_store_data[39];
  assign io_out_bits_store_data[38] = io_in_0_bits_store_data[38];
  assign io_out_bits_store_data[37] = io_in_0_bits_store_data[37];
  assign io_out_bits_store_data[36] = io_in_0_bits_store_data[36];
  assign io_out_bits_store_data[35] = io_in_0_bits_store_data[35];
  assign io_out_bits_store_data[34] = io_in_0_bits_store_data[34];
  assign io_out_bits_store_data[33] = io_in_0_bits_store_data[33];
  assign io_out_bits_store_data[32] = io_in_0_bits_store_data[32];
  assign io_out_bits_store_data[31] = io_in_0_bits_store_data[31];
  assign io_out_bits_store_data[30] = io_in_0_bits_store_data[30];
  assign io_out_bits_store_data[29] = io_in_0_bits_store_data[29];
  assign io_out_bits_store_data[28] = io_in_0_bits_store_data[28];
  assign io_out_bits_store_data[27] = io_in_0_bits_store_data[27];
  assign io_out_bits_store_data[26] = io_in_0_bits_store_data[26];
  assign io_out_bits_store_data[25] = io_in_0_bits_store_data[25];
  assign io_out_bits_store_data[24] = io_in_0_bits_store_data[24];
  assign io_out_bits_store_data[23] = io_in_0_bits_store_data[23];
  assign io_out_bits_store_data[22] = io_in_0_bits_store_data[22];
  assign io_out_bits_store_data[21] = io_in_0_bits_store_data[21];
  assign io_out_bits_store_data[20] = io_in_0_bits_store_data[20];
  assign io_out_bits_store_data[19] = io_in_0_bits_store_data[19];
  assign io_out_bits_store_data[18] = io_in_0_bits_store_data[18];
  assign io_out_bits_store_data[17] = io_in_0_bits_store_data[17];
  assign io_out_bits_store_data[16] = io_in_0_bits_store_data[16];
  assign io_out_bits_store_data[15] = io_in_0_bits_store_data[15];
  assign io_out_bits_store_data[14] = io_in_0_bits_store_data[14];
  assign io_out_bits_store_data[13] = io_in_0_bits_store_data[13];
  assign io_out_bits_store_data[12] = io_in_0_bits_store_data[12];
  assign io_out_bits_store_data[11] = io_in_0_bits_store_data[11];
  assign io_out_bits_store_data[10] = io_in_0_bits_store_data[10];
  assign io_out_bits_store_data[9] = io_in_0_bits_store_data[9];
  assign io_out_bits_store_data[8] = io_in_0_bits_store_data[8];
  assign io_out_bits_store_data[7] = io_in_0_bits_store_data[7];
  assign io_out_bits_store_data[6] = io_in_0_bits_store_data[6];
  assign io_out_bits_store_data[5] = io_in_0_bits_store_data[5];
  assign io_out_bits_store_data[4] = io_in_0_bits_store_data[4];
  assign io_out_bits_store_data[3] = io_in_0_bits_store_data[3];
  assign io_out_bits_store_data[2] = io_in_0_bits_store_data[2];
  assign io_out_bits_store_data[1] = io_in_0_bits_store_data[1];
  assign io_out_bits_store_data[0] = io_in_0_bits_store_data[0];

endmodule