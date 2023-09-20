module ProbeUnit
(
  clk,
  reset,
  io_req_ready,
  io_req_valid,
  io_req_bits_addr_block,
  io_req_bits_p_type,
  io_rep_ready,
  io_rep_valid,
  io_rep_bits_addr_beat,
  io_rep_bits_addr_block,
  io_rep_bits_client_xact_id,
  io_rep_bits_voluntary,
  io_rep_bits_r_type,
  io_rep_bits_data,
  io_meta_read_ready,
  io_meta_read_valid,
  io_meta_read_bits_idx,
  io_meta_read_bits_tag,
  io_meta_write_ready,
  io_meta_write_valid,
  io_meta_write_bits_idx,
  io_meta_write_bits_way_en,
  io_meta_write_bits_data_tag,
  io_meta_write_bits_data_coh_state,
  io_wb_req_ready,
  io_wb_req_valid,
  io_wb_req_bits_addr_beat,
  io_wb_req_bits_addr_block,
  io_wb_req_bits_client_xact_id,
  io_wb_req_bits_voluntary,
  io_wb_req_bits_r_type,
  io_wb_req_bits_data,
  io_wb_req_bits_way_en,
  io_way_en,
  io_mshr_rdy,
  io_block_state_state
);

  input [25:0] io_req_bits_addr_block;
  input [1:0] io_req_bits_p_type;
  output [1:0] io_rep_bits_addr_beat;
  output [25:0] io_rep_bits_addr_block;
  output [5:0] io_rep_bits_client_xact_id;
  output [2:0] io_rep_bits_r_type;
  output [127:0] io_rep_bits_data;
  output [5:0] io_meta_read_bits_idx;
  output [19:0] io_meta_read_bits_tag;
  output [5:0] io_meta_write_bits_idx;
  output [3:0] io_meta_write_bits_way_en;
  output [19:0] io_meta_write_bits_data_tag;
  output [1:0] io_meta_write_bits_data_coh_state;
  output [1:0] io_wb_req_bits_addr_beat;
  output [25:0] io_wb_req_bits_addr_block;
  output [5:0] io_wb_req_bits_client_xact_id;
  output [2:0] io_wb_req_bits_r_type;
  output [127:0] io_wb_req_bits_data;
  output [3:0] io_wb_req_bits_way_en;
  input [3:0] io_way_en;
  input [1:0] io_block_state_state;
  input clk;
  input reset;
  input io_req_valid;
  input io_rep_ready;
  input io_meta_read_ready;
  input io_meta_write_ready;
  input io_wb_req_ready;
  input io_mshr_rdy;
  output io_req_ready;
  output io_rep_valid;
  output io_rep_bits_voluntary;
  output io_meta_read_valid;
  output io_meta_write_valid;
  output io_wb_req_valid;
  output io_wb_req_bits_voluntary;
  wire [1:0] io_rep_bits_addr_beat,io_meta_write_bits_data_coh_state,
  io_wb_req_bits_addr_beat,T27,T44,T57;
  wire [25:0] io_rep_bits_addr_block;
  wire [5:0] io_rep_bits_client_xact_id,io_meta_read_bits_idx,io_meta_write_bits_idx,
  io_wb_req_bits_client_xact_id;
  wire [2:0] io_rep_bits_r_type,io_wb_req_bits_r_type,T40,T41;
  wire [127:0] io_rep_bits_data,io_wb_req_bits_data;
  wire [19:0] io_meta_read_bits_tag,io_meta_write_bits_data_tag;
  wire [3:0] io_meta_write_bits_way_en;
  wire io_req_ready,io_rep_valid,io_rep_bits_voluntary,io_meta_read_valid,
  io_meta_write_valid,io_wb_req_valid,io_wb_req_bits_voluntary,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,
  N10,N11,N12,T38,T36,T35,T33,T25,T23,T22,T26,T28,N13,N14,T47_0,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N85,N86,N87,N88,N89,N90,N91,N92,N93,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N114,N115,N116,N117,N118,
  N119,N120,N121;
  wire [3:3] T32;
  wire [1:1] T50;
  wire [2:2] T47;
  wire [2:1] T42;
  reg [3:0] io_wb_req_bits_way_en,state;
  reg [1:0] T58,req_p_type;
  reg [25:0] io_wb_req_bits_addr_block;
  assign io_rep_bits_addr_beat[0] = 1'b0;
  assign io_rep_bits_addr_beat[1] = 1'b0;
  assign io_rep_bits_client_xact_id[0] = 1'b0;
  assign io_rep_bits_client_xact_id[1] = 1'b0;
  assign io_rep_bits_client_xact_id[2] = 1'b0;
  assign io_rep_bits_client_xact_id[3] = 1'b0;
  assign io_rep_bits_client_xact_id[4] = 1'b0;
  assign io_rep_bits_client_xact_id[5] = 1'b0;
  assign io_rep_bits_voluntary = 1'b0;
  assign io_rep_bits_data[0] = 1'b0;
  assign io_rep_bits_data[1] = 1'b0;
  assign io_rep_bits_data[2] = 1'b0;
  assign io_rep_bits_data[3] = 1'b0;
  assign io_rep_bits_data[4] = 1'b0;
  assign io_rep_bits_data[5] = 1'b0;
  assign io_rep_bits_data[6] = 1'b0;
  assign io_rep_bits_data[7] = 1'b0;
  assign io_rep_bits_data[8] = 1'b0;
  assign io_rep_bits_data[9] = 1'b0;
  assign io_rep_bits_data[10] = 1'b0;
  assign io_rep_bits_data[11] = 1'b0;
  assign io_rep_bits_data[12] = 1'b0;
  assign io_rep_bits_data[13] = 1'b0;
  assign io_rep_bits_data[14] = 1'b0;
  assign io_rep_bits_data[15] = 1'b0;
  assign io_rep_bits_data[16] = 1'b0;
  assign io_rep_bits_data[17] = 1'b0;
  assign io_rep_bits_data[18] = 1'b0;
  assign io_rep_bits_data[19] = 1'b0;
  assign io_rep_bits_data[20] = 1'b0;
  assign io_rep_bits_data[21] = 1'b0;
  assign io_rep_bits_data[22] = 1'b0;
  assign io_rep_bits_data[23] = 1'b0;
  assign io_rep_bits_data[24] = 1'b0;
  assign io_rep_bits_data[25] = 1'b0;
  assign io_rep_bits_data[26] = 1'b0;
  assign io_rep_bits_data[27] = 1'b0;
  assign io_rep_bits_data[28] = 1'b0;
  assign io_rep_bits_data[29] = 1'b0;
  assign io_rep_bits_data[30] = 1'b0;
  assign io_rep_bits_data[31] = 1'b0;
  assign io_rep_bits_data[32] = 1'b0;
  assign io_rep_bits_data[33] = 1'b0;
  assign io_rep_bits_data[34] = 1'b0;
  assign io_rep_bits_data[35] = 1'b0;
  assign io_rep_bits_data[36] = 1'b0;
  assign io_rep_bits_data[37] = 1'b0;
  assign io_rep_bits_data[38] = 1'b0;
  assign io_rep_bits_data[39] = 1'b0;
  assign io_rep_bits_data[40] = 1'b0;
  assign io_rep_bits_data[41] = 1'b0;
  assign io_rep_bits_data[42] = 1'b0;
  assign io_rep_bits_data[43] = 1'b0;
  assign io_rep_bits_data[44] = 1'b0;
  assign io_rep_bits_data[45] = 1'b0;
  assign io_rep_bits_data[46] = 1'b0;
  assign io_rep_bits_data[47] = 1'b0;
  assign io_rep_bits_data[48] = 1'b0;
  assign io_rep_bits_data[49] = 1'b0;
  assign io_rep_bits_data[50] = 1'b0;
  assign io_rep_bits_data[51] = 1'b0;
  assign io_rep_bits_data[52] = 1'b0;
  assign io_rep_bits_data[53] = 1'b0;
  assign io_rep_bits_data[54] = 1'b0;
  assign io_rep_bits_data[55] = 1'b0;
  assign io_rep_bits_data[56] = 1'b0;
  assign io_rep_bits_data[57] = 1'b0;
  assign io_rep_bits_data[58] = 1'b0;
  assign io_rep_bits_data[59] = 1'b0;
  assign io_rep_bits_data[60] = 1'b0;
  assign io_rep_bits_data[61] = 1'b0;
  assign io_rep_bits_data[62] = 1'b0;
  assign io_rep_bits_data[63] = 1'b0;
  assign io_rep_bits_data[64] = 1'b0;
  assign io_rep_bits_data[65] = 1'b0;
  assign io_rep_bits_data[66] = 1'b0;
  assign io_rep_bits_data[67] = 1'b0;
  assign io_rep_bits_data[68] = 1'b0;
  assign io_rep_bits_data[69] = 1'b0;
  assign io_rep_bits_data[70] = 1'b0;
  assign io_rep_bits_data[71] = 1'b0;
  assign io_rep_bits_data[72] = 1'b0;
  assign io_rep_bits_data[73] = 1'b0;
  assign io_rep_bits_data[74] = 1'b0;
  assign io_rep_bits_data[75] = 1'b0;
  assign io_rep_bits_data[76] = 1'b0;
  assign io_rep_bits_data[77] = 1'b0;
  assign io_rep_bits_data[78] = 1'b0;
  assign io_rep_bits_data[79] = 1'b0;
  assign io_rep_bits_data[80] = 1'b0;
  assign io_rep_bits_data[81] = 1'b0;
  assign io_rep_bits_data[82] = 1'b0;
  assign io_rep_bits_data[83] = 1'b0;
  assign io_rep_bits_data[84] = 1'b0;
  assign io_rep_bits_data[85] = 1'b0;
  assign io_rep_bits_data[86] = 1'b0;
  assign io_rep_bits_data[87] = 1'b0;
  assign io_rep_bits_data[88] = 1'b0;
  assign io_rep_bits_data[89] = 1'b0;
  assign io_rep_bits_data[90] = 1'b0;
  assign io_rep_bits_data[91] = 1'b0;
  assign io_rep_bits_data[92] = 1'b0;
  assign io_rep_bits_data[93] = 1'b0;
  assign io_rep_bits_data[94] = 1'b0;
  assign io_rep_bits_data[95] = 1'b0;
  assign io_rep_bits_data[96] = 1'b0;
  assign io_rep_bits_data[97] = 1'b0;
  assign io_rep_bits_data[98] = 1'b0;
  assign io_rep_bits_data[99] = 1'b0;
  assign io_rep_bits_data[100] = 1'b0;
  assign io_rep_bits_data[101] = 1'b0;
  assign io_rep_bits_data[102] = 1'b0;
  assign io_rep_bits_data[103] = 1'b0;
  assign io_rep_bits_data[104] = 1'b0;
  assign io_rep_bits_data[105] = 1'b0;
  assign io_rep_bits_data[106] = 1'b0;
  assign io_rep_bits_data[107] = 1'b0;
  assign io_rep_bits_data[108] = 1'b0;
  assign io_rep_bits_data[109] = 1'b0;
  assign io_rep_bits_data[110] = 1'b0;
  assign io_rep_bits_data[111] = 1'b0;
  assign io_rep_bits_data[112] = 1'b0;
  assign io_rep_bits_data[113] = 1'b0;
  assign io_rep_bits_data[114] = 1'b0;
  assign io_rep_bits_data[115] = 1'b0;
  assign io_rep_bits_data[116] = 1'b0;
  assign io_rep_bits_data[117] = 1'b0;
  assign io_rep_bits_data[118] = 1'b0;
  assign io_rep_bits_data[119] = 1'b0;
  assign io_rep_bits_data[120] = 1'b0;
  assign io_rep_bits_data[121] = 1'b0;
  assign io_rep_bits_data[122] = 1'b0;
  assign io_rep_bits_data[123] = 1'b0;
  assign io_rep_bits_data[124] = 1'b0;
  assign io_rep_bits_data[125] = 1'b0;
  assign io_rep_bits_data[126] = 1'b0;
  assign io_rep_bits_data[127] = 1'b0;
  assign io_wb_req_bits_addr_beat[0] = 1'b0;
  assign io_wb_req_bits_addr_beat[1] = 1'b0;
  assign io_wb_req_bits_client_xact_id[0] = 1'b0;
  assign io_wb_req_bits_client_xact_id[1] = 1'b0;
  assign io_wb_req_bits_client_xact_id[2] = 1'b0;
  assign io_wb_req_bits_client_xact_id[3] = 1'b0;
  assign io_wb_req_bits_client_xact_id[4] = 1'b0;
  assign io_wb_req_bits_client_xact_id[5] = 1'b0;
  assign io_wb_req_bits_voluntary = 1'b0;
  assign io_wb_req_bits_data[0] = 1'b0;
  assign io_wb_req_bits_data[1] = 1'b0;
  assign io_wb_req_bits_data[2] = 1'b0;
  assign io_wb_req_bits_data[3] = 1'b0;
  assign io_wb_req_bits_data[4] = 1'b0;
  assign io_wb_req_bits_data[5] = 1'b0;
  assign io_wb_req_bits_data[6] = 1'b0;
  assign io_wb_req_bits_data[7] = 1'b0;
  assign io_wb_req_bits_data[8] = 1'b0;
  assign io_wb_req_bits_data[9] = 1'b0;
  assign io_wb_req_bits_data[10] = 1'b0;
  assign io_wb_req_bits_data[11] = 1'b0;
  assign io_wb_req_bits_data[12] = 1'b0;
  assign io_wb_req_bits_data[13] = 1'b0;
  assign io_wb_req_bits_data[14] = 1'b0;
  assign io_wb_req_bits_data[15] = 1'b0;
  assign io_wb_req_bits_data[16] = 1'b0;
  assign io_wb_req_bits_data[17] = 1'b0;
  assign io_wb_req_bits_data[18] = 1'b0;
  assign io_wb_req_bits_data[19] = 1'b0;
  assign io_wb_req_bits_data[20] = 1'b0;
  assign io_wb_req_bits_data[21] = 1'b0;
  assign io_wb_req_bits_data[22] = 1'b0;
  assign io_wb_req_bits_data[23] = 1'b0;
  assign io_wb_req_bits_data[24] = 1'b0;
  assign io_wb_req_bits_data[25] = 1'b0;
  assign io_wb_req_bits_data[26] = 1'b0;
  assign io_wb_req_bits_data[27] = 1'b0;
  assign io_wb_req_bits_data[28] = 1'b0;
  assign io_wb_req_bits_data[29] = 1'b0;
  assign io_wb_req_bits_data[30] = 1'b0;
  assign io_wb_req_bits_data[31] = 1'b0;
  assign io_wb_req_bits_data[32] = 1'b0;
  assign io_wb_req_bits_data[33] = 1'b0;
  assign io_wb_req_bits_data[34] = 1'b0;
  assign io_wb_req_bits_data[35] = 1'b0;
  assign io_wb_req_bits_data[36] = 1'b0;
  assign io_wb_req_bits_data[37] = 1'b0;
  assign io_wb_req_bits_data[38] = 1'b0;
  assign io_wb_req_bits_data[39] = 1'b0;
  assign io_wb_req_bits_data[40] = 1'b0;
  assign io_wb_req_bits_data[41] = 1'b0;
  assign io_wb_req_bits_data[42] = 1'b0;
  assign io_wb_req_bits_data[43] = 1'b0;
  assign io_wb_req_bits_data[44] = 1'b0;
  assign io_wb_req_bits_data[45] = 1'b0;
  assign io_wb_req_bits_data[46] = 1'b0;
  assign io_wb_req_bits_data[47] = 1'b0;
  assign io_wb_req_bits_data[48] = 1'b0;
  assign io_wb_req_bits_data[49] = 1'b0;
  assign io_wb_req_bits_data[50] = 1'b0;
  assign io_wb_req_bits_data[51] = 1'b0;
  assign io_wb_req_bits_data[52] = 1'b0;
  assign io_wb_req_bits_data[53] = 1'b0;
  assign io_wb_req_bits_data[54] = 1'b0;
  assign io_wb_req_bits_data[55] = 1'b0;
  assign io_wb_req_bits_data[56] = 1'b0;
  assign io_wb_req_bits_data[57] = 1'b0;
  assign io_wb_req_bits_data[58] = 1'b0;
  assign io_wb_req_bits_data[59] = 1'b0;
  assign io_wb_req_bits_data[60] = 1'b0;
  assign io_wb_req_bits_data[61] = 1'b0;
  assign io_wb_req_bits_data[62] = 1'b0;
  assign io_wb_req_bits_data[63] = 1'b0;
  assign io_wb_req_bits_data[64] = 1'b0;
  assign io_wb_req_bits_data[65] = 1'b0;
  assign io_wb_req_bits_data[66] = 1'b0;
  assign io_wb_req_bits_data[67] = 1'b0;
  assign io_wb_req_bits_data[68] = 1'b0;
  assign io_wb_req_bits_data[69] = 1'b0;
  assign io_wb_req_bits_data[70] = 1'b0;
  assign io_wb_req_bits_data[71] = 1'b0;
  assign io_wb_req_bits_data[72] = 1'b0;
  assign io_wb_req_bits_data[73] = 1'b0;
  assign io_wb_req_bits_data[74] = 1'b0;
  assign io_wb_req_bits_data[75] = 1'b0;
  assign io_wb_req_bits_data[76] = 1'b0;
  assign io_wb_req_bits_data[77] = 1'b0;
  assign io_wb_req_bits_data[78] = 1'b0;
  assign io_wb_req_bits_data[79] = 1'b0;
  assign io_wb_req_bits_data[80] = 1'b0;
  assign io_wb_req_bits_data[81] = 1'b0;
  assign io_wb_req_bits_data[82] = 1'b0;
  assign io_wb_req_bits_data[83] = 1'b0;
  assign io_wb_req_bits_data[84] = 1'b0;
  assign io_wb_req_bits_data[85] = 1'b0;
  assign io_wb_req_bits_data[86] = 1'b0;
  assign io_wb_req_bits_data[87] = 1'b0;
  assign io_wb_req_bits_data[88] = 1'b0;
  assign io_wb_req_bits_data[89] = 1'b0;
  assign io_wb_req_bits_data[90] = 1'b0;
  assign io_wb_req_bits_data[91] = 1'b0;
  assign io_wb_req_bits_data[92] = 1'b0;
  assign io_wb_req_bits_data[93] = 1'b0;
  assign io_wb_req_bits_data[94] = 1'b0;
  assign io_wb_req_bits_data[95] = 1'b0;
  assign io_wb_req_bits_data[96] = 1'b0;
  assign io_wb_req_bits_data[97] = 1'b0;
  assign io_wb_req_bits_data[98] = 1'b0;
  assign io_wb_req_bits_data[99] = 1'b0;
  assign io_wb_req_bits_data[100] = 1'b0;
  assign io_wb_req_bits_data[101] = 1'b0;
  assign io_wb_req_bits_data[102] = 1'b0;
  assign io_wb_req_bits_data[103] = 1'b0;
  assign io_wb_req_bits_data[104] = 1'b0;
  assign io_wb_req_bits_data[105] = 1'b0;
  assign io_wb_req_bits_data[106] = 1'b0;
  assign io_wb_req_bits_data[107] = 1'b0;
  assign io_wb_req_bits_data[108] = 1'b0;
  assign io_wb_req_bits_data[109] = 1'b0;
  assign io_wb_req_bits_data[110] = 1'b0;
  assign io_wb_req_bits_data[111] = 1'b0;
  assign io_wb_req_bits_data[112] = 1'b0;
  assign io_wb_req_bits_data[113] = 1'b0;
  assign io_wb_req_bits_data[114] = 1'b0;
  assign io_wb_req_bits_data[115] = 1'b0;
  assign io_wb_req_bits_data[116] = 1'b0;
  assign io_wb_req_bits_data[117] = 1'b0;
  assign io_wb_req_bits_data[118] = 1'b0;
  assign io_wb_req_bits_data[119] = 1'b0;
  assign io_wb_req_bits_data[120] = 1'b0;
  assign io_wb_req_bits_data[121] = 1'b0;
  assign io_wb_req_bits_data[122] = 1'b0;
  assign io_wb_req_bits_data[123] = 1'b0;
  assign io_wb_req_bits_data[124] = 1'b0;
  assign io_wb_req_bits_data[125] = 1'b0;
  assign io_wb_req_bits_data[126] = 1'b0;
  assign io_wb_req_bits_data[127] = 1'b0;
  assign io_rep_bits_addr_block[25] = io_wb_req_bits_addr_block[25];
  assign io_meta_read_bits_tag[19] = io_wb_req_bits_addr_block[25];
  assign io_meta_write_bits_data_tag[19] = io_wb_req_bits_addr_block[25];
  assign io_rep_bits_addr_block[24] = io_wb_req_bits_addr_block[24];
  assign io_meta_read_bits_tag[18] = io_wb_req_bits_addr_block[24];
  assign io_meta_write_bits_data_tag[18] = io_wb_req_bits_addr_block[24];
  assign io_rep_bits_addr_block[23] = io_wb_req_bits_addr_block[23];
  assign io_meta_read_bits_tag[17] = io_wb_req_bits_addr_block[23];
  assign io_meta_write_bits_data_tag[17] = io_wb_req_bits_addr_block[23];
  assign io_rep_bits_addr_block[22] = io_wb_req_bits_addr_block[22];
  assign io_meta_read_bits_tag[16] = io_wb_req_bits_addr_block[22];
  assign io_meta_write_bits_data_tag[16] = io_wb_req_bits_addr_block[22];
  assign io_rep_bits_addr_block[21] = io_wb_req_bits_addr_block[21];
  assign io_meta_read_bits_tag[15] = io_wb_req_bits_addr_block[21];
  assign io_meta_write_bits_data_tag[15] = io_wb_req_bits_addr_block[21];
  assign io_rep_bits_addr_block[20] = io_wb_req_bits_addr_block[20];
  assign io_meta_read_bits_tag[14] = io_wb_req_bits_addr_block[20];
  assign io_meta_write_bits_data_tag[14] = io_wb_req_bits_addr_block[20];
  assign io_rep_bits_addr_block[19] = io_wb_req_bits_addr_block[19];
  assign io_meta_read_bits_tag[13] = io_wb_req_bits_addr_block[19];
  assign io_meta_write_bits_data_tag[13] = io_wb_req_bits_addr_block[19];
  assign io_rep_bits_addr_block[18] = io_wb_req_bits_addr_block[18];
  assign io_meta_read_bits_tag[12] = io_wb_req_bits_addr_block[18];
  assign io_meta_write_bits_data_tag[12] = io_wb_req_bits_addr_block[18];
  assign io_rep_bits_addr_block[17] = io_wb_req_bits_addr_block[17];
  assign io_meta_read_bits_tag[11] = io_wb_req_bits_addr_block[17];
  assign io_meta_write_bits_data_tag[11] = io_wb_req_bits_addr_block[17];
  assign io_rep_bits_addr_block[16] = io_wb_req_bits_addr_block[16];
  assign io_meta_read_bits_tag[10] = io_wb_req_bits_addr_block[16];
  assign io_meta_write_bits_data_tag[10] = io_wb_req_bits_addr_block[16];
  assign io_rep_bits_addr_block[15] = io_wb_req_bits_addr_block[15];
  assign io_meta_read_bits_tag[9] = io_wb_req_bits_addr_block[15];
  assign io_meta_write_bits_data_tag[9] = io_wb_req_bits_addr_block[15];
  assign io_rep_bits_addr_block[14] = io_wb_req_bits_addr_block[14];
  assign io_meta_read_bits_tag[8] = io_wb_req_bits_addr_block[14];
  assign io_meta_write_bits_data_tag[8] = io_wb_req_bits_addr_block[14];
  assign io_rep_bits_addr_block[13] = io_wb_req_bits_addr_block[13];
  assign io_meta_read_bits_tag[7] = io_wb_req_bits_addr_block[13];
  assign io_meta_write_bits_data_tag[7] = io_wb_req_bits_addr_block[13];
  assign io_rep_bits_addr_block[12] = io_wb_req_bits_addr_block[12];
  assign io_meta_read_bits_tag[6] = io_wb_req_bits_addr_block[12];
  assign io_meta_write_bits_data_tag[6] = io_wb_req_bits_addr_block[12];
  assign io_rep_bits_addr_block[11] = io_wb_req_bits_addr_block[11];
  assign io_meta_read_bits_tag[5] = io_wb_req_bits_addr_block[11];
  assign io_meta_write_bits_data_tag[5] = io_wb_req_bits_addr_block[11];
  assign io_rep_bits_addr_block[10] = io_wb_req_bits_addr_block[10];
  assign io_meta_read_bits_tag[4] = io_wb_req_bits_addr_block[10];
  assign io_meta_write_bits_data_tag[4] = io_wb_req_bits_addr_block[10];
  assign io_rep_bits_addr_block[9] = io_wb_req_bits_addr_block[9];
  assign io_meta_read_bits_tag[3] = io_wb_req_bits_addr_block[9];
  assign io_meta_write_bits_data_tag[3] = io_wb_req_bits_addr_block[9];
  assign io_rep_bits_addr_block[8] = io_wb_req_bits_addr_block[8];
  assign io_meta_read_bits_tag[2] = io_wb_req_bits_addr_block[8];
  assign io_meta_write_bits_data_tag[2] = io_wb_req_bits_addr_block[8];
  assign io_rep_bits_addr_block[7] = io_wb_req_bits_addr_block[7];
  assign io_meta_read_bits_tag[1] = io_wb_req_bits_addr_block[7];
  assign io_meta_write_bits_data_tag[1] = io_wb_req_bits_addr_block[7];
  assign io_rep_bits_addr_block[6] = io_wb_req_bits_addr_block[6];
  assign io_meta_read_bits_tag[0] = io_wb_req_bits_addr_block[6];
  assign io_meta_write_bits_data_tag[0] = io_wb_req_bits_addr_block[6];
  assign io_rep_bits_addr_block[5] = io_wb_req_bits_addr_block[5];
  assign io_meta_read_bits_idx[5] = io_wb_req_bits_addr_block[5];
  assign io_meta_write_bits_idx[5] = io_wb_req_bits_addr_block[5];
  assign io_rep_bits_addr_block[4] = io_wb_req_bits_addr_block[4];
  assign io_meta_read_bits_idx[4] = io_wb_req_bits_addr_block[4];
  assign io_meta_write_bits_idx[4] = io_wb_req_bits_addr_block[4];
  assign io_rep_bits_addr_block[3] = io_wb_req_bits_addr_block[3];
  assign io_meta_read_bits_idx[3] = io_wb_req_bits_addr_block[3];
  assign io_meta_write_bits_idx[3] = io_wb_req_bits_addr_block[3];
  assign io_rep_bits_addr_block[2] = io_wb_req_bits_addr_block[2];
  assign io_meta_read_bits_idx[2] = io_wb_req_bits_addr_block[2];
  assign io_meta_write_bits_idx[2] = io_wb_req_bits_addr_block[2];
  assign io_rep_bits_addr_block[1] = io_wb_req_bits_addr_block[1];
  assign io_meta_read_bits_idx[1] = io_wb_req_bits_addr_block[1];
  assign io_meta_write_bits_idx[1] = io_wb_req_bits_addr_block[1];
  assign io_rep_bits_addr_block[0] = io_wb_req_bits_addr_block[0];
  assign io_meta_read_bits_idx[0] = io_wb_req_bits_addr_block[0];
  assign io_meta_write_bits_idx[0] = io_wb_req_bits_addr_block[0];
  assign io_rep_bits_r_type[2] = io_wb_req_bits_r_type[2];
  assign io_rep_bits_r_type[1] = io_wb_req_bits_r_type[1];
  assign io_rep_bits_r_type[0] = io_wb_req_bits_r_type[0];
  assign io_meta_write_bits_way_en[3] = io_wb_req_bits_way_en[3];
  assign io_meta_write_bits_way_en[2] = io_wb_req_bits_way_en[2];
  assign io_meta_write_bits_way_en[1] = io_wb_req_bits_way_en[1];
  assign io_meta_write_bits_way_en[0] = io_wb_req_bits_way_en[0];

  always @(posedge clk) begin
    if(N105) begin
      io_wb_req_bits_way_en[3] <= io_way_en[3];
    end 
  end


  always @(posedge clk) begin
    if(N105) begin
      io_wb_req_bits_way_en[2] <= io_way_en[2];
    end 
  end


  always @(posedge clk) begin
    if(N105) begin
      io_wb_req_bits_way_en[1] <= io_way_en[1];
    end 
  end


  always @(posedge clk) begin
    if(N105) begin
      io_wb_req_bits_way_en[0] <= io_way_en[0];
    end 
  end


  always @(posedge clk) begin
    if(N29) begin
      state[3] <= N33;
    end 
  end


  always @(posedge clk) begin
    if(N29) begin
      state[2] <= N32;
    end 
  end


  always @(posedge clk) begin
    if(N29) begin
      state[1] <= N31;
    end 
  end


  always @(posedge clk) begin
    if(N29) begin
      state[0] <= N30;
    end 
  end


  always @(posedge clk) begin
    if(N105) begin
      T58[1] <= io_block_state_state[1];
    end 
  end


  always @(posedge clk) begin
    if(N105) begin
      T58[0] <= io_block_state_state[0];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      req_p_type[1] <= io_req_bits_p_type[1];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      req_p_type[0] <= io_req_bits_p_type[0];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[25] <= io_req_bits_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[24] <= io_req_bits_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[23] <= io_req_bits_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[22] <= io_req_bits_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[21] <= io_req_bits_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[20] <= io_req_bits_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[19] <= io_req_bits_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[18] <= io_req_bits_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[17] <= io_req_bits_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[16] <= io_req_bits_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[15] <= io_req_bits_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[14] <= io_req_bits_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[13] <= io_req_bits_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[12] <= io_req_bits_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[11] <= io_req_bits_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[10] <= io_req_bits_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[9] <= io_req_bits_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[8] <= io_req_bits_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[7] <= io_req_bits_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[6] <= io_req_bits_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[5] <= io_req_bits_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[4] <= io_req_bits_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[3] <= io_req_bits_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[2] <= io_req_bits_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[1] <= io_req_bits_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(T22) begin
      io_wb_req_bits_addr_block[0] <= io_req_bits_addr_block[0];
    end 
  end

  assign N60 = ~state[2];
  assign N61 = ~state[0];
  assign N62 = N60 | state[3];
  assign N63 = state[1] | N62;
  assign N64 = N61 | N63;
  assign io_rep_valid = ~N64;
  assign N66 = req_p_type[0] | req_p_type[1];
  assign N67 = ~N66;
  assign N68 = req_p_type[0] | req_p_type[1];
  assign N69 = ~N68;
  assign N70 = T44[0] & T44[1];
  assign N71 = ~req_p_type[0];
  assign N72 = N71 | req_p_type[1];
  assign N73 = ~N72;
  assign N74 = N71 | req_p_type[1];
  assign N75 = ~N74;
  assign N76 = T44[0] & T44[1];
  assign N77 = ~req_p_type[1];
  assign N78 = req_p_type[0] | N77;
  assign N79 = ~N78;
  assign N80 = T44[0] & T44[1];
  assign N81 = state[2] | state[3];
  assign N82 = state[1] | N81;
  assign N83 = state[0] | N82;
  assign io_req_ready = ~N83;
  assign N85 = T58[0] & T58[1];
  assign N86 = ~state[1];
  assign N87 = state[2] | state[3];
  assign N88 = N86 | N87;
  assign N89 = state[0] | N88;
  assign N90 = ~N89;
  assign N91 = state[2] | state[3];
  assign N92 = state[1] | N91;
  assign N93 = N61 | N92;
  assign io_meta_read_valid = ~N93;
  assign N95 = io_wb_req_bits_way_en[2] | io_wb_req_bits_way_en[3];
  assign N96 = io_wb_req_bits_way_en[1] | N95;
  assign N97 = io_wb_req_bits_way_en[0] | N96;
  assign N98 = N60 | state[3];
  assign N99 = state[1] | N98;
  assign N100 = state[0] | N99;
  assign N101 = ~N100;
  assign N102 = state[2] | state[3];
  assign N103 = N86 | N102;
  assign N104 = N61 | N103;
  assign N105 = ~N104;
  assign N106 = N60 | state[3];
  assign N107 = state[1] | N106;
  assign N108 = N61 | N107;
  assign N109 = ~N108;
  assign N110 = N60 | state[3];
  assign N111 = N86 | N110;
  assign N112 = state[0] | N111;
  assign io_wb_req_valid = ~N112;
  assign N114 = N60 | state[3];
  assign N115 = N86 | N114;
  assign N116 = N61 | N115;
  assign N117 = ~N116;
  assign N118 = ~state[3];
  assign N119 = state[2] | N118;
  assign N120 = state[1] | N119;
  assign N121 = state[0] | N120;
  assign io_meta_write_valid = ~N121;
  assign io_wb_req_bits_r_type = (N0)? { 1'b0, T50[1:1], T50[1:1] } : 
                                 (N1)? T40 : 1'b0;
  assign N0 = N67;
  assign N1 = N66;
  assign T40 = (N2)? { T47[2:2], 1'b0, T47_0 } : 
               (N3)? T41 : 1'b0;
  assign N2 = N73;
  assign N3 = N72;
  assign T41 = (N4)? { T42, T42[2:2] } : 
               (N5)? { 1'b0, 1'b1, 1'b1 } : 1'b0;
  assign N4 = N79;
  assign N5 = N78;
  assign T44 = (N6)? T58 : 
               (N7)? { 1'b0, 1'b0 } : 1'b0;
  assign N6 = T32[3];
  assign N7 = N14;
  assign io_meta_write_bits_data_coh_state = (N8)? { 1'b0, 1'b0 } : 
                                             (N9)? T57 : 1'b0;
  assign N8 = N69;
  assign N9 = N68;
  assign T57 = (N10)? { 1'b0, 1'b1 } : 
               (N11)? T58 : 1'b0;
  assign N10 = N75;
  assign N11 = N74;
  assign N29 = (N12)? 1'b1 : 
               (N35)? 1'b1 : 
               (N38)? 1'b1 : 
               (N41)? 1'b1 : 
               (N44)? 1'b1 : 
               (N47)? 1'b1 : 
               (N49)? 1'b1 : 
               (N52)? 1'b1 : 
               (N54)? 1'b1 : 
               (N56)? 1'b1 : 
               (N59)? 1'b1 : 
               (N28)? 1'b0 : 1'b0;
  assign N12 = reset;
  assign { N33, N32, N31, N30 } = (N12)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N35)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N38)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                  (N41)? { 1'b0, 1'b1, 1'b1, 1'b1 } : 
                                  (N44)? { T32[3:3], 1'b0, 1'b0, 1'b0 } : 
                                  (N47)? { 1'b0, 1'b1, T27 } : 
                                  (N49)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                  (N52)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                                  (N54)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
                                  (N56)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                                  (N59)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign T22 = io_req_ready & io_req_valid;
  assign T23 = io_meta_read_ready & io_meta_read_valid;
  assign T25 = N105 & T26;
  assign T26 = ~io_mshr_rdy;
  assign N13 = ~T28;
  assign T27[1] = T28;
  assign T27[0] = N13;
  assign T28 = N97 & N85;
  assign N14 = ~N97;
  assign T32[3] = N97;
  assign T33 = N109 & io_rep_ready;
  assign T35 = io_wb_req_ready & io_wb_req_valid;
  assign T36 = N117 & io_wb_req_ready;
  assign T38 = io_meta_write_ready & io_meta_write_valid;
  assign N15 = ~N80;
  assign T42[1] = N80;
  assign T42[2] = N15;
  assign N16 = ~N76;
  assign T47_0 = N76;
  assign T47[2] = N16;
  assign N17 = ~N70;
  assign T50[1] = N17;
  assign N18 = T38 | reset;
  assign N19 = T36 | N18;
  assign N20 = T35 | N19;
  assign N21 = T33 | N20;
  assign N22 = N101 | N21;
  assign N23 = T25 | N22;
  assign N24 = N105 | N23;
  assign N25 = N90 | N24;
  assign N26 = T23 | N25;
  assign N27 = T22 | N26;
  assign N28 = ~N27;
  assign N34 = ~reset;
  assign N35 = T38 & N34;
  assign N36 = ~T38;
  assign N37 = N34 & N36;
  assign N38 = T36 & N37;
  assign N39 = ~T36;
  assign N40 = N37 & N39;
  assign N41 = T35 & N40;
  assign N42 = ~T35;
  assign N43 = N40 & N42;
  assign N44 = T33 & N43;
  assign N45 = ~T33;
  assign N46 = N43 & N45;
  assign N47 = N101 & N46;
  assign N48 = N46 & N100;
  assign N49 = T25 & N48;
  assign N50 = ~T25;
  assign N51 = N48 & N50;
  assign N52 = N105 & N51;
  assign N53 = N51 & N104;
  assign N54 = N90 & N53;
  assign N55 = N53 & N89;
  assign N56 = T23 & N55;
  assign N57 = ~T23;
  assign N58 = N55 & N57;
  assign N59 = T22 & N58;

endmodule