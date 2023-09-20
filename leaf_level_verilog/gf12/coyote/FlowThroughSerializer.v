module FlowThroughSerializer
(
  io_in_ready,
  io_in_valid,
  io_in_bits_addr_beat,
  io_in_bits_client_xact_id,
  io_in_bits_manager_xact_id,
  io_in_bits_is_builtin_type,
  io_in_bits_g_type,
  io_in_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_beat,
  io_out_bits_client_xact_id,
  io_out_bits_manager_xact_id,
  io_out_bits_is_builtin_type,
  io_out_bits_g_type,
  io_out_bits_data,
  io_cnt,
  io_done
);

  input [1:0] io_in_bits_addr_beat;
  input [5:0] io_in_bits_client_xact_id;
  input [3:0] io_in_bits_manager_xact_id;
  input [3:0] io_in_bits_g_type;
  input [127:0] io_in_bits_data;
  output [1:0] io_out_bits_addr_beat;
  output [5:0] io_out_bits_client_xact_id;
  output [3:0] io_out_bits_manager_xact_id;
  output [3:0] io_out_bits_g_type;
  output [127:0] io_out_bits_data;
  input io_in_valid;
  input io_in_bits_is_builtin_type;
  input io_out_ready;
  output io_in_ready;
  output io_out_valid;
  output io_out_bits_is_builtin_type;
  output io_cnt;
  output io_done;
  wire [1:0] io_out_bits_addr_beat;
  wire [5:0] io_out_bits_client_xact_id;
  wire [3:0] io_out_bits_manager_xact_id,io_out_bits_g_type;
  wire [127:0] io_out_bits_data;
  wire io_in_ready,io_out_valid,io_out_bits_is_builtin_type,io_cnt,io_done,
  io_out_ready,io_in_valid,io_in_bits_is_builtin_type;
  assign io_done = 1'b1;
  assign io_cnt = 1'b0;
  assign io_in_ready = io_out_ready;
  assign io_out_valid = io_in_valid;
  assign io_out_bits_addr_beat[1] = io_in_bits_addr_beat[1];
  assign io_out_bits_addr_beat[0] = io_in_bits_addr_beat[0];
  assign io_out_bits_client_xact_id[5] = io_in_bits_client_xact_id[5];
  assign io_out_bits_client_xact_id[4] = io_in_bits_client_xact_id[4];
  assign io_out_bits_client_xact_id[3] = io_in_bits_client_xact_id[3];
  assign io_out_bits_client_xact_id[2] = io_in_bits_client_xact_id[2];
  assign io_out_bits_client_xact_id[1] = io_in_bits_client_xact_id[1];
  assign io_out_bits_client_xact_id[0] = io_in_bits_client_xact_id[0];
  assign io_out_bits_manager_xact_id[3] = io_in_bits_manager_xact_id[3];
  assign io_out_bits_manager_xact_id[2] = io_in_bits_manager_xact_id[2];
  assign io_out_bits_manager_xact_id[1] = io_in_bits_manager_xact_id[1];
  assign io_out_bits_manager_xact_id[0] = io_in_bits_manager_xact_id[0];
  assign io_out_bits_is_builtin_type = io_in_bits_is_builtin_type;
  assign io_out_bits_g_type[3] = io_in_bits_g_type[3];
  assign io_out_bits_g_type[2] = io_in_bits_g_type[2];
  assign io_out_bits_g_type[1] = io_in_bits_g_type[1];
  assign io_out_bits_g_type[0] = io_in_bits_g_type[0];
  assign io_out_bits_data[127] = io_in_bits_data[127];
  assign io_out_bits_data[126] = io_in_bits_data[126];
  assign io_out_bits_data[125] = io_in_bits_data[125];
  assign io_out_bits_data[124] = io_in_bits_data[124];
  assign io_out_bits_data[123] = io_in_bits_data[123];
  assign io_out_bits_data[122] = io_in_bits_data[122];
  assign io_out_bits_data[121] = io_in_bits_data[121];
  assign io_out_bits_data[120] = io_in_bits_data[120];
  assign io_out_bits_data[119] = io_in_bits_data[119];
  assign io_out_bits_data[118] = io_in_bits_data[118];
  assign io_out_bits_data[117] = io_in_bits_data[117];
  assign io_out_bits_data[116] = io_in_bits_data[116];
  assign io_out_bits_data[115] = io_in_bits_data[115];
  assign io_out_bits_data[114] = io_in_bits_data[114];
  assign io_out_bits_data[113] = io_in_bits_data[113];
  assign io_out_bits_data[112] = io_in_bits_data[112];
  assign io_out_bits_data[111] = io_in_bits_data[111];
  assign io_out_bits_data[110] = io_in_bits_data[110];
  assign io_out_bits_data[109] = io_in_bits_data[109];
  assign io_out_bits_data[108] = io_in_bits_data[108];
  assign io_out_bits_data[107] = io_in_bits_data[107];
  assign io_out_bits_data[106] = io_in_bits_data[106];
  assign io_out_bits_data[105] = io_in_bits_data[105];
  assign io_out_bits_data[104] = io_in_bits_data[104];
  assign io_out_bits_data[103] = io_in_bits_data[103];
  assign io_out_bits_data[102] = io_in_bits_data[102];
  assign io_out_bits_data[101] = io_in_bits_data[101];
  assign io_out_bits_data[100] = io_in_bits_data[100];
  assign io_out_bits_data[99] = io_in_bits_data[99];
  assign io_out_bits_data[98] = io_in_bits_data[98];
  assign io_out_bits_data[97] = io_in_bits_data[97];
  assign io_out_bits_data[96] = io_in_bits_data[96];
  assign io_out_bits_data[95] = io_in_bits_data[95];
  assign io_out_bits_data[94] = io_in_bits_data[94];
  assign io_out_bits_data[93] = io_in_bits_data[93];
  assign io_out_bits_data[92] = io_in_bits_data[92];
  assign io_out_bits_data[91] = io_in_bits_data[91];
  assign io_out_bits_data[90] = io_in_bits_data[90];
  assign io_out_bits_data[89] = io_in_bits_data[89];
  assign io_out_bits_data[88] = io_in_bits_data[88];
  assign io_out_bits_data[87] = io_in_bits_data[87];
  assign io_out_bits_data[86] = io_in_bits_data[86];
  assign io_out_bits_data[85] = io_in_bits_data[85];
  assign io_out_bits_data[84] = io_in_bits_data[84];
  assign io_out_bits_data[83] = io_in_bits_data[83];
  assign io_out_bits_data[82] = io_in_bits_data[82];
  assign io_out_bits_data[81] = io_in_bits_data[81];
  assign io_out_bits_data[80] = io_in_bits_data[80];
  assign io_out_bits_data[79] = io_in_bits_data[79];
  assign io_out_bits_data[78] = io_in_bits_data[78];
  assign io_out_bits_data[77] = io_in_bits_data[77];
  assign io_out_bits_data[76] = io_in_bits_data[76];
  assign io_out_bits_data[75] = io_in_bits_data[75];
  assign io_out_bits_data[74] = io_in_bits_data[74];
  assign io_out_bits_data[73] = io_in_bits_data[73];
  assign io_out_bits_data[72] = io_in_bits_data[72];
  assign io_out_bits_data[71] = io_in_bits_data[71];
  assign io_out_bits_data[70] = io_in_bits_data[70];
  assign io_out_bits_data[69] = io_in_bits_data[69];
  assign io_out_bits_data[68] = io_in_bits_data[68];
  assign io_out_bits_data[67] = io_in_bits_data[67];
  assign io_out_bits_data[66] = io_in_bits_data[66];
  assign io_out_bits_data[65] = io_in_bits_data[65];
  assign io_out_bits_data[64] = io_in_bits_data[64];
  assign io_out_bits_data[63] = io_in_bits_data[63];
  assign io_out_bits_data[62] = io_in_bits_data[62];
  assign io_out_bits_data[61] = io_in_bits_data[61];
  assign io_out_bits_data[60] = io_in_bits_data[60];
  assign io_out_bits_data[59] = io_in_bits_data[59];
  assign io_out_bits_data[58] = io_in_bits_data[58];
  assign io_out_bits_data[57] = io_in_bits_data[57];
  assign io_out_bits_data[56] = io_in_bits_data[56];
  assign io_out_bits_data[55] = io_in_bits_data[55];
  assign io_out_bits_data[54] = io_in_bits_data[54];
  assign io_out_bits_data[53] = io_in_bits_data[53];
  assign io_out_bits_data[52] = io_in_bits_data[52];
  assign io_out_bits_data[51] = io_in_bits_data[51];
  assign io_out_bits_data[50] = io_in_bits_data[50];
  assign io_out_bits_data[49] = io_in_bits_data[49];
  assign io_out_bits_data[48] = io_in_bits_data[48];
  assign io_out_bits_data[47] = io_in_bits_data[47];
  assign io_out_bits_data[46] = io_in_bits_data[46];
  assign io_out_bits_data[45] = io_in_bits_data[45];
  assign io_out_bits_data[44] = io_in_bits_data[44];
  assign io_out_bits_data[43] = io_in_bits_data[43];
  assign io_out_bits_data[42] = io_in_bits_data[42];
  assign io_out_bits_data[41] = io_in_bits_data[41];
  assign io_out_bits_data[40] = io_in_bits_data[40];
  assign io_out_bits_data[39] = io_in_bits_data[39];
  assign io_out_bits_data[38] = io_in_bits_data[38];
  assign io_out_bits_data[37] = io_in_bits_data[37];
  assign io_out_bits_data[36] = io_in_bits_data[36];
  assign io_out_bits_data[35] = io_in_bits_data[35];
  assign io_out_bits_data[34] = io_in_bits_data[34];
  assign io_out_bits_data[33] = io_in_bits_data[33];
  assign io_out_bits_data[32] = io_in_bits_data[32];
  assign io_out_bits_data[31] = io_in_bits_data[31];
  assign io_out_bits_data[30] = io_in_bits_data[30];
  assign io_out_bits_data[29] = io_in_bits_data[29];
  assign io_out_bits_data[28] = io_in_bits_data[28];
  assign io_out_bits_data[27] = io_in_bits_data[27];
  assign io_out_bits_data[26] = io_in_bits_data[26];
  assign io_out_bits_data[25] = io_in_bits_data[25];
  assign io_out_bits_data[24] = io_in_bits_data[24];
  assign io_out_bits_data[23] = io_in_bits_data[23];
  assign io_out_bits_data[22] = io_in_bits_data[22];
  assign io_out_bits_data[21] = io_in_bits_data[21];
  assign io_out_bits_data[20] = io_in_bits_data[20];
  assign io_out_bits_data[19] = io_in_bits_data[19];
  assign io_out_bits_data[18] = io_in_bits_data[18];
  assign io_out_bits_data[17] = io_in_bits_data[17];
  assign io_out_bits_data[16] = io_in_bits_data[16];
  assign io_out_bits_data[15] = io_in_bits_data[15];
  assign io_out_bits_data[14] = io_in_bits_data[14];
  assign io_out_bits_data[13] = io_in_bits_data[13];
  assign io_out_bits_data[12] = io_in_bits_data[12];
  assign io_out_bits_data[11] = io_in_bits_data[11];
  assign io_out_bits_data[10] = io_in_bits_data[10];
  assign io_out_bits_data[9] = io_in_bits_data[9];
  assign io_out_bits_data[8] = io_in_bits_data[8];
  assign io_out_bits_data[7] = io_in_bits_data[7];
  assign io_out_bits_data[6] = io_in_bits_data[6];
  assign io_out_bits_data[5] = io_in_bits_data[5];
  assign io_out_bits_data[4] = io_in_bits_data[4];
  assign io_out_bits_data[3] = io_in_bits_data[3];
  assign io_out_bits_data[2] = io_in_bits_data[2];
  assign io_out_bits_data[1] = io_in_bits_data[1];
  assign io_out_bits_data[0] = io_in_bits_data[0];

endmodule