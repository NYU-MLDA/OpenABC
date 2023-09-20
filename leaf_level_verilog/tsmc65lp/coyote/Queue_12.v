module Queue_12
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_header_src,
  io_enq_bits_header_dst,
  io_enq_bits_payload_addr_block,
  io_enq_bits_payload_client_xact_id,
  io_enq_bits_payload_addr_beat,
  io_enq_bits_payload_is_builtin_type,
  io_enq_bits_payload_a_type,
  io_enq_bits_payload_union,
  io_enq_bits_payload_data,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_header_src,
  io_deq_bits_header_dst,
  io_deq_bits_payload_addr_block,
  io_deq_bits_payload_client_xact_id,
  io_deq_bits_payload_addr_beat,
  io_deq_bits_payload_is_builtin_type,
  io_deq_bits_payload_a_type,
  io_deq_bits_payload_union,
  io_deq_bits_payload_data,
  io_count
);

  input [2:0] io_enq_bits_header_src;
  input [2:0] io_enq_bits_header_dst;
  input [25:0] io_enq_bits_payload_addr_block;
  input [5:0] io_enq_bits_payload_client_xact_id;
  input [1:0] io_enq_bits_payload_addr_beat;
  input [2:0] io_enq_bits_payload_a_type;
  input [16:0] io_enq_bits_payload_union;
  input [127:0] io_enq_bits_payload_data;
  output [2:0] io_deq_bits_header_src;
  output [2:0] io_deq_bits_header_dst;
  output [25:0] io_deq_bits_payload_addr_block;
  output [5:0] io_deq_bits_payload_client_xact_id;
  output [1:0] io_deq_bits_payload_addr_beat;
  output [2:0] io_deq_bits_payload_a_type;
  output [16:0] io_deq_bits_payload_union;
  output [127:0] io_deq_bits_payload_data;
  output [1:0] io_count;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_payload_is_builtin_type;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_deq_bits_payload_is_builtin_type;
  wire [2:0] io_deq_bits_header_src,io_deq_bits_header_dst,io_deq_bits_payload_a_type;
  wire [25:0] io_deq_bits_payload_addr_block;
  wire [5:0] io_deq_bits_payload_client_xact_id;
  wire [1:0] io_deq_bits_payload_addr_beat,io_count;
  wire [16:0] io_deq_bits_payload_union;
  wire [127:0] io_deq_bits_payload_data;
  wire io_enq_ready,io_deq_valid,io_deq_bits_payload_is_builtin_type,N0,N1,N2,N3,N4,
  do_deq,T3,do_enq,T6,ptr_match,T9,N5,empty,T31,full,N6,N7,N8,N9,N10,N11,N12,N13,N14,
  N15,N16,N17,N18,N19,N21,N22,N23,N24,N25,N26,N27,N28;
  reg R1,N20,maybe_full;
  reg [377:0] ram;
  assign N0 = N20 ^ R1;
  assign ptr_match = ~N0;
  assign T9 = do_enq ^ do_deq;
  assign io_deq_bits_header_src[2] = (N5)? ram[188] : 
                                     (N1)? ram[377] : 1'b0;
  assign N1 = R1;
  assign io_deq_bits_header_src[1] = (N5)? ram[187] : 
                                     (N1)? ram[376] : 1'b0;
  assign io_deq_bits_header_src[0] = (N5)? ram[186] : 
                                     (N1)? ram[375] : 1'b0;
  assign io_deq_bits_header_dst[2] = (N5)? ram[185] : 
                                     (N1)? ram[374] : 1'b0;
  assign io_deq_bits_header_dst[1] = (N5)? ram[184] : 
                                     (N1)? ram[373] : 1'b0;
  assign io_deq_bits_header_dst[0] = (N5)? ram[183] : 
                                     (N1)? ram[372] : 1'b0;
  assign io_deq_bits_payload_addr_block[25] = (N5)? ram[182] : 
                                              (N1)? ram[371] : 1'b0;
  assign io_deq_bits_payload_addr_block[24] = (N5)? ram[181] : 
                                              (N1)? ram[370] : 1'b0;
  assign io_deq_bits_payload_addr_block[23] = (N5)? ram[180] : 
                                              (N1)? ram[369] : 1'b0;
  assign io_deq_bits_payload_addr_block[22] = (N5)? ram[179] : 
                                              (N1)? ram[368] : 1'b0;
  assign io_deq_bits_payload_addr_block[21] = (N5)? ram[178] : 
                                              (N1)? ram[367] : 1'b0;
  assign io_deq_bits_payload_addr_block[20] = (N5)? ram[177] : 
                                              (N1)? ram[366] : 1'b0;
  assign io_deq_bits_payload_addr_block[19] = (N5)? ram[176] : 
                                              (N1)? ram[365] : 1'b0;
  assign io_deq_bits_payload_addr_block[18] = (N5)? ram[175] : 
                                              (N1)? ram[364] : 1'b0;
  assign io_deq_bits_payload_addr_block[17] = (N5)? ram[174] : 
                                              (N1)? ram[363] : 1'b0;
  assign io_deq_bits_payload_addr_block[16] = (N5)? ram[173] : 
                                              (N1)? ram[362] : 1'b0;
  assign io_deq_bits_payload_addr_block[15] = (N5)? ram[172] : 
                                              (N1)? ram[361] : 1'b0;
  assign io_deq_bits_payload_addr_block[14] = (N5)? ram[171] : 
                                              (N1)? ram[360] : 1'b0;
  assign io_deq_bits_payload_addr_block[13] = (N5)? ram[170] : 
                                              (N1)? ram[359] : 1'b0;
  assign io_deq_bits_payload_addr_block[12] = (N5)? ram[169] : 
                                              (N1)? ram[358] : 1'b0;
  assign io_deq_bits_payload_addr_block[11] = (N5)? ram[168] : 
                                              (N1)? ram[357] : 1'b0;
  assign io_deq_bits_payload_addr_block[10] = (N5)? ram[167] : 
                                              (N1)? ram[356] : 1'b0;
  assign io_deq_bits_payload_addr_block[9] = (N5)? ram[166] : 
                                             (N1)? ram[355] : 1'b0;
  assign io_deq_bits_payload_addr_block[8] = (N5)? ram[165] : 
                                             (N1)? ram[354] : 1'b0;
  assign io_deq_bits_payload_addr_block[7] = (N5)? ram[164] : 
                                             (N1)? ram[353] : 1'b0;
  assign io_deq_bits_payload_addr_block[6] = (N5)? ram[163] : 
                                             (N1)? ram[352] : 1'b0;
  assign io_deq_bits_payload_addr_block[5] = (N5)? ram[162] : 
                                             (N1)? ram[351] : 1'b0;
  assign io_deq_bits_payload_addr_block[4] = (N5)? ram[161] : 
                                             (N1)? ram[350] : 1'b0;
  assign io_deq_bits_payload_addr_block[3] = (N5)? ram[160] : 
                                             (N1)? ram[349] : 1'b0;
  assign io_deq_bits_payload_addr_block[2] = (N5)? ram[159] : 
                                             (N1)? ram[348] : 1'b0;
  assign io_deq_bits_payload_addr_block[1] = (N5)? ram[158] : 
                                             (N1)? ram[347] : 1'b0;
  assign io_deq_bits_payload_addr_block[0] = (N5)? ram[157] : 
                                             (N1)? ram[346] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[5] = (N5)? ram[156] : 
                                                 (N1)? ram[345] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[4] = (N5)? ram[155] : 
                                                 (N1)? ram[344] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[3] = (N5)? ram[154] : 
                                                 (N1)? ram[343] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[2] = (N5)? ram[153] : 
                                                 (N1)? ram[342] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[1] = (N5)? ram[152] : 
                                                 (N1)? ram[341] : 1'b0;
  assign io_deq_bits_payload_client_xact_id[0] = (N5)? ram[151] : 
                                                 (N1)? ram[340] : 1'b0;
  assign io_deq_bits_payload_addr_beat[1] = (N5)? ram[150] : 
                                            (N1)? ram[339] : 1'b0;
  assign io_deq_bits_payload_addr_beat[0] = (N5)? ram[149] : 
                                            (N1)? ram[338] : 1'b0;
  assign io_deq_bits_payload_is_builtin_type = (N5)? ram[148] : 
                                               (N1)? ram[337] : 1'b0;
  assign io_deq_bits_payload_a_type[2] = (N5)? ram[147] : 
                                         (N1)? ram[336] : 1'b0;
  assign io_deq_bits_payload_a_type[1] = (N5)? ram[146] : 
                                         (N1)? ram[335] : 1'b0;
  assign io_deq_bits_payload_a_type[0] = (N5)? ram[145] : 
                                         (N1)? ram[334] : 1'b0;
  assign io_deq_bits_payload_union[16] = (N5)? ram[144] : 
                                         (N1)? ram[333] : 1'b0;
  assign io_deq_bits_payload_union[15] = (N5)? ram[143] : 
                                         (N1)? ram[332] : 1'b0;
  assign io_deq_bits_payload_union[14] = (N5)? ram[142] : 
                                         (N1)? ram[331] : 1'b0;
  assign io_deq_bits_payload_union[13] = (N5)? ram[141] : 
                                         (N1)? ram[330] : 1'b0;
  assign io_deq_bits_payload_union[12] = (N5)? ram[140] : 
                                         (N1)? ram[329] : 1'b0;
  assign io_deq_bits_payload_union[11] = (N5)? ram[139] : 
                                         (N1)? ram[328] : 1'b0;
  assign io_deq_bits_payload_union[10] = (N5)? ram[138] : 
                                         (N1)? ram[327] : 1'b0;
  assign io_deq_bits_payload_union[9] = (N5)? ram[137] : 
                                        (N1)? ram[326] : 1'b0;
  assign io_deq_bits_payload_union[8] = (N5)? ram[136] : 
                                        (N1)? ram[325] : 1'b0;
  assign io_deq_bits_payload_union[7] = (N5)? ram[135] : 
                                        (N1)? ram[324] : 1'b0;
  assign io_deq_bits_payload_union[6] = (N5)? ram[134] : 
                                        (N1)? ram[323] : 1'b0;
  assign io_deq_bits_payload_union[5] = (N5)? ram[133] : 
                                        (N1)? ram[322] : 1'b0;
  assign io_deq_bits_payload_union[4] = (N5)? ram[132] : 
                                        (N1)? ram[321] : 1'b0;
  assign io_deq_bits_payload_union[3] = (N5)? ram[131] : 
                                        (N1)? ram[320] : 1'b0;
  assign io_deq_bits_payload_union[2] = (N5)? ram[130] : 
                                        (N1)? ram[319] : 1'b0;
  assign io_deq_bits_payload_union[1] = (N5)? ram[129] : 
                                        (N1)? ram[318] : 1'b0;
  assign io_deq_bits_payload_union[0] = (N5)? ram[128] : 
                                        (N1)? ram[317] : 1'b0;
  assign io_deq_bits_payload_data[127] = (N5)? ram[127] : 
                                         (N1)? ram[316] : 1'b0;
  assign io_deq_bits_payload_data[126] = (N5)? ram[126] : 
                                         (N1)? ram[315] : 1'b0;
  assign io_deq_bits_payload_data[125] = (N5)? ram[125] : 
                                         (N1)? ram[314] : 1'b0;
  assign io_deq_bits_payload_data[124] = (N5)? ram[124] : 
                                         (N1)? ram[313] : 1'b0;
  assign io_deq_bits_payload_data[123] = (N5)? ram[123] : 
                                         (N1)? ram[312] : 1'b0;
  assign io_deq_bits_payload_data[122] = (N5)? ram[122] : 
                                         (N1)? ram[311] : 1'b0;
  assign io_deq_bits_payload_data[121] = (N5)? ram[121] : 
                                         (N1)? ram[310] : 1'b0;
  assign io_deq_bits_payload_data[120] = (N5)? ram[120] : 
                                         (N1)? ram[309] : 1'b0;
  assign io_deq_bits_payload_data[119] = (N5)? ram[119] : 
                                         (N1)? ram[308] : 1'b0;
  assign io_deq_bits_payload_data[118] = (N5)? ram[118] : 
                                         (N1)? ram[307] : 1'b0;
  assign io_deq_bits_payload_data[117] = (N5)? ram[117] : 
                                         (N1)? ram[306] : 1'b0;
  assign io_deq_bits_payload_data[116] = (N5)? ram[116] : 
                                         (N1)? ram[305] : 1'b0;
  assign io_deq_bits_payload_data[115] = (N5)? ram[115] : 
                                         (N1)? ram[304] : 1'b0;
  assign io_deq_bits_payload_data[114] = (N5)? ram[114] : 
                                         (N1)? ram[303] : 1'b0;
  assign io_deq_bits_payload_data[113] = (N5)? ram[113] : 
                                         (N1)? ram[302] : 1'b0;
  assign io_deq_bits_payload_data[112] = (N5)? ram[112] : 
                                         (N1)? ram[301] : 1'b0;
  assign io_deq_bits_payload_data[111] = (N5)? ram[111] : 
                                         (N1)? ram[300] : 1'b0;
  assign io_deq_bits_payload_data[110] = (N5)? ram[110] : 
                                         (N1)? ram[299] : 1'b0;
  assign io_deq_bits_payload_data[109] = (N5)? ram[109] : 
                                         (N1)? ram[298] : 1'b0;
  assign io_deq_bits_payload_data[108] = (N5)? ram[108] : 
                                         (N1)? ram[297] : 1'b0;
  assign io_deq_bits_payload_data[107] = (N5)? ram[107] : 
                                         (N1)? ram[296] : 1'b0;
  assign io_deq_bits_payload_data[106] = (N5)? ram[106] : 
                                         (N1)? ram[295] : 1'b0;
  assign io_deq_bits_payload_data[105] = (N5)? ram[105] : 
                                         (N1)? ram[294] : 1'b0;
  assign io_deq_bits_payload_data[104] = (N5)? ram[104] : 
                                         (N1)? ram[293] : 1'b0;
  assign io_deq_bits_payload_data[103] = (N5)? ram[103] : 
                                         (N1)? ram[292] : 1'b0;
  assign io_deq_bits_payload_data[102] = (N5)? ram[102] : 
                                         (N1)? ram[291] : 1'b0;
  assign io_deq_bits_payload_data[101] = (N5)? ram[101] : 
                                         (N1)? ram[290] : 1'b0;
  assign io_deq_bits_payload_data[100] = (N5)? ram[100] : 
                                         (N1)? ram[289] : 1'b0;
  assign io_deq_bits_payload_data[99] = (N5)? ram[99] : 
                                        (N1)? ram[288] : 1'b0;
  assign io_deq_bits_payload_data[98] = (N5)? ram[98] : 
                                        (N1)? ram[287] : 1'b0;
  assign io_deq_bits_payload_data[97] = (N5)? ram[97] : 
                                        (N1)? ram[286] : 1'b0;
  assign io_deq_bits_payload_data[96] = (N5)? ram[96] : 
                                        (N1)? ram[285] : 1'b0;
  assign io_deq_bits_payload_data[95] = (N5)? ram[95] : 
                                        (N1)? ram[284] : 1'b0;
  assign io_deq_bits_payload_data[94] = (N5)? ram[94] : 
                                        (N1)? ram[283] : 1'b0;
  assign io_deq_bits_payload_data[93] = (N5)? ram[93] : 
                                        (N1)? ram[282] : 1'b0;
  assign io_deq_bits_payload_data[92] = (N5)? ram[92] : 
                                        (N1)? ram[281] : 1'b0;
  assign io_deq_bits_payload_data[91] = (N5)? ram[91] : 
                                        (N1)? ram[280] : 1'b0;
  assign io_deq_bits_payload_data[90] = (N5)? ram[90] : 
                                        (N1)? ram[279] : 1'b0;
  assign io_deq_bits_payload_data[89] = (N5)? ram[89] : 
                                        (N1)? ram[278] : 1'b0;
  assign io_deq_bits_payload_data[88] = (N5)? ram[88] : 
                                        (N1)? ram[277] : 1'b0;
  assign io_deq_bits_payload_data[87] = (N5)? ram[87] : 
                                        (N1)? ram[276] : 1'b0;
  assign io_deq_bits_payload_data[86] = (N5)? ram[86] : 
                                        (N1)? ram[275] : 1'b0;
  assign io_deq_bits_payload_data[85] = (N5)? ram[85] : 
                                        (N1)? ram[274] : 1'b0;
  assign io_deq_bits_payload_data[84] = (N5)? ram[84] : 
                                        (N1)? ram[273] : 1'b0;
  assign io_deq_bits_payload_data[83] = (N5)? ram[83] : 
                                        (N1)? ram[272] : 1'b0;
  assign io_deq_bits_payload_data[82] = (N5)? ram[82] : 
                                        (N1)? ram[271] : 1'b0;
  assign io_deq_bits_payload_data[81] = (N5)? ram[81] : 
                                        (N1)? ram[270] : 1'b0;
  assign io_deq_bits_payload_data[80] = (N5)? ram[80] : 
                                        (N1)? ram[269] : 1'b0;
  assign io_deq_bits_payload_data[79] = (N5)? ram[79] : 
                                        (N1)? ram[268] : 1'b0;
  assign io_deq_bits_payload_data[78] = (N5)? ram[78] : 
                                        (N1)? ram[267] : 1'b0;
  assign io_deq_bits_payload_data[77] = (N5)? ram[77] : 
                                        (N1)? ram[266] : 1'b0;
  assign io_deq_bits_payload_data[76] = (N5)? ram[76] : 
                                        (N1)? ram[265] : 1'b0;
  assign io_deq_bits_payload_data[75] = (N5)? ram[75] : 
                                        (N1)? ram[264] : 1'b0;
  assign io_deq_bits_payload_data[74] = (N5)? ram[74] : 
                                        (N1)? ram[263] : 1'b0;
  assign io_deq_bits_payload_data[73] = (N5)? ram[73] : 
                                        (N1)? ram[262] : 1'b0;
  assign io_deq_bits_payload_data[72] = (N5)? ram[72] : 
                                        (N1)? ram[261] : 1'b0;
  assign io_deq_bits_payload_data[71] = (N5)? ram[71] : 
                                        (N1)? ram[260] : 1'b0;
  assign io_deq_bits_payload_data[70] = (N5)? ram[70] : 
                                        (N1)? ram[259] : 1'b0;
  assign io_deq_bits_payload_data[69] = (N5)? ram[69] : 
                                        (N1)? ram[258] : 1'b0;
  assign io_deq_bits_payload_data[68] = (N5)? ram[68] : 
                                        (N1)? ram[257] : 1'b0;
  assign io_deq_bits_payload_data[67] = (N5)? ram[67] : 
                                        (N1)? ram[256] : 1'b0;
  assign io_deq_bits_payload_data[66] = (N5)? ram[66] : 
                                        (N1)? ram[255] : 1'b0;
  assign io_deq_bits_payload_data[65] = (N5)? ram[65] : 
                                        (N1)? ram[254] : 1'b0;
  assign io_deq_bits_payload_data[64] = (N5)? ram[64] : 
                                        (N1)? ram[253] : 1'b0;
  assign io_deq_bits_payload_data[63] = (N5)? ram[63] : 
                                        (N1)? ram[252] : 1'b0;
  assign io_deq_bits_payload_data[62] = (N5)? ram[62] : 
                                        (N1)? ram[251] : 1'b0;
  assign io_deq_bits_payload_data[61] = (N5)? ram[61] : 
                                        (N1)? ram[250] : 1'b0;
  assign io_deq_bits_payload_data[60] = (N5)? ram[60] : 
                                        (N1)? ram[249] : 1'b0;
  assign io_deq_bits_payload_data[59] = (N5)? ram[59] : 
                                        (N1)? ram[248] : 1'b0;
  assign io_deq_bits_payload_data[58] = (N5)? ram[58] : 
                                        (N1)? ram[247] : 1'b0;
  assign io_deq_bits_payload_data[57] = (N5)? ram[57] : 
                                        (N1)? ram[246] : 1'b0;
  assign io_deq_bits_payload_data[56] = (N5)? ram[56] : 
                                        (N1)? ram[245] : 1'b0;
  assign io_deq_bits_payload_data[55] = (N5)? ram[55] : 
                                        (N1)? ram[244] : 1'b0;
  assign io_deq_bits_payload_data[54] = (N5)? ram[54] : 
                                        (N1)? ram[243] : 1'b0;
  assign io_deq_bits_payload_data[53] = (N5)? ram[53] : 
                                        (N1)? ram[242] : 1'b0;
  assign io_deq_bits_payload_data[52] = (N5)? ram[52] : 
                                        (N1)? ram[241] : 1'b0;
  assign io_deq_bits_payload_data[51] = (N5)? ram[51] : 
                                        (N1)? ram[240] : 1'b0;
  assign io_deq_bits_payload_data[50] = (N5)? ram[50] : 
                                        (N1)? ram[239] : 1'b0;
  assign io_deq_bits_payload_data[49] = (N5)? ram[49] : 
                                        (N1)? ram[238] : 1'b0;
  assign io_deq_bits_payload_data[48] = (N5)? ram[48] : 
                                        (N1)? ram[237] : 1'b0;
  assign io_deq_bits_payload_data[47] = (N5)? ram[47] : 
                                        (N1)? ram[236] : 1'b0;
  assign io_deq_bits_payload_data[46] = (N5)? ram[46] : 
                                        (N1)? ram[235] : 1'b0;
  assign io_deq_bits_payload_data[45] = (N5)? ram[45] : 
                                        (N1)? ram[234] : 1'b0;
  assign io_deq_bits_payload_data[44] = (N5)? ram[44] : 
                                        (N1)? ram[233] : 1'b0;
  assign io_deq_bits_payload_data[43] = (N5)? ram[43] : 
                                        (N1)? ram[232] : 1'b0;
  assign io_deq_bits_payload_data[42] = (N5)? ram[42] : 
                                        (N1)? ram[231] : 1'b0;
  assign io_deq_bits_payload_data[41] = (N5)? ram[41] : 
                                        (N1)? ram[230] : 1'b0;
  assign io_deq_bits_payload_data[40] = (N5)? ram[40] : 
                                        (N1)? ram[229] : 1'b0;
  assign io_deq_bits_payload_data[39] = (N5)? ram[39] : 
                                        (N1)? ram[228] : 1'b0;
  assign io_deq_bits_payload_data[38] = (N5)? ram[38] : 
                                        (N1)? ram[227] : 1'b0;
  assign io_deq_bits_payload_data[37] = (N5)? ram[37] : 
                                        (N1)? ram[226] : 1'b0;
  assign io_deq_bits_payload_data[36] = (N5)? ram[36] : 
                                        (N1)? ram[225] : 1'b0;
  assign io_deq_bits_payload_data[35] = (N5)? ram[35] : 
                                        (N1)? ram[224] : 1'b0;
  assign io_deq_bits_payload_data[34] = (N5)? ram[34] : 
                                        (N1)? ram[223] : 1'b0;
  assign io_deq_bits_payload_data[33] = (N5)? ram[33] : 
                                        (N1)? ram[222] : 1'b0;
  assign io_deq_bits_payload_data[32] = (N5)? ram[32] : 
                                        (N1)? ram[221] : 1'b0;
  assign io_deq_bits_payload_data[31] = (N5)? ram[31] : 
                                        (N1)? ram[220] : 1'b0;
  assign io_deq_bits_payload_data[30] = (N5)? ram[30] : 
                                        (N1)? ram[219] : 1'b0;
  assign io_deq_bits_payload_data[29] = (N5)? ram[29] : 
                                        (N1)? ram[218] : 1'b0;
  assign io_deq_bits_payload_data[28] = (N5)? ram[28] : 
                                        (N1)? ram[217] : 1'b0;
  assign io_deq_bits_payload_data[27] = (N5)? ram[27] : 
                                        (N1)? ram[216] : 1'b0;
  assign io_deq_bits_payload_data[26] = (N5)? ram[26] : 
                                        (N1)? ram[215] : 1'b0;
  assign io_deq_bits_payload_data[25] = (N5)? ram[25] : 
                                        (N1)? ram[214] : 1'b0;
  assign io_deq_bits_payload_data[24] = (N5)? ram[24] : 
                                        (N1)? ram[213] : 1'b0;
  assign io_deq_bits_payload_data[23] = (N5)? ram[23] : 
                                        (N1)? ram[212] : 1'b0;
  assign io_deq_bits_payload_data[22] = (N5)? ram[22] : 
                                        (N1)? ram[211] : 1'b0;
  assign io_deq_bits_payload_data[21] = (N5)? ram[21] : 
                                        (N1)? ram[210] : 1'b0;
  assign io_deq_bits_payload_data[20] = (N5)? ram[20] : 
                                        (N1)? ram[209] : 1'b0;
  assign io_deq_bits_payload_data[19] = (N5)? ram[19] : 
                                        (N1)? ram[208] : 1'b0;
  assign io_deq_bits_payload_data[18] = (N5)? ram[18] : 
                                        (N1)? ram[207] : 1'b0;
  assign io_deq_bits_payload_data[17] = (N5)? ram[17] : 
                                        (N1)? ram[206] : 1'b0;
  assign io_deq_bits_payload_data[16] = (N5)? ram[16] : 
                                        (N1)? ram[205] : 1'b0;
  assign io_deq_bits_payload_data[15] = (N5)? ram[15] : 
                                        (N1)? ram[204] : 1'b0;
  assign io_deq_bits_payload_data[14] = (N5)? ram[14] : 
                                        (N1)? ram[203] : 1'b0;
  assign io_deq_bits_payload_data[13] = (N5)? ram[13] : 
                                        (N1)? ram[202] : 1'b0;
  assign io_deq_bits_payload_data[12] = (N5)? ram[12] : 
                                        (N1)? ram[201] : 1'b0;
  assign io_deq_bits_payload_data[11] = (N5)? ram[11] : 
                                        (N1)? ram[200] : 1'b0;
  assign io_deq_bits_payload_data[10] = (N5)? ram[10] : 
                                        (N1)? ram[199] : 1'b0;
  assign io_deq_bits_payload_data[9] = (N5)? ram[9] : 
                                       (N1)? ram[198] : 1'b0;
  assign io_deq_bits_payload_data[8] = (N5)? ram[8] : 
                                       (N1)? ram[197] : 1'b0;
  assign io_deq_bits_payload_data[7] = (N5)? ram[7] : 
                                       (N1)? ram[196] : 1'b0;
  assign io_deq_bits_payload_data[6] = (N5)? ram[6] : 
                                       (N1)? ram[195] : 1'b0;
  assign io_deq_bits_payload_data[5] = (N5)? ram[5] : 
                                       (N1)? ram[194] : 1'b0;
  assign io_deq_bits_payload_data[4] = (N5)? ram[4] : 
                                       (N1)? ram[193] : 1'b0;
  assign io_deq_bits_payload_data[3] = (N5)? ram[3] : 
                                       (N1)? ram[192] : 1'b0;
  assign io_deq_bits_payload_data[2] = (N5)? ram[2] : 
                                       (N1)? ram[191] : 1'b0;
  assign io_deq_bits_payload_data[1] = (N5)? ram[1] : 
                                       (N1)? ram[190] : 1'b0;
  assign io_deq_bits_payload_data[0] = (N5)? ram[0] : 
                                       (N1)? ram[189] : 1'b0;

  always @(posedge clk) begin
    if(N8) begin
      R1 <= N9;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      N20 <= N13;
    end 
  end


  always @(posedge clk) begin
    if(N16) begin
      maybe_full <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[377] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[376] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[375] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[374] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[373] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[372] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[371] <= io_enq_bits_payload_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[370] <= io_enq_bits_payload_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[369] <= io_enq_bits_payload_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[368] <= io_enq_bits_payload_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[367] <= io_enq_bits_payload_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[366] <= io_enq_bits_payload_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[365] <= io_enq_bits_payload_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[364] <= io_enq_bits_payload_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[363] <= io_enq_bits_payload_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[362] <= io_enq_bits_payload_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[361] <= io_enq_bits_payload_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[360] <= io_enq_bits_payload_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[359] <= io_enq_bits_payload_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[358] <= io_enq_bits_payload_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[357] <= io_enq_bits_payload_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[356] <= io_enq_bits_payload_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[355] <= io_enq_bits_payload_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[354] <= io_enq_bits_payload_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[353] <= io_enq_bits_payload_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[352] <= io_enq_bits_payload_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[351] <= io_enq_bits_payload_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[350] <= io_enq_bits_payload_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[349] <= io_enq_bits_payload_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[348] <= io_enq_bits_payload_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[347] <= io_enq_bits_payload_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[346] <= io_enq_bits_payload_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[345] <= io_enq_bits_payload_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[344] <= io_enq_bits_payload_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[343] <= io_enq_bits_payload_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[342] <= io_enq_bits_payload_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[341] <= io_enq_bits_payload_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[340] <= io_enq_bits_payload_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[339] <= io_enq_bits_payload_addr_beat[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[338] <= io_enq_bits_payload_addr_beat[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[337] <= io_enq_bits_payload_is_builtin_type;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[336] <= io_enq_bits_payload_a_type[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[335] <= io_enq_bits_payload_a_type[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[334] <= io_enq_bits_payload_a_type[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[333] <= io_enq_bits_payload_union[16];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[332] <= io_enq_bits_payload_union[15];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[331] <= io_enq_bits_payload_union[14];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[330] <= io_enq_bits_payload_union[13];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[329] <= io_enq_bits_payload_union[12];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[328] <= io_enq_bits_payload_union[11];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[327] <= io_enq_bits_payload_union[10];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[326] <= io_enq_bits_payload_union[9];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[325] <= io_enq_bits_payload_union[8];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[324] <= io_enq_bits_payload_union[7];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[323] <= io_enq_bits_payload_union[6];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[322] <= io_enq_bits_payload_union[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[321] <= io_enq_bits_payload_union[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[320] <= io_enq_bits_payload_union[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[319] <= io_enq_bits_payload_union[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[318] <= io_enq_bits_payload_union[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[317] <= io_enq_bits_payload_union[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[316] <= io_enq_bits_payload_data[127];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[315] <= io_enq_bits_payload_data[126];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[314] <= io_enq_bits_payload_data[125];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[313] <= io_enq_bits_payload_data[124];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[312] <= io_enq_bits_payload_data[123];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[311] <= io_enq_bits_payload_data[122];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[310] <= io_enq_bits_payload_data[121];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[309] <= io_enq_bits_payload_data[120];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[308] <= io_enq_bits_payload_data[119];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[307] <= io_enq_bits_payload_data[118];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[306] <= io_enq_bits_payload_data[117];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[305] <= io_enq_bits_payload_data[116];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[304] <= io_enq_bits_payload_data[115];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[303] <= io_enq_bits_payload_data[114];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[302] <= io_enq_bits_payload_data[113];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[301] <= io_enq_bits_payload_data[112];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[300] <= io_enq_bits_payload_data[111];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[299] <= io_enq_bits_payload_data[110];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[298] <= io_enq_bits_payload_data[109];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[297] <= io_enq_bits_payload_data[108];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[296] <= io_enq_bits_payload_data[107];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[295] <= io_enq_bits_payload_data[106];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[294] <= io_enq_bits_payload_data[105];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[293] <= io_enq_bits_payload_data[104];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[292] <= io_enq_bits_payload_data[103];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[291] <= io_enq_bits_payload_data[102];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[290] <= io_enq_bits_payload_data[101];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[289] <= io_enq_bits_payload_data[100];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[288] <= io_enq_bits_payload_data[99];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[287] <= io_enq_bits_payload_data[98];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[286] <= io_enq_bits_payload_data[97];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[285] <= io_enq_bits_payload_data[96];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[284] <= io_enq_bits_payload_data[95];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[283] <= io_enq_bits_payload_data[94];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[282] <= io_enq_bits_payload_data[93];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[281] <= io_enq_bits_payload_data[92];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[280] <= io_enq_bits_payload_data[91];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[279] <= io_enq_bits_payload_data[90];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[278] <= io_enq_bits_payload_data[89];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[277] <= io_enq_bits_payload_data[88];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[276] <= io_enq_bits_payload_data[87];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[275] <= io_enq_bits_payload_data[86];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[274] <= io_enq_bits_payload_data[85];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[273] <= io_enq_bits_payload_data[84];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[272] <= io_enq_bits_payload_data[83];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[271] <= io_enq_bits_payload_data[82];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[270] <= io_enq_bits_payload_data[81];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[269] <= io_enq_bits_payload_data[80];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[268] <= io_enq_bits_payload_data[79];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[267] <= io_enq_bits_payload_data[78];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[266] <= io_enq_bits_payload_data[77];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[265] <= io_enq_bits_payload_data[76];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[264] <= io_enq_bits_payload_data[75];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[263] <= io_enq_bits_payload_data[74];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[262] <= io_enq_bits_payload_data[73];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[261] <= io_enq_bits_payload_data[72];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[260] <= io_enq_bits_payload_data[71];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[259] <= io_enq_bits_payload_data[70];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[258] <= io_enq_bits_payload_data[69];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[257] <= io_enq_bits_payload_data[68];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[256] <= io_enq_bits_payload_data[67];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[255] <= io_enq_bits_payload_data[66];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[254] <= io_enq_bits_payload_data[65];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[253] <= io_enq_bits_payload_data[64];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[252] <= io_enq_bits_payload_data[63];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[251] <= io_enq_bits_payload_data[62];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[250] <= io_enq_bits_payload_data[61];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[249] <= io_enq_bits_payload_data[60];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[248] <= io_enq_bits_payload_data[59];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[247] <= io_enq_bits_payload_data[58];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[246] <= io_enq_bits_payload_data[57];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[245] <= io_enq_bits_payload_data[56];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[244] <= io_enq_bits_payload_data[55];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[243] <= io_enq_bits_payload_data[54];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[242] <= io_enq_bits_payload_data[53];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[241] <= io_enq_bits_payload_data[52];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[240] <= io_enq_bits_payload_data[51];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[239] <= io_enq_bits_payload_data[50];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[238] <= io_enq_bits_payload_data[49];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[237] <= io_enq_bits_payload_data[48];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[236] <= io_enq_bits_payload_data[47];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[235] <= io_enq_bits_payload_data[46];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[234] <= io_enq_bits_payload_data[45];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[233] <= io_enq_bits_payload_data[44];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[232] <= io_enq_bits_payload_data[43];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[231] <= io_enq_bits_payload_data[42];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[230] <= io_enq_bits_payload_data[41];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[229] <= io_enq_bits_payload_data[40];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[228] <= io_enq_bits_payload_data[39];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[227] <= io_enq_bits_payload_data[38];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[226] <= io_enq_bits_payload_data[37];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[225] <= io_enq_bits_payload_data[36];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[224] <= io_enq_bits_payload_data[35];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[223] <= io_enq_bits_payload_data[34];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[222] <= io_enq_bits_payload_data[33];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[221] <= io_enq_bits_payload_data[32];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[220] <= io_enq_bits_payload_data[31];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[219] <= io_enq_bits_payload_data[30];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[218] <= io_enq_bits_payload_data[29];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[217] <= io_enq_bits_payload_data[28];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[216] <= io_enq_bits_payload_data[27];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[215] <= io_enq_bits_payload_data[26];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[214] <= io_enq_bits_payload_data[25];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[213] <= io_enq_bits_payload_data[24];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[212] <= io_enq_bits_payload_data[23];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[211] <= io_enq_bits_payload_data[22];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[210] <= io_enq_bits_payload_data[21];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[209] <= io_enq_bits_payload_data[20];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[208] <= io_enq_bits_payload_data[19];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[207] <= io_enq_bits_payload_data[18];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[206] <= io_enq_bits_payload_data[17];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[205] <= io_enq_bits_payload_data[16];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[204] <= io_enq_bits_payload_data[15];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[203] <= io_enq_bits_payload_data[14];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[202] <= io_enq_bits_payload_data[13];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[201] <= io_enq_bits_payload_data[12];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[200] <= io_enq_bits_payload_data[11];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[199] <= io_enq_bits_payload_data[10];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[198] <= io_enq_bits_payload_data[9];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[197] <= io_enq_bits_payload_data[8];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[196] <= io_enq_bits_payload_data[7];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[195] <= io_enq_bits_payload_data[6];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[194] <= io_enq_bits_payload_data[5];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[193] <= io_enq_bits_payload_data[4];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[192] <= io_enq_bits_payload_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[191] <= io_enq_bits_payload_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[190] <= io_enq_bits_payload_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[189] <= io_enq_bits_payload_data[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[188] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[187] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[186] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[185] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[184] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[183] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[182] <= io_enq_bits_payload_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[181] <= io_enq_bits_payload_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[180] <= io_enq_bits_payload_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[179] <= io_enq_bits_payload_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[178] <= io_enq_bits_payload_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[177] <= io_enq_bits_payload_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[176] <= io_enq_bits_payload_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[175] <= io_enq_bits_payload_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[174] <= io_enq_bits_payload_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[173] <= io_enq_bits_payload_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[172] <= io_enq_bits_payload_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[171] <= io_enq_bits_payload_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[170] <= io_enq_bits_payload_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[169] <= io_enq_bits_payload_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[168] <= io_enq_bits_payload_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[167] <= io_enq_bits_payload_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[166] <= io_enq_bits_payload_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[165] <= io_enq_bits_payload_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[164] <= io_enq_bits_payload_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[163] <= io_enq_bits_payload_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[162] <= io_enq_bits_payload_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[161] <= io_enq_bits_payload_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[160] <= io_enq_bits_payload_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[159] <= io_enq_bits_payload_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[158] <= io_enq_bits_payload_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[157] <= io_enq_bits_payload_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[156] <= io_enq_bits_payload_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[155] <= io_enq_bits_payload_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[154] <= io_enq_bits_payload_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[153] <= io_enq_bits_payload_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[152] <= io_enq_bits_payload_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[151] <= io_enq_bits_payload_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[150] <= io_enq_bits_payload_addr_beat[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[149] <= io_enq_bits_payload_addr_beat[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[148] <= io_enq_bits_payload_is_builtin_type;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[147] <= io_enq_bits_payload_a_type[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[146] <= io_enq_bits_payload_a_type[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[145] <= io_enq_bits_payload_a_type[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[144] <= io_enq_bits_payload_union[16];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[143] <= io_enq_bits_payload_union[15];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[142] <= io_enq_bits_payload_union[14];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[141] <= io_enq_bits_payload_union[13];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[140] <= io_enq_bits_payload_union[12];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[139] <= io_enq_bits_payload_union[11];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[138] <= io_enq_bits_payload_union[10];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[137] <= io_enq_bits_payload_union[9];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[136] <= io_enq_bits_payload_union[8];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[135] <= io_enq_bits_payload_union[7];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[134] <= io_enq_bits_payload_union[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[133] <= io_enq_bits_payload_union[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[132] <= io_enq_bits_payload_union[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[131] <= io_enq_bits_payload_union[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[130] <= io_enq_bits_payload_union[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[129] <= io_enq_bits_payload_union[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[128] <= io_enq_bits_payload_union[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[127] <= io_enq_bits_payload_data[127];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[126] <= io_enq_bits_payload_data[126];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[125] <= io_enq_bits_payload_data[125];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[124] <= io_enq_bits_payload_data[124];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[123] <= io_enq_bits_payload_data[123];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[122] <= io_enq_bits_payload_data[122];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[121] <= io_enq_bits_payload_data[121];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[120] <= io_enq_bits_payload_data[120];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[119] <= io_enq_bits_payload_data[119];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[118] <= io_enq_bits_payload_data[118];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[117] <= io_enq_bits_payload_data[117];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[116] <= io_enq_bits_payload_data[116];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[115] <= io_enq_bits_payload_data[115];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[114] <= io_enq_bits_payload_data[114];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[113] <= io_enq_bits_payload_data[113];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[112] <= io_enq_bits_payload_data[112];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[111] <= io_enq_bits_payload_data[111];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[110] <= io_enq_bits_payload_data[110];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[109] <= io_enq_bits_payload_data[109];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[108] <= io_enq_bits_payload_data[108];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[107] <= io_enq_bits_payload_data[107];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[106] <= io_enq_bits_payload_data[106];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[105] <= io_enq_bits_payload_data[105];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[104] <= io_enq_bits_payload_data[104];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[103] <= io_enq_bits_payload_data[103];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[102] <= io_enq_bits_payload_data[102];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[101] <= io_enq_bits_payload_data[101];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[100] <= io_enq_bits_payload_data[100];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[99] <= io_enq_bits_payload_data[99];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[98] <= io_enq_bits_payload_data[98];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[97] <= io_enq_bits_payload_data[97];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[96] <= io_enq_bits_payload_data[96];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[95] <= io_enq_bits_payload_data[95];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[94] <= io_enq_bits_payload_data[94];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[93] <= io_enq_bits_payload_data[93];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[92] <= io_enq_bits_payload_data[92];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[91] <= io_enq_bits_payload_data[91];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[90] <= io_enq_bits_payload_data[90];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[89] <= io_enq_bits_payload_data[89];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[88] <= io_enq_bits_payload_data[88];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[87] <= io_enq_bits_payload_data[87];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[86] <= io_enq_bits_payload_data[86];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[85] <= io_enq_bits_payload_data[85];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[84] <= io_enq_bits_payload_data[84];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[83] <= io_enq_bits_payload_data[83];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[82] <= io_enq_bits_payload_data[82];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[81] <= io_enq_bits_payload_data[81];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[80] <= io_enq_bits_payload_data[80];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[79] <= io_enq_bits_payload_data[79];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[78] <= io_enq_bits_payload_data[78];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[77] <= io_enq_bits_payload_data[77];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[76] <= io_enq_bits_payload_data[76];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[75] <= io_enq_bits_payload_data[75];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[74] <= io_enq_bits_payload_data[74];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[73] <= io_enq_bits_payload_data[73];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[72] <= io_enq_bits_payload_data[72];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[71] <= io_enq_bits_payload_data[71];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[70] <= io_enq_bits_payload_data[70];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[69] <= io_enq_bits_payload_data[69];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[68] <= io_enq_bits_payload_data[68];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[67] <= io_enq_bits_payload_data[67];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[66] <= io_enq_bits_payload_data[66];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[65] <= io_enq_bits_payload_data[65];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[64] <= io_enq_bits_payload_data[64];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[63] <= io_enq_bits_payload_data[63];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[62] <= io_enq_bits_payload_data[62];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[61] <= io_enq_bits_payload_data[61];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[60] <= io_enq_bits_payload_data[60];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[59] <= io_enq_bits_payload_data[59];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[58] <= io_enq_bits_payload_data[58];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[57] <= io_enq_bits_payload_data[57];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[56] <= io_enq_bits_payload_data[56];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[55] <= io_enq_bits_payload_data[55];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[54] <= io_enq_bits_payload_data[54];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[53] <= io_enq_bits_payload_data[53];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[52] <= io_enq_bits_payload_data[52];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[51] <= io_enq_bits_payload_data[51];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[50] <= io_enq_bits_payload_data[50];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[49] <= io_enq_bits_payload_data[49];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[48] <= io_enq_bits_payload_data[48];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[47] <= io_enq_bits_payload_data[47];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[46] <= io_enq_bits_payload_data[46];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[45] <= io_enq_bits_payload_data[45];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[44] <= io_enq_bits_payload_data[44];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[43] <= io_enq_bits_payload_data[43];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[42] <= io_enq_bits_payload_data[42];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[41] <= io_enq_bits_payload_data[41];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[40] <= io_enq_bits_payload_data[40];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[39] <= io_enq_bits_payload_data[39];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[38] <= io_enq_bits_payload_data[38];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[37] <= io_enq_bits_payload_data[37];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[36] <= io_enq_bits_payload_data[36];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[35] <= io_enq_bits_payload_data[35];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[34] <= io_enq_bits_payload_data[34];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[33] <= io_enq_bits_payload_data[33];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[32] <= io_enq_bits_payload_data[32];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[31] <= io_enq_bits_payload_data[31];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[30] <= io_enq_bits_payload_data[30];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[29] <= io_enq_bits_payload_data[29];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[28] <= io_enq_bits_payload_data[28];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[27] <= io_enq_bits_payload_data[27];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[26] <= io_enq_bits_payload_data[26];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[25] <= io_enq_bits_payload_data[25];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[24] <= io_enq_bits_payload_data[24];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[23] <= io_enq_bits_payload_data[23];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[22] <= io_enq_bits_payload_data[22];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[21] <= io_enq_bits_payload_data[21];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[20] <= io_enq_bits_payload_data[20];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[19] <= io_enq_bits_payload_data[19];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[18] <= io_enq_bits_payload_data[18];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[17] <= io_enq_bits_payload_data[17];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[16] <= io_enq_bits_payload_data[16];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[15] <= io_enq_bits_payload_data[15];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[14] <= io_enq_bits_payload_data[14];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[13] <= io_enq_bits_payload_data[13];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[12] <= io_enq_bits_payload_data[12];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[11] <= io_enq_bits_payload_data[11];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[10] <= io_enq_bits_payload_data[10];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[9] <= io_enq_bits_payload_data[9];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[8] <= io_enq_bits_payload_data[8];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[7] <= io_enq_bits_payload_data[7];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[6] <= io_enq_bits_payload_data[6];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[5] <= io_enq_bits_payload_data[5];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[4] <= io_enq_bits_payload_data[4];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[3] <= io_enq_bits_payload_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[2] <= io_enq_bits_payload_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[1] <= io_enq_bits_payload_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[0] <= io_enq_bits_payload_data[0];
    end 
  end

  assign io_count[0] = N20 ^ R1;
  assign T3 = R1 ^ 1'b1;
  assign T6 = N20 ^ 1'b1;
  assign N19 = ~N20;
  assign N8 = (N2)? 1'b1 : 
              (N26)? 1'b1 : 
              (N7)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign N9 = (N2)? 1'b0 : 
              (N26)? T3 : 1'b0;
  assign N12 = (N2)? 1'b1 : 
               (N27)? 1'b1 : 
               (N11)? 1'b0 : 1'b0;
  assign N13 = (N2)? 1'b0 : 
               (N27)? T6 : 1'b0;
  assign N16 = (N2)? 1'b1 : 
               (N28)? 1'b1 : 
               (N15)? 1'b0 : 1'b0;
  assign N17 = (N2)? 1'b0 : 
               (N28)? do_enq : 1'b0;
  assign { N24, N23, N22, N21 } = (N3)? { N20, N20, N19, N19 } : 
                                  (N4)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N3 = do_enq;
  assign N4 = N18;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign io_count[1] = maybe_full & ptr_match;
  assign N5 = ~R1;
  assign io_deq_valid = ~empty;
  assign empty = ptr_match & T31;
  assign T31 = ~maybe_full;
  assign io_enq_ready = ~full;
  assign full = ptr_match & maybe_full;
  assign N6 = do_deq | reset;
  assign N7 = ~N6;
  assign N10 = do_enq | reset;
  assign N11 = ~N10;
  assign N14 = T9 | reset;
  assign N15 = ~N14;
  assign N18 = ~do_enq;
  assign N25 = ~reset;
  assign N26 = do_deq & N25;
  assign N27 = do_enq & N25;
  assign N28 = T9 & N25;

endmodule