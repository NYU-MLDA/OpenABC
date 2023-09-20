module bsg_nasti_client_resp
(
  clk_i,
  reset_i,
  nasti_r_valid_o,
  nasti_r_data_o,
  nasti_r_ready_i,
  resp_valid_i,
  resp_data_i,
  resp_yumi_o
);

  output [72:0] nasti_r_data_o;
  input [72:0] resp_data_i;
  input clk_i;
  input reset_i;
  input nasti_r_ready_i;
  input resp_valid_i;
  output nasti_r_valid_o;
  output resp_yumi_o;
  wire [72:0] nasti_r_data_o;
  wire nasti_r_valid_o,resp_yumi_o,resp_valid_i;
  assign nasti_r_data_o[71] = 1'b0;
  assign nasti_r_data_o[72] = 1'b0;
  assign nasti_r_valid_o = resp_valid_i;
  assign nasti_r_data_o[70] = resp_data_i[69];
  assign nasti_r_data_o[69] = resp_data_i[68];
  assign nasti_r_data_o[68] = resp_data_i[67];
  assign nasti_r_data_o[67] = resp_data_i[66];
  assign nasti_r_data_o[66] = resp_data_i[65];
  assign nasti_r_data_o[65] = resp_data_i[64];
  assign nasti_r_data_o[64] = resp_data_i[63];
  assign nasti_r_data_o[63] = resp_data_i[62];
  assign nasti_r_data_o[62] = resp_data_i[61];
  assign nasti_r_data_o[61] = resp_data_i[60];
  assign nasti_r_data_o[60] = resp_data_i[59];
  assign nasti_r_data_o[59] = resp_data_i[58];
  assign nasti_r_data_o[58] = resp_data_i[57];
  assign nasti_r_data_o[57] = resp_data_i[56];
  assign nasti_r_data_o[56] = resp_data_i[55];
  assign nasti_r_data_o[55] = resp_data_i[54];
  assign nasti_r_data_o[54] = resp_data_i[53];
  assign nasti_r_data_o[53] = resp_data_i[52];
  assign nasti_r_data_o[52] = resp_data_i[51];
  assign nasti_r_data_o[51] = resp_data_i[50];
  assign nasti_r_data_o[50] = resp_data_i[49];
  assign nasti_r_data_o[49] = resp_data_i[48];
  assign nasti_r_data_o[48] = resp_data_i[47];
  assign nasti_r_data_o[47] = resp_data_i[46];
  assign nasti_r_data_o[46] = resp_data_i[45];
  assign nasti_r_data_o[45] = resp_data_i[44];
  assign nasti_r_data_o[44] = resp_data_i[43];
  assign nasti_r_data_o[43] = resp_data_i[42];
  assign nasti_r_data_o[42] = resp_data_i[41];
  assign nasti_r_data_o[41] = resp_data_i[40];
  assign nasti_r_data_o[40] = resp_data_i[39];
  assign nasti_r_data_o[39] = resp_data_i[38];
  assign nasti_r_data_o[38] = resp_data_i[37];
  assign nasti_r_data_o[37] = resp_data_i[36];
  assign nasti_r_data_o[36] = resp_data_i[35];
  assign nasti_r_data_o[35] = resp_data_i[34];
  assign nasti_r_data_o[34] = resp_data_i[33];
  assign nasti_r_data_o[33] = resp_data_i[32];
  assign nasti_r_data_o[32] = resp_data_i[31];
  assign nasti_r_data_o[31] = resp_data_i[30];
  assign nasti_r_data_o[30] = resp_data_i[29];
  assign nasti_r_data_o[29] = resp_data_i[28];
  assign nasti_r_data_o[28] = resp_data_i[27];
  assign nasti_r_data_o[27] = resp_data_i[26];
  assign nasti_r_data_o[26] = resp_data_i[25];
  assign nasti_r_data_o[25] = resp_data_i[24];
  assign nasti_r_data_o[24] = resp_data_i[23];
  assign nasti_r_data_o[23] = resp_data_i[22];
  assign nasti_r_data_o[22] = resp_data_i[21];
  assign nasti_r_data_o[21] = resp_data_i[20];
  assign nasti_r_data_o[20] = resp_data_i[19];
  assign nasti_r_data_o[19] = resp_data_i[18];
  assign nasti_r_data_o[18] = resp_data_i[17];
  assign nasti_r_data_o[17] = resp_data_i[16];
  assign nasti_r_data_o[16] = resp_data_i[15];
  assign nasti_r_data_o[15] = resp_data_i[14];
  assign nasti_r_data_o[14] = resp_data_i[13];
  assign nasti_r_data_o[13] = resp_data_i[12];
  assign nasti_r_data_o[12] = resp_data_i[11];
  assign nasti_r_data_o[11] = resp_data_i[10];
  assign nasti_r_data_o[10] = resp_data_i[9];
  assign nasti_r_data_o[9] = resp_data_i[8];
  assign nasti_r_data_o[8] = resp_data_i[7];
  assign nasti_r_data_o[7] = resp_data_i[6];
  assign nasti_r_data_o[6] = resp_data_i[70];
  assign nasti_r_data_o[5] = resp_data_i[5];
  assign nasti_r_data_o[4] = resp_data_i[4];
  assign nasti_r_data_o[3] = resp_data_i[3];
  assign nasti_r_data_o[2] = resp_data_i[2];
  assign nasti_r_data_o[1] = resp_data_i[1];
  assign nasti_r_data_o[0] = resp_data_i[0];
  assign resp_yumi_o = resp_valid_i & nasti_r_ready_i;

endmodule