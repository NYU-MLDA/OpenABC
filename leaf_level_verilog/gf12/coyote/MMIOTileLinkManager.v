module MMIOTileLinkManager
(
  clk,
  reset,
  io_inner_acquire_ready,
  io_inner_acquire_valid,
  io_inner_acquire_bits_addr_block,
  io_inner_acquire_bits_client_xact_id,
  io_inner_acquire_bits_addr_beat,
  io_inner_acquire_bits_is_builtin_type,
  io_inner_acquire_bits_a_type,
  io_inner_acquire_bits_union,
  io_inner_acquire_bits_data,
  io_inner_acquire_bits_client_id,
  io_inner_grant_ready,
  io_inner_grant_valid,
  io_inner_grant_bits_addr_beat,
  io_inner_grant_bits_client_xact_id,
  io_inner_grant_bits_manager_xact_id,
  io_inner_grant_bits_is_builtin_type,
  io_inner_grant_bits_g_type,
  io_inner_grant_bits_data,
  io_inner_grant_bits_client_id,
  io_inner_finish_ready,
  io_inner_finish_valid,
  io_inner_finish_bits_manager_xact_id,
  io_inner_probe_ready,
  io_inner_probe_valid,
  io_inner_release_ready,
  io_inner_release_valid,
  io_inner_release_bits_addr_beat,
  io_inner_release_bits_addr_block,
  io_inner_release_bits_client_xact_id,
  io_inner_release_bits_voluntary,
  io_inner_release_bits_r_type,
  io_inner_release_bits_data,
  io_inner_release_bits_client_id,
  io_outer_acquire_ready,
  io_outer_acquire_valid,
  io_outer_acquire_bits_addr_block,
  io_outer_acquire_bits_client_xact_id,
  io_outer_acquire_bits_addr_beat,
  io_outer_acquire_bits_is_builtin_type,
  io_outer_acquire_bits_a_type,
  io_outer_acquire_bits_union,
  io_outer_acquire_bits_data,
  io_outer_grant_ready,
  io_outer_grant_valid,
  io_outer_grant_bits_addr_beat,
  io_outer_grant_bits_client_xact_id,
  io_outer_grant_bits_manager_xact_id,
  io_outer_grant_bits_is_builtin_type,
  io_outer_grant_bits_g_type,
  io_outer_grant_bits_data
);

  input [25:0] io_inner_acquire_bits_addr_block;
  input [5:0] io_inner_acquire_bits_client_xact_id;
  input [1:0] io_inner_acquire_bits_addr_beat;
  input [2:0] io_inner_acquire_bits_a_type;
  input [16:0] io_inner_acquire_bits_union;
  input [127:0] io_inner_acquire_bits_data;
  input [1:0] io_inner_acquire_bits_client_id;
  output [1:0] io_inner_grant_bits_addr_beat;
  output [5:0] io_inner_grant_bits_client_xact_id;
  output [3:0] io_inner_grant_bits_manager_xact_id;
  output [3:0] io_inner_grant_bits_g_type;
  output [127:0] io_inner_grant_bits_data;
  output [1:0] io_inner_grant_bits_client_id;
  input [3:0] io_inner_finish_bits_manager_xact_id;
  input [1:0] io_inner_release_bits_addr_beat;
  input [25:0] io_inner_release_bits_addr_block;
  input [5:0] io_inner_release_bits_client_xact_id;
  input [2:0] io_inner_release_bits_r_type;
  input [127:0] io_inner_release_bits_data;
  input [1:0] io_inner_release_bits_client_id;
  output [25:0] io_outer_acquire_bits_addr_block;
  output [3:0] io_outer_acquire_bits_client_xact_id;
  output [1:0] io_outer_acquire_bits_addr_beat;
  output [2:0] io_outer_acquire_bits_a_type;
  output [16:0] io_outer_acquire_bits_union;
  output [127:0] io_outer_acquire_bits_data;
  input [1:0] io_outer_grant_bits_addr_beat;
  input [3:0] io_outer_grant_bits_client_xact_id;
  input [3:0] io_outer_grant_bits_g_type;
  input [127:0] io_outer_grant_bits_data;
  input clk;
  input reset;
  input io_inner_acquire_valid;
  input io_inner_acquire_bits_is_builtin_type;
  input io_inner_grant_ready;
  input io_inner_finish_valid;
  input io_inner_probe_ready;
  input io_inner_release_valid;
  input io_inner_release_bits_voluntary;
  input io_outer_acquire_ready;
  input io_outer_grant_valid;
  input io_outer_grant_bits_manager_xact_id;
  input io_outer_grant_bits_is_builtin_type;
  output io_inner_acquire_ready;
  output io_inner_grant_valid;
  output io_inner_grant_bits_is_builtin_type;
  output io_inner_finish_ready;
  output io_inner_probe_valid;
  output io_inner_release_ready;
  output io_outer_acquire_valid;
  output io_outer_acquire_bits_is_builtin_type;
  output io_outer_grant_ready;
  wire [1:0] io_inner_grant_bits_addr_beat,io_inner_grant_bits_client_id,
  io_outer_acquire_bits_addr_beat,T52,T81,T53,T72,T54,T90,T82;
  wire [5:0] io_inner_grant_bits_client_xact_id,T105,T120,T106,T113,T107,T127,T121;
  wire [3:0] io_inner_grant_bits_manager_xact_id,io_inner_grant_bits_g_type,
  io_outer_acquire_bits_client_xact_id,T139,T140,T141,T142,T143,T144,T145,T48,T49;
  wire [127:0] io_inner_grant_bits_data,io_outer_acquire_bits_data;
  wire [25:0] io_outer_acquire_bits_addr_block;
  wire [2:0] io_outer_acquire_bits_a_type;
  wire [16:0] io_outer_acquire_bits_union;
  wire io_inner_acquire_ready,io_inner_grant_valid,io_inner_grant_bits_is_builtin_type,
  io_inner_finish_ready,io_inner_probe_valid,io_inner_release_ready,
  io_outer_acquire_valid,io_outer_acquire_bits_is_builtin_type,io_outer_grant_ready,N0,N1,N2,N3,
  N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,io_outer_grant_valid,
  io_outer_grant_bits_is_builtin_type,io_inner_acquire_bits_is_builtin_type,io_inner_grant_ready,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,T5,N44,T10,T6,T7,T8,T19,T11,T13,T14,N45,T15,T24,
  N46,T28,N47,T34,T29,T31,T32,multibeat_start,multibeat_fire,T39,T37,multibeat_end,
  xact_free,T50,T46,T47,N48,N49,N50,N51,N52,N53,N54,T56,T60,T66,T61,T63,T64,T68,
  T74,T77,T84,T87,T92,T95,T101,T109,T111,T115,T117,T123,T125,T129,T131,T136,N55,N56,
  N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,
  N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,
  N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,SV2V_UNCONNECTED_1,
  SV2V_UNCONNECTED_2,SV2V_UNCONNECTED_3,SV2V_UNCONNECTED_4,
  SV2V_UNCONNECTED_5,SV2V_UNCONNECTED_6,SV2V_UNCONNECTED_7,SV2V_UNCONNECTED_8;
  wire [3:2] T146;
  wire [7:0] T0;
  wire [8:0] T148,T1,T20,T2,T3,T4,T25,T21,T22,T23,T26,T27,T58;
  reg [8:0] T150;
  reg [3:0] xact_id_reg;
  reg xact_multibeat;
  reg [1:0] xact_buffer_0_client_id,xact_buffer_1_client_id,xact_buffer_2_client_id,
  xact_buffer_3_client_id,xact_buffer_4_client_id,xact_buffer_5_client_id,
  xact_buffer_6_client_id,xact_buffer_7_client_id,xact_buffer_8_client_id;
  reg [5:0] xact_buffer_0_client_xact_id,xact_buffer_1_client_xact_id,
  xact_buffer_2_client_xact_id,xact_buffer_3_client_xact_id,xact_buffer_4_client_xact_id,
  xact_buffer_5_client_xact_id,xact_buffer_6_client_xact_id,xact_buffer_7_client_xact_id,
  xact_buffer_8_client_xact_id;
  assign io_inner_probe_valid = 1'b0;
  assign io_inner_release_ready = 1'b0;
  assign io_inner_grant_valid = io_outer_grant_valid;
  assign io_inner_grant_bits_addr_beat[1] = io_outer_grant_bits_addr_beat[1];
  assign io_inner_grant_bits_addr_beat[0] = io_outer_grant_bits_addr_beat[0];
  assign io_inner_grant_bits_manager_xact_id[3] = io_outer_grant_bits_client_xact_id[3];
  assign io_inner_grant_bits_manager_xact_id[2] = io_outer_grant_bits_client_xact_id[2];
  assign io_inner_grant_bits_manager_xact_id[1] = io_outer_grant_bits_client_xact_id[1];
  assign io_inner_grant_bits_manager_xact_id[0] = io_outer_grant_bits_client_xact_id[0];
  assign io_inner_grant_bits_is_builtin_type = io_outer_grant_bits_is_builtin_type;
  assign io_inner_grant_bits_g_type[3] = io_outer_grant_bits_g_type[3];
  assign io_inner_grant_bits_g_type[2] = io_outer_grant_bits_g_type[2];
  assign io_inner_grant_bits_g_type[1] = io_outer_grant_bits_g_type[1];
  assign io_inner_grant_bits_g_type[0] = io_outer_grant_bits_g_type[0];
  assign io_inner_grant_bits_data[127] = io_outer_grant_bits_data[127];
  assign io_inner_grant_bits_data[126] = io_outer_grant_bits_data[126];
  assign io_inner_grant_bits_data[125] = io_outer_grant_bits_data[125];
  assign io_inner_grant_bits_data[124] = io_outer_grant_bits_data[124];
  assign io_inner_grant_bits_data[123] = io_outer_grant_bits_data[123];
  assign io_inner_grant_bits_data[122] = io_outer_grant_bits_data[122];
  assign io_inner_grant_bits_data[121] = io_outer_grant_bits_data[121];
  assign io_inner_grant_bits_data[120] = io_outer_grant_bits_data[120];
  assign io_inner_grant_bits_data[119] = io_outer_grant_bits_data[119];
  assign io_inner_grant_bits_data[118] = io_outer_grant_bits_data[118];
  assign io_inner_grant_bits_data[117] = io_outer_grant_bits_data[117];
  assign io_inner_grant_bits_data[116] = io_outer_grant_bits_data[116];
  assign io_inner_grant_bits_data[115] = io_outer_grant_bits_data[115];
  assign io_inner_grant_bits_data[114] = io_outer_grant_bits_data[114];
  assign io_inner_grant_bits_data[113] = io_outer_grant_bits_data[113];
  assign io_inner_grant_bits_data[112] = io_outer_grant_bits_data[112];
  assign io_inner_grant_bits_data[111] = io_outer_grant_bits_data[111];
  assign io_inner_grant_bits_data[110] = io_outer_grant_bits_data[110];
  assign io_inner_grant_bits_data[109] = io_outer_grant_bits_data[109];
  assign io_inner_grant_bits_data[108] = io_outer_grant_bits_data[108];
  assign io_inner_grant_bits_data[107] = io_outer_grant_bits_data[107];
  assign io_inner_grant_bits_data[106] = io_outer_grant_bits_data[106];
  assign io_inner_grant_bits_data[105] = io_outer_grant_bits_data[105];
  assign io_inner_grant_bits_data[104] = io_outer_grant_bits_data[104];
  assign io_inner_grant_bits_data[103] = io_outer_grant_bits_data[103];
  assign io_inner_grant_bits_data[102] = io_outer_grant_bits_data[102];
  assign io_inner_grant_bits_data[101] = io_outer_grant_bits_data[101];
  assign io_inner_grant_bits_data[100] = io_outer_grant_bits_data[100];
  assign io_inner_grant_bits_data[99] = io_outer_grant_bits_data[99];
  assign io_inner_grant_bits_data[98] = io_outer_grant_bits_data[98];
  assign io_inner_grant_bits_data[97] = io_outer_grant_bits_data[97];
  assign io_inner_grant_bits_data[96] = io_outer_grant_bits_data[96];
  assign io_inner_grant_bits_data[95] = io_outer_grant_bits_data[95];
  assign io_inner_grant_bits_data[94] = io_outer_grant_bits_data[94];
  assign io_inner_grant_bits_data[93] = io_outer_grant_bits_data[93];
  assign io_inner_grant_bits_data[92] = io_outer_grant_bits_data[92];
  assign io_inner_grant_bits_data[91] = io_outer_grant_bits_data[91];
  assign io_inner_grant_bits_data[90] = io_outer_grant_bits_data[90];
  assign io_inner_grant_bits_data[89] = io_outer_grant_bits_data[89];
  assign io_inner_grant_bits_data[88] = io_outer_grant_bits_data[88];
  assign io_inner_grant_bits_data[87] = io_outer_grant_bits_data[87];
  assign io_inner_grant_bits_data[86] = io_outer_grant_bits_data[86];
  assign io_inner_grant_bits_data[85] = io_outer_grant_bits_data[85];
  assign io_inner_grant_bits_data[84] = io_outer_grant_bits_data[84];
  assign io_inner_grant_bits_data[83] = io_outer_grant_bits_data[83];
  assign io_inner_grant_bits_data[82] = io_outer_grant_bits_data[82];
  assign io_inner_grant_bits_data[81] = io_outer_grant_bits_data[81];
  assign io_inner_grant_bits_data[80] = io_outer_grant_bits_data[80];
  assign io_inner_grant_bits_data[79] = io_outer_grant_bits_data[79];
  assign io_inner_grant_bits_data[78] = io_outer_grant_bits_data[78];
  assign io_inner_grant_bits_data[77] = io_outer_grant_bits_data[77];
  assign io_inner_grant_bits_data[76] = io_outer_grant_bits_data[76];
  assign io_inner_grant_bits_data[75] = io_outer_grant_bits_data[75];
  assign io_inner_grant_bits_data[74] = io_outer_grant_bits_data[74];
  assign io_inner_grant_bits_data[73] = io_outer_grant_bits_data[73];
  assign io_inner_grant_bits_data[72] = io_outer_grant_bits_data[72];
  assign io_inner_grant_bits_data[71] = io_outer_grant_bits_data[71];
  assign io_inner_grant_bits_data[70] = io_outer_grant_bits_data[70];
  assign io_inner_grant_bits_data[69] = io_outer_grant_bits_data[69];
  assign io_inner_grant_bits_data[68] = io_outer_grant_bits_data[68];
  assign io_inner_grant_bits_data[67] = io_outer_grant_bits_data[67];
  assign io_inner_grant_bits_data[66] = io_outer_grant_bits_data[66];
  assign io_inner_grant_bits_data[65] = io_outer_grant_bits_data[65];
  assign io_inner_grant_bits_data[64] = io_outer_grant_bits_data[64];
  assign io_inner_grant_bits_data[63] = io_outer_grant_bits_data[63];
  assign io_inner_grant_bits_data[62] = io_outer_grant_bits_data[62];
  assign io_inner_grant_bits_data[61] = io_outer_grant_bits_data[61];
  assign io_inner_grant_bits_data[60] = io_outer_grant_bits_data[60];
  assign io_inner_grant_bits_data[59] = io_outer_grant_bits_data[59];
  assign io_inner_grant_bits_data[58] = io_outer_grant_bits_data[58];
  assign io_inner_grant_bits_data[57] = io_outer_grant_bits_data[57];
  assign io_inner_grant_bits_data[56] = io_outer_grant_bits_data[56];
  assign io_inner_grant_bits_data[55] = io_outer_grant_bits_data[55];
  assign io_inner_grant_bits_data[54] = io_outer_grant_bits_data[54];
  assign io_inner_grant_bits_data[53] = io_outer_grant_bits_data[53];
  assign io_inner_grant_bits_data[52] = io_outer_grant_bits_data[52];
  assign io_inner_grant_bits_data[51] = io_outer_grant_bits_data[51];
  assign io_inner_grant_bits_data[50] = io_outer_grant_bits_data[50];
  assign io_inner_grant_bits_data[49] = io_outer_grant_bits_data[49];
  assign io_inner_grant_bits_data[48] = io_outer_grant_bits_data[48];
  assign io_inner_grant_bits_data[47] = io_outer_grant_bits_data[47];
  assign io_inner_grant_bits_data[46] = io_outer_grant_bits_data[46];
  assign io_inner_grant_bits_data[45] = io_outer_grant_bits_data[45];
  assign io_inner_grant_bits_data[44] = io_outer_grant_bits_data[44];
  assign io_inner_grant_bits_data[43] = io_outer_grant_bits_data[43];
  assign io_inner_grant_bits_data[42] = io_outer_grant_bits_data[42];
  assign io_inner_grant_bits_data[41] = io_outer_grant_bits_data[41];
  assign io_inner_grant_bits_data[40] = io_outer_grant_bits_data[40];
  assign io_inner_grant_bits_data[39] = io_outer_grant_bits_data[39];
  assign io_inner_grant_bits_data[38] = io_outer_grant_bits_data[38];
  assign io_inner_grant_bits_data[37] = io_outer_grant_bits_data[37];
  assign io_inner_grant_bits_data[36] = io_outer_grant_bits_data[36];
  assign io_inner_grant_bits_data[35] = io_outer_grant_bits_data[35];
  assign io_inner_grant_bits_data[34] = io_outer_grant_bits_data[34];
  assign io_inner_grant_bits_data[33] = io_outer_grant_bits_data[33];
  assign io_inner_grant_bits_data[32] = io_outer_grant_bits_data[32];
  assign io_inner_grant_bits_data[31] = io_outer_grant_bits_data[31];
  assign io_inner_grant_bits_data[30] = io_outer_grant_bits_data[30];
  assign io_inner_grant_bits_data[29] = io_outer_grant_bits_data[29];
  assign io_inner_grant_bits_data[28] = io_outer_grant_bits_data[28];
  assign io_inner_grant_bits_data[27] = io_outer_grant_bits_data[27];
  assign io_inner_grant_bits_data[26] = io_outer_grant_bits_data[26];
  assign io_inner_grant_bits_data[25] = io_outer_grant_bits_data[25];
  assign io_inner_grant_bits_data[24] = io_outer_grant_bits_data[24];
  assign io_inner_grant_bits_data[23] = io_outer_grant_bits_data[23];
  assign io_inner_grant_bits_data[22] = io_outer_grant_bits_data[22];
  assign io_inner_grant_bits_data[21] = io_outer_grant_bits_data[21];
  assign io_inner_grant_bits_data[20] = io_outer_grant_bits_data[20];
  assign io_inner_grant_bits_data[19] = io_outer_grant_bits_data[19];
  assign io_inner_grant_bits_data[18] = io_outer_grant_bits_data[18];
  assign io_inner_grant_bits_data[17] = io_outer_grant_bits_data[17];
  assign io_inner_grant_bits_data[16] = io_outer_grant_bits_data[16];
  assign io_inner_grant_bits_data[15] = io_outer_grant_bits_data[15];
  assign io_inner_grant_bits_data[14] = io_outer_grant_bits_data[14];
  assign io_inner_grant_bits_data[13] = io_outer_grant_bits_data[13];
  assign io_inner_grant_bits_data[12] = io_outer_grant_bits_data[12];
  assign io_inner_grant_bits_data[11] = io_outer_grant_bits_data[11];
  assign io_inner_grant_bits_data[10] = io_outer_grant_bits_data[10];
  assign io_inner_grant_bits_data[9] = io_outer_grant_bits_data[9];
  assign io_inner_grant_bits_data[8] = io_outer_grant_bits_data[8];
  assign io_inner_grant_bits_data[7] = io_outer_grant_bits_data[7];
  assign io_inner_grant_bits_data[6] = io_outer_grant_bits_data[6];
  assign io_inner_grant_bits_data[5] = io_outer_grant_bits_data[5];
  assign io_inner_grant_bits_data[4] = io_outer_grant_bits_data[4];
  assign io_inner_grant_bits_data[3] = io_outer_grant_bits_data[3];
  assign io_inner_grant_bits_data[2] = io_outer_grant_bits_data[2];
  assign io_inner_grant_bits_data[1] = io_outer_grant_bits_data[1];
  assign io_inner_grant_bits_data[0] = io_outer_grant_bits_data[0];
  assign io_outer_acquire_bits_addr_block[25] = io_inner_acquire_bits_addr_block[25];
  assign io_outer_acquire_bits_addr_block[24] = io_inner_acquire_bits_addr_block[24];
  assign io_outer_acquire_bits_addr_block[23] = io_inner_acquire_bits_addr_block[23];
  assign io_outer_acquire_bits_addr_block[22] = io_inner_acquire_bits_addr_block[22];
  assign io_outer_acquire_bits_addr_block[21] = io_inner_acquire_bits_addr_block[21];
  assign io_outer_acquire_bits_addr_block[20] = io_inner_acquire_bits_addr_block[20];
  assign io_outer_acquire_bits_addr_block[19] = io_inner_acquire_bits_addr_block[19];
  assign io_outer_acquire_bits_addr_block[18] = io_inner_acquire_bits_addr_block[18];
  assign io_outer_acquire_bits_addr_block[17] = io_inner_acquire_bits_addr_block[17];
  assign io_outer_acquire_bits_addr_block[16] = io_inner_acquire_bits_addr_block[16];
  assign io_outer_acquire_bits_addr_block[15] = io_inner_acquire_bits_addr_block[15];
  assign io_outer_acquire_bits_addr_block[14] = io_inner_acquire_bits_addr_block[14];
  assign io_outer_acquire_bits_addr_block[13] = io_inner_acquire_bits_addr_block[13];
  assign io_outer_acquire_bits_addr_block[12] = io_inner_acquire_bits_addr_block[12];
  assign io_outer_acquire_bits_addr_block[11] = io_inner_acquire_bits_addr_block[11];
  assign io_outer_acquire_bits_addr_block[10] = io_inner_acquire_bits_addr_block[10];
  assign io_outer_acquire_bits_addr_block[9] = io_inner_acquire_bits_addr_block[9];
  assign io_outer_acquire_bits_addr_block[8] = io_inner_acquire_bits_addr_block[8];
  assign io_outer_acquire_bits_addr_block[7] = io_inner_acquire_bits_addr_block[7];
  assign io_outer_acquire_bits_addr_block[6] = io_inner_acquire_bits_addr_block[6];
  assign io_outer_acquire_bits_addr_block[5] = io_inner_acquire_bits_addr_block[5];
  assign io_outer_acquire_bits_addr_block[4] = io_inner_acquire_bits_addr_block[4];
  assign io_outer_acquire_bits_addr_block[3] = io_inner_acquire_bits_addr_block[3];
  assign io_outer_acquire_bits_addr_block[2] = io_inner_acquire_bits_addr_block[2];
  assign io_outer_acquire_bits_addr_block[1] = io_inner_acquire_bits_addr_block[1];
  assign io_outer_acquire_bits_addr_block[0] = io_inner_acquire_bits_addr_block[0];
  assign io_outer_acquire_bits_addr_beat[1] = io_inner_acquire_bits_addr_beat[1];
  assign io_outer_acquire_bits_addr_beat[0] = io_inner_acquire_bits_addr_beat[0];
  assign io_outer_acquire_bits_is_builtin_type = io_inner_acquire_bits_is_builtin_type;
  assign io_outer_acquire_bits_a_type[2] = io_inner_acquire_bits_a_type[2];
  assign io_outer_acquire_bits_a_type[1] = io_inner_acquire_bits_a_type[1];
  assign io_outer_acquire_bits_a_type[0] = io_inner_acquire_bits_a_type[0];
  assign io_outer_acquire_bits_union[16] = io_inner_acquire_bits_union[16];
  assign io_outer_acquire_bits_union[15] = io_inner_acquire_bits_union[15];
  assign io_outer_acquire_bits_union[14] = io_inner_acquire_bits_union[14];
  assign io_outer_acquire_bits_union[13] = io_inner_acquire_bits_union[13];
  assign io_outer_acquire_bits_union[12] = io_inner_acquire_bits_union[12];
  assign io_outer_acquire_bits_union[11] = io_inner_acquire_bits_union[11];
  assign io_outer_acquire_bits_union[10] = io_inner_acquire_bits_union[10];
  assign io_outer_acquire_bits_union[9] = io_inner_acquire_bits_union[9];
  assign io_outer_acquire_bits_union[8] = io_inner_acquire_bits_union[8];
  assign io_outer_acquire_bits_union[7] = io_inner_acquire_bits_union[7];
  assign io_outer_acquire_bits_union[6] = io_inner_acquire_bits_union[6];
  assign io_outer_acquire_bits_union[5] = io_inner_acquire_bits_union[5];
  assign io_outer_acquire_bits_union[4] = io_inner_acquire_bits_union[4];
  assign io_outer_acquire_bits_union[3] = io_inner_acquire_bits_union[3];
  assign io_outer_acquire_bits_union[2] = io_inner_acquire_bits_union[2];
  assign io_outer_acquire_bits_union[1] = io_inner_acquire_bits_union[1];
  assign io_outer_acquire_bits_union[0] = io_inner_acquire_bits_union[0];
  assign io_outer_acquire_bits_data[127] = io_inner_acquire_bits_data[127];
  assign io_outer_acquire_bits_data[126] = io_inner_acquire_bits_data[126];
  assign io_outer_acquire_bits_data[125] = io_inner_acquire_bits_data[125];
  assign io_outer_acquire_bits_data[124] = io_inner_acquire_bits_data[124];
  assign io_outer_acquire_bits_data[123] = io_inner_acquire_bits_data[123];
  assign io_outer_acquire_bits_data[122] = io_inner_acquire_bits_data[122];
  assign io_outer_acquire_bits_data[121] = io_inner_acquire_bits_data[121];
  assign io_outer_acquire_bits_data[120] = io_inner_acquire_bits_data[120];
  assign io_outer_acquire_bits_data[119] = io_inner_acquire_bits_data[119];
  assign io_outer_acquire_bits_data[118] = io_inner_acquire_bits_data[118];
  assign io_outer_acquire_bits_data[117] = io_inner_acquire_bits_data[117];
  assign io_outer_acquire_bits_data[116] = io_inner_acquire_bits_data[116];
  assign io_outer_acquire_bits_data[115] = io_inner_acquire_bits_data[115];
  assign io_outer_acquire_bits_data[114] = io_inner_acquire_bits_data[114];
  assign io_outer_acquire_bits_data[113] = io_inner_acquire_bits_data[113];
  assign io_outer_acquire_bits_data[112] = io_inner_acquire_bits_data[112];
  assign io_outer_acquire_bits_data[111] = io_inner_acquire_bits_data[111];
  assign io_outer_acquire_bits_data[110] = io_inner_acquire_bits_data[110];
  assign io_outer_acquire_bits_data[109] = io_inner_acquire_bits_data[109];
  assign io_outer_acquire_bits_data[108] = io_inner_acquire_bits_data[108];
  assign io_outer_acquire_bits_data[107] = io_inner_acquire_bits_data[107];
  assign io_outer_acquire_bits_data[106] = io_inner_acquire_bits_data[106];
  assign io_outer_acquire_bits_data[105] = io_inner_acquire_bits_data[105];
  assign io_outer_acquire_bits_data[104] = io_inner_acquire_bits_data[104];
  assign io_outer_acquire_bits_data[103] = io_inner_acquire_bits_data[103];
  assign io_outer_acquire_bits_data[102] = io_inner_acquire_bits_data[102];
  assign io_outer_acquire_bits_data[101] = io_inner_acquire_bits_data[101];
  assign io_outer_acquire_bits_data[100] = io_inner_acquire_bits_data[100];
  assign io_outer_acquire_bits_data[99] = io_inner_acquire_bits_data[99];
  assign io_outer_acquire_bits_data[98] = io_inner_acquire_bits_data[98];
  assign io_outer_acquire_bits_data[97] = io_inner_acquire_bits_data[97];
  assign io_outer_acquire_bits_data[96] = io_inner_acquire_bits_data[96];
  assign io_outer_acquire_bits_data[95] = io_inner_acquire_bits_data[95];
  assign io_outer_acquire_bits_data[94] = io_inner_acquire_bits_data[94];
  assign io_outer_acquire_bits_data[93] = io_inner_acquire_bits_data[93];
  assign io_outer_acquire_bits_data[92] = io_inner_acquire_bits_data[92];
  assign io_outer_acquire_bits_data[91] = io_inner_acquire_bits_data[91];
  assign io_outer_acquire_bits_data[90] = io_inner_acquire_bits_data[90];
  assign io_outer_acquire_bits_data[89] = io_inner_acquire_bits_data[89];
  assign io_outer_acquire_bits_data[88] = io_inner_acquire_bits_data[88];
  assign io_outer_acquire_bits_data[87] = io_inner_acquire_bits_data[87];
  assign io_outer_acquire_bits_data[86] = io_inner_acquire_bits_data[86];
  assign io_outer_acquire_bits_data[85] = io_inner_acquire_bits_data[85];
  assign io_outer_acquire_bits_data[84] = io_inner_acquire_bits_data[84];
  assign io_outer_acquire_bits_data[83] = io_inner_acquire_bits_data[83];
  assign io_outer_acquire_bits_data[82] = io_inner_acquire_bits_data[82];
  assign io_outer_acquire_bits_data[81] = io_inner_acquire_bits_data[81];
  assign io_outer_acquire_bits_data[80] = io_inner_acquire_bits_data[80];
  assign io_outer_acquire_bits_data[79] = io_inner_acquire_bits_data[79];
  assign io_outer_acquire_bits_data[78] = io_inner_acquire_bits_data[78];
  assign io_outer_acquire_bits_data[77] = io_inner_acquire_bits_data[77];
  assign io_outer_acquire_bits_data[76] = io_inner_acquire_bits_data[76];
  assign io_outer_acquire_bits_data[75] = io_inner_acquire_bits_data[75];
  assign io_outer_acquire_bits_data[74] = io_inner_acquire_bits_data[74];
  assign io_outer_acquire_bits_data[73] = io_inner_acquire_bits_data[73];
  assign io_outer_acquire_bits_data[72] = io_inner_acquire_bits_data[72];
  assign io_outer_acquire_bits_data[71] = io_inner_acquire_bits_data[71];
  assign io_outer_acquire_bits_data[70] = io_inner_acquire_bits_data[70];
  assign io_outer_acquire_bits_data[69] = io_inner_acquire_bits_data[69];
  assign io_outer_acquire_bits_data[68] = io_inner_acquire_bits_data[68];
  assign io_outer_acquire_bits_data[67] = io_inner_acquire_bits_data[67];
  assign io_outer_acquire_bits_data[66] = io_inner_acquire_bits_data[66];
  assign io_outer_acquire_bits_data[65] = io_inner_acquire_bits_data[65];
  assign io_outer_acquire_bits_data[64] = io_inner_acquire_bits_data[64];
  assign io_outer_acquire_bits_data[63] = io_inner_acquire_bits_data[63];
  assign io_outer_acquire_bits_data[62] = io_inner_acquire_bits_data[62];
  assign io_outer_acquire_bits_data[61] = io_inner_acquire_bits_data[61];
  assign io_outer_acquire_bits_data[60] = io_inner_acquire_bits_data[60];
  assign io_outer_acquire_bits_data[59] = io_inner_acquire_bits_data[59];
  assign io_outer_acquire_bits_data[58] = io_inner_acquire_bits_data[58];
  assign io_outer_acquire_bits_data[57] = io_inner_acquire_bits_data[57];
  assign io_outer_acquire_bits_data[56] = io_inner_acquire_bits_data[56];
  assign io_outer_acquire_bits_data[55] = io_inner_acquire_bits_data[55];
  assign io_outer_acquire_bits_data[54] = io_inner_acquire_bits_data[54];
  assign io_outer_acquire_bits_data[53] = io_inner_acquire_bits_data[53];
  assign io_outer_acquire_bits_data[52] = io_inner_acquire_bits_data[52];
  assign io_outer_acquire_bits_data[51] = io_inner_acquire_bits_data[51];
  assign io_outer_acquire_bits_data[50] = io_inner_acquire_bits_data[50];
  assign io_outer_acquire_bits_data[49] = io_inner_acquire_bits_data[49];
  assign io_outer_acquire_bits_data[48] = io_inner_acquire_bits_data[48];
  assign io_outer_acquire_bits_data[47] = io_inner_acquire_bits_data[47];
  assign io_outer_acquire_bits_data[46] = io_inner_acquire_bits_data[46];
  assign io_outer_acquire_bits_data[45] = io_inner_acquire_bits_data[45];
  assign io_outer_acquire_bits_data[44] = io_inner_acquire_bits_data[44];
  assign io_outer_acquire_bits_data[43] = io_inner_acquire_bits_data[43];
  assign io_outer_acquire_bits_data[42] = io_inner_acquire_bits_data[42];
  assign io_outer_acquire_bits_data[41] = io_inner_acquire_bits_data[41];
  assign io_outer_acquire_bits_data[40] = io_inner_acquire_bits_data[40];
  assign io_outer_acquire_bits_data[39] = io_inner_acquire_bits_data[39];
  assign io_outer_acquire_bits_data[38] = io_inner_acquire_bits_data[38];
  assign io_outer_acquire_bits_data[37] = io_inner_acquire_bits_data[37];
  assign io_outer_acquire_bits_data[36] = io_inner_acquire_bits_data[36];
  assign io_outer_acquire_bits_data[35] = io_inner_acquire_bits_data[35];
  assign io_outer_acquire_bits_data[34] = io_inner_acquire_bits_data[34];
  assign io_outer_acquire_bits_data[33] = io_inner_acquire_bits_data[33];
  assign io_outer_acquire_bits_data[32] = io_inner_acquire_bits_data[32];
  assign io_outer_acquire_bits_data[31] = io_inner_acquire_bits_data[31];
  assign io_outer_acquire_bits_data[30] = io_inner_acquire_bits_data[30];
  assign io_outer_acquire_bits_data[29] = io_inner_acquire_bits_data[29];
  assign io_outer_acquire_bits_data[28] = io_inner_acquire_bits_data[28];
  assign io_outer_acquire_bits_data[27] = io_inner_acquire_bits_data[27];
  assign io_outer_acquire_bits_data[26] = io_inner_acquire_bits_data[26];
  assign io_outer_acquire_bits_data[25] = io_inner_acquire_bits_data[25];
  assign io_outer_acquire_bits_data[24] = io_inner_acquire_bits_data[24];
  assign io_outer_acquire_bits_data[23] = io_inner_acquire_bits_data[23];
  assign io_outer_acquire_bits_data[22] = io_inner_acquire_bits_data[22];
  assign io_outer_acquire_bits_data[21] = io_inner_acquire_bits_data[21];
  assign io_outer_acquire_bits_data[20] = io_inner_acquire_bits_data[20];
  assign io_outer_acquire_bits_data[19] = io_inner_acquire_bits_data[19];
  assign io_outer_acquire_bits_data[18] = io_inner_acquire_bits_data[18];
  assign io_outer_acquire_bits_data[17] = io_inner_acquire_bits_data[17];
  assign io_outer_acquire_bits_data[16] = io_inner_acquire_bits_data[16];
  assign io_outer_acquire_bits_data[15] = io_inner_acquire_bits_data[15];
  assign io_outer_acquire_bits_data[14] = io_inner_acquire_bits_data[14];
  assign io_outer_acquire_bits_data[13] = io_inner_acquire_bits_data[13];
  assign io_outer_acquire_bits_data[12] = io_inner_acquire_bits_data[12];
  assign io_outer_acquire_bits_data[11] = io_inner_acquire_bits_data[11];
  assign io_outer_acquire_bits_data[10] = io_inner_acquire_bits_data[10];
  assign io_outer_acquire_bits_data[9] = io_inner_acquire_bits_data[9];
  assign io_outer_acquire_bits_data[8] = io_inner_acquire_bits_data[8];
  assign io_outer_acquire_bits_data[7] = io_inner_acquire_bits_data[7];
  assign io_outer_acquire_bits_data[6] = io_inner_acquire_bits_data[6];
  assign io_outer_acquire_bits_data[5] = io_inner_acquire_bits_data[5];
  assign io_outer_acquire_bits_data[4] = io_inner_acquire_bits_data[4];
  assign io_outer_acquire_bits_data[3] = io_inner_acquire_bits_data[3];
  assign io_outer_acquire_bits_data[2] = io_inner_acquire_bits_data[2];
  assign io_outer_acquire_bits_data[1] = io_inner_acquire_bits_data[1];
  assign io_outer_acquire_bits_data[0] = io_inner_acquire_bits_data[0];
  assign io_outer_grant_ready = io_inner_grant_ready;
  assign { SV2V_UNCONNECTED_1, SV2V_UNCONNECTED_2, SV2V_UNCONNECTED_3, SV2V_UNCONNECTED_4, SV2V_UNCONNECTED_5, SV2V_UNCONNECTED_6, SV2V_UNCONNECTED_7, SV2V_UNCONNECTED_8, T50 } = T150 >> io_inner_finish_bits_manager_xact_id;

  always @(posedge clk) begin
    if(1'b1) begin
      T150[8] <= T148[8];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[7] <= T148[7];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[6] <= T148[6];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[5] <= T148[5];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[4] <= T148[4];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[3] <= T148[3];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[2] <= T148[2];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[1] <= T148[1];
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T150[0] <= T148[0];
    end 
  end


  always @(posedge clk) begin
    if(multibeat_start) begin
      xact_id_reg[3] <= T139[3];
    end 
  end


  always @(posedge clk) begin
    if(multibeat_start) begin
      xact_id_reg[2] <= T139[2];
    end 
  end


  always @(posedge clk) begin
    if(multibeat_start) begin
      xact_id_reg[1] <= T139[1];
    end 
  end


  always @(posedge clk) begin
    if(multibeat_start) begin
      xact_id_reg[0] <= T139[0];
    end 
  end


  always @(posedge clk) begin
    if(N58) begin
      xact_multibeat <= N59;
    end 
  end


  always @(posedge clk) begin
    if(T56) begin
      xact_buffer_0_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T56) begin
      xact_buffer_0_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T68) begin
      xact_buffer_1_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T68) begin
      xact_buffer_1_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T74) begin
      xact_buffer_2_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T74) begin
      xact_buffer_2_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T77) begin
      xact_buffer_3_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T77) begin
      xact_buffer_3_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T84) begin
      xact_buffer_4_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T84) begin
      xact_buffer_4_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T87) begin
      xact_buffer_5_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T87) begin
      xact_buffer_5_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T92) begin
      xact_buffer_6_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T92) begin
      xact_buffer_6_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T95) begin
      xact_buffer_7_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T95) begin
      xact_buffer_7_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T101) begin
      xact_buffer_8_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T101) begin
      xact_buffer_8_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T109) begin
      xact_buffer_0_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_buffer_1_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T115) begin
      xact_buffer_2_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T117) begin
      xact_buffer_3_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T123) begin
      xact_buffer_4_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T125) begin
      xact_buffer_5_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T129) begin
      xact_buffer_6_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T131) begin
      xact_buffer_7_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T136) begin
      xact_buffer_8_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end

  assign T4 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << io_outer_grant_bits_client_xact_id;
  assign T58 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << io_outer_acquire_bits_client_xact_id;
  assign T27 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << io_outer_acquire_bits_client_xact_id;
  assign T23 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_finish_bits_manager_xact_id;
  assign N65 = io_inner_acquire_bits_addr_beat[0] | io_inner_acquire_bits_addr_beat[1];
  assign N66 = ~N65;
  assign N67 = io_inner_acquire_bits_addr_beat[0] & io_inner_acquire_bits_addr_beat[1];
  assign N68 = io_inner_acquire_bits_addr_beat[0] & io_inner_acquire_bits_addr_beat[1];
  assign N69 = ~io_inner_acquire_bits_a_type[1];
  assign N70 = ~io_inner_acquire_bits_a_type[0];
  assign N71 = N69 | io_inner_acquire_bits_a_type[2];
  assign N72 = N70 | N71;
  assign N73 = ~N72;
  assign N74 = N69 | io_inner_acquire_bits_a_type[2];
  assign N75 = N70 | N74;
  assign N76 = ~N75;
  assign N77 = io_inner_acquire_bits_addr_beat[0] & io_inner_acquire_bits_addr_beat[1];
  assign N78 = io_outer_grant_bits_addr_beat[0] & io_outer_grant_bits_addr_beat[1];
  assign N79 = io_outer_grant_bits_g_type[2] | io_outer_grant_bits_g_type[3];
  assign N80 = io_outer_grant_bits_g_type[1] | N79;
  assign N81 = io_outer_grant_bits_g_type[0] | N80;
  assign N82 = ~N81;
  assign N83 = T150[7] & T150[8];
  assign N84 = T150[6] & N83;
  assign N85 = T150[5] & N84;
  assign N86 = T150[4] & N85;
  assign N87 = T150[3] & N86;
  assign N88 = T150[2] & N87;
  assign N89 = T150[1] & N88;
  assign N90 = T150[0] & N89;
  assign N91 = N69 | io_inner_acquire_bits_a_type[2];
  assign N92 = N70 | N91;
  assign N93 = ~N92;
  assign N94 = ~io_outer_grant_bits_g_type[2];
  assign N95 = ~io_outer_grant_bits_g_type[0];
  assign N96 = N94 | io_outer_grant_bits_g_type[3];
  assign N97 = io_outer_grant_bits_g_type[1] | N96;
  assign N98 = N95 | N97;
  assign N99 = ~N98;
  assign N100 = io_outer_grant_bits_g_type[2] | io_outer_grant_bits_g_type[3];
  assign N101 = io_outer_grant_bits_g_type[1] | N100;
  assign N102 = io_outer_grant_bits_g_type[0] | N101;
  assign N103 = ~N102;
  assign N104 = io_outer_grant_bits_g_type[2] | io_outer_grant_bits_g_type[3];
  assign N105 = io_outer_grant_bits_g_type[1] | N104;
  assign N106 = N95 | N105;
  assign N107 = ~N106;
  assign T49 = io_inner_finish_bits_manager_xact_id - io_inner_finish_bits_manager_xact_id;
  assign T48 = T49 + 1'b1;
  assign T46 = T47 ^ 1'b1;
  assign io_outer_acquire_bits_client_xact_id = (N0)? xact_id_reg : 
                                                (N1)? T139 : 1'b0;
  assign N0 = xact_multibeat;
  assign N1 = N34;
  assign T139 = (N2)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                (N3)? T140 : 1'b0;
  assign N2 = T0[0];
  assign N3 = N35;
  assign T140 = (N4)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                (N5)? T141 : 1'b0;
  assign N4 = T0[1];
  assign N5 = N36;
  assign T141 = (N6)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                (N7)? T142 : 1'b0;
  assign N6 = T0[2];
  assign N7 = N37;
  assign T142 = (N8)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                (N9)? T143 : 1'b0;
  assign N8 = T0[3];
  assign N9 = N38;
  assign T143 = (N10)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                (N11)? T144 : 1'b0;
  assign N10 = T0[4];
  assign N11 = N39;
  assign T144 = (N12)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 
                (N13)? T145 : 1'b0;
  assign N12 = T0[5];
  assign N13 = N40;
  assign T145 = (N14)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
                (N15)? { T146, T146[2:2], T146[2:2] } : 1'b0;
  assign N14 = T0[6];
  assign N15 = N41;
  assign T148 = (N16)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                (N17)? T1 : 1'b0;
  assign N16 = reset;
  assign N17 = N43;
  assign T3 = (N18)? T4 : 
              (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N18 = T5;
  assign N19 = N44;
  assign T14 = (N20)? N99 : 
               (N21)? T15 : 1'b0;
  assign N20 = io_outer_grant_bits_is_builtin_type;
  assign N21 = N45;
  assign T22 = (N22)? T23 : 
               (N23)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N22 = T24;
  assign N23 = N46;
  assign T26 = (N24)? T27 : 
               (N25)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N24 = T28;
  assign N25 = N47;
  assign io_inner_grant_bits_client_id = (N26)? xact_buffer_8_client_id : 
                                         (N27)? T52 : 1'b0;
  assign N26 = io_outer_grant_bits_client_xact_id[3];
  assign N27 = N51;
  assign T52 = (N28)? T81 : 
               (N29)? T53 : 1'b0;
  assign N28 = io_outer_grant_bits_client_xact_id[2];
  assign N29 = N52;
  assign T53 = (N30)? T72 : 
               (N31)? T54 : 1'b0;
  assign N30 = io_outer_grant_bits_client_xact_id[1];
  assign N31 = N53;
  assign T54 = (N32)? xact_buffer_1_client_id : 
               (N33)? xact_buffer_0_client_id : 1'b0;
  assign N32 = io_outer_grant_bits_client_xact_id[0];
  assign N33 = N54;
  assign T72 = (N32)? xact_buffer_3_client_id : 
               (N33)? xact_buffer_2_client_id : 1'b0;
  assign T81 = (N30)? T90 : 
               (N31)? T82 : 1'b0;
  assign T82 = (N32)? xact_buffer_5_client_id : 
               (N33)? xact_buffer_4_client_id : 1'b0;
  assign T90 = (N32)? xact_buffer_7_client_id : 
               (N33)? xact_buffer_6_client_id : 1'b0;
  assign io_inner_grant_bits_client_xact_id = (N26)? xact_buffer_8_client_xact_id : 
                                              (N27)? T105 : 1'b0;
  assign T105 = (N28)? T120 : 
                (N29)? T106 : 1'b0;
  assign T106 = (N30)? T113 : 
                (N31)? T107 : 1'b0;
  assign T107 = (N32)? xact_buffer_1_client_xact_id : 
                (N33)? xact_buffer_0_client_xact_id : 1'b0;
  assign T113 = (N32)? xact_buffer_3_client_xact_id : 
                (N33)? xact_buffer_2_client_xact_id : 1'b0;
  assign T120 = (N30)? T127 : 
                (N31)? T121 : 1'b0;
  assign T121 = (N32)? xact_buffer_5_client_xact_id : 
                (N33)? xact_buffer_4_client_xact_id : 1'b0;
  assign T127 = (N32)? xact_buffer_7_client_xact_id : 
                (N33)? xact_buffer_6_client_xact_id : 1'b0;
  assign N58 = (N16)? 1'b1 : 
               (N61)? 1'b1 : 
               (N64)? 1'b1 : 
               (N57)? 1'b0 : 1'b0;
  assign N59 = (N16)? 1'b0 : 
               (N61)? 1'b0 : 
               (N64)? 1'b1 : 1'b0;
  assign N34 = ~xact_multibeat;
  assign N35 = ~T0[0];
  assign N36 = ~T0[1];
  assign N37 = ~T0[2];
  assign N38 = ~T0[3];
  assign N39 = ~T0[4];
  assign N40 = ~T0[5];
  assign N41 = ~T0[6];
  assign N42 = ~T0[7];
  assign T146[2] = T0[7];
  assign T146[3] = N42;
  assign T0[7] = ~T150[7];
  assign T0[6] = ~T150[6];
  assign T0[5] = ~T150[5];
  assign T0[4] = ~T150[4];
  assign T0[3] = ~T150[3];
  assign T0[2] = ~T150[2];
  assign T0[1] = ~T150[1];
  assign T0[0] = ~T150[0];
  assign N43 = ~reset;
  assign T1[8] = T20[8] & T2[8];
  assign T1[7] = T20[7] & T2[7];
  assign T1[6] = T20[6] & T2[6];
  assign T1[5] = T20[5] & T2[5];
  assign T1[4] = T20[4] & T2[4];
  assign T1[3] = T20[3] & T2[3];
  assign T1[2] = T20[2] & T2[2];
  assign T1[1] = T20[1] & T2[1];
  assign T1[0] = T20[0] & T2[0];
  assign T2[8] = ~T3[8];
  assign T2[7] = ~T3[7];
  assign T2[6] = ~T3[6];
  assign T2[5] = ~T3[5];
  assign T2[4] = ~T3[4];
  assign T2[3] = ~T3[3];
  assign T2[2] = ~T3[2];
  assign T2[1] = ~T3[1];
  assign T2[0] = ~T3[0];
  assign N44 = ~T5;
  assign T5 = T10 & T6;
  assign T6 = ~T7;
  assign T7 = ~T8;
  assign T8 = io_outer_grant_bits_is_builtin_type & N82;
  assign T10 = T19 & T11;
  assign T11 = T13 | N78;
  assign T13 = ~T14;
  assign N45 = ~io_outer_grant_bits_is_builtin_type;
  assign T15 = N103 | N107;
  assign T19 = io_inner_grant_ready & io_outer_grant_valid;
  assign T20[8] = T25[8] & T21[8];
  assign T20[7] = T25[7] & T21[7];
  assign T20[6] = T25[6] & T21[6];
  assign T20[5] = T25[5] & T21[5];
  assign T20[4] = T25[4] & T21[4];
  assign T20[3] = T25[3] & T21[3];
  assign T20[2] = T25[2] & T21[2];
  assign T20[1] = T25[1] & T21[1];
  assign T20[0] = T25[0] & T21[0];
  assign T21[8] = ~T22[8];
  assign T21[7] = ~T22[7];
  assign T21[6] = ~T22[6];
  assign T21[5] = ~T22[5];
  assign T21[4] = ~T22[4];
  assign T21[3] = ~T22[3];
  assign T21[2] = ~T22[2];
  assign T21[1] = ~T22[1];
  assign T21[0] = ~T22[0];
  assign N46 = ~T24;
  assign T24 = io_inner_finish_ready & io_inner_finish_valid;
  assign T25[8] = T150[8] | T26[8];
  assign T25[7] = T150[7] | T26[7];
  assign T25[6] = T150[6] | T26[6];
  assign T25[5] = T150[5] | T26[5];
  assign T25[4] = T150[4] | T26[4];
  assign T25[3] = T150[3] | T26[3];
  assign T25[2] = T150[2] | T26[2];
  assign T25[1] = T150[1] | T26[1];
  assign T25[0] = T150[0] | T26[0];
  assign N47 = ~T28;
  assign T28 = T34 & T29;
  assign T29 = T31 | N77;
  assign T31 = ~T32;
  assign T32 = io_inner_acquire_bits_is_builtin_type & N93;
  assign T34 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign multibeat_start = multibeat_fire & N66;
  assign multibeat_fire = T39 & T37;
  assign T37 = io_inner_acquire_bits_is_builtin_type & N73;
  assign T39 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign multibeat_end = multibeat_fire & N67;
  assign io_outer_acquire_valid = io_inner_acquire_valid & xact_free;
  assign xact_free = ~N90;
  assign io_inner_finish_ready = T50 & T46;
  assign N48 = T48[0] | T48[1];
  assign N49 = N48 | T48[2];
  assign N50 = N49 | T48[3];
  assign T47 = ~N50;
  assign N51 = ~io_outer_grant_bits_client_xact_id[3];
  assign N52 = ~io_outer_grant_bits_client_xact_id[2];
  assign N53 = ~io_outer_grant_bits_client_xact_id[1];
  assign N54 = ~io_outer_grant_bits_client_xact_id[0];
  assign T56 = T60 & T58[0];
  assign T60 = T66 & T61;
  assign T61 = T63 | N68;
  assign T63 = ~T64;
  assign T64 = io_inner_acquire_bits_is_builtin_type & N76;
  assign T66 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign T68 = T60 & T58[1];
  assign T74 = T60 & T58[2];
  assign T77 = T60 & T58[3];
  assign T84 = T60 & T58[4];
  assign T87 = T60 & T58[5];
  assign T92 = T60 & T58[6];
  assign T95 = T60 & T58[7];
  assign T101 = T60 & T58[8];
  assign T109 = T60 & T58[0];
  assign T111 = T60 & T58[1];
  assign T115 = T60 & T58[2];
  assign T117 = T60 & T58[3];
  assign T123 = T60 & T58[4];
  assign T125 = T60 & T58[5];
  assign T129 = T60 & T58[6];
  assign T131 = T60 & T58[7];
  assign T136 = T60 & T58[8];
  assign io_inner_acquire_ready = io_outer_acquire_ready & xact_free;
  assign N55 = multibeat_end | reset;
  assign N56 = multibeat_start | N55;
  assign N57 = ~N56;
  assign N60 = ~reset;
  assign N61 = multibeat_end & N60;
  assign N62 = ~multibeat_end;
  assign N63 = N60 & N62;
  assign N64 = multibeat_start & N63;

endmodule