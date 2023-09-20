module Queue_9
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_inst_funct,
  io_enq_bits_inst_rs2,
  io_enq_bits_inst_rs1,
  io_enq_bits_inst_xd,
  io_enq_bits_inst_xs1,
  io_enq_bits_inst_xs2,
  io_enq_bits_inst_rd,
  io_enq_bits_inst_opcode,
  io_enq_bits_rs1,
  io_enq_bits_rs2,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_inst_funct,
  io_deq_bits_inst_rs2,
  io_deq_bits_inst_rs1,
  io_deq_bits_inst_xd,
  io_deq_bits_inst_xs1,
  io_deq_bits_inst_xs2,
  io_deq_bits_inst_rd,
  io_deq_bits_inst_opcode,
  io_deq_bits_rs1,
  io_deq_bits_rs2,
  io_count
);

  input [6:0] io_enq_bits_inst_funct;
  input [4:0] io_enq_bits_inst_rs2;
  input [4:0] io_enq_bits_inst_rs1;
  input [4:0] io_enq_bits_inst_rd;
  input [6:0] io_enq_bits_inst_opcode;
  input [63:0] io_enq_bits_rs1;
  input [63:0] io_enq_bits_rs2;
  output [6:0] io_deq_bits_inst_funct;
  output [4:0] io_deq_bits_inst_rs2;
  output [4:0] io_deq_bits_inst_rs1;
  output [4:0] io_deq_bits_inst_rd;
  output [6:0] io_deq_bits_inst_opcode;
  output [63:0] io_deq_bits_rs1;
  output [63:0] io_deq_bits_rs2;
  output [1:0] io_count;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_inst_xd;
  input io_enq_bits_inst_xs1;
  input io_enq_bits_inst_xs2;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_deq_bits_inst_xd;
  output io_deq_bits_inst_xs1;
  output io_deq_bits_inst_xs2;
  wire [6:0] io_deq_bits_inst_funct,io_deq_bits_inst_opcode;
  wire [4:0] io_deq_bits_inst_rs2,io_deq_bits_inst_rs1,io_deq_bits_inst_rd;
  wire [63:0] io_deq_bits_rs1,io_deq_bits_rs2;
  wire [1:0] io_count;
  wire io_enq_ready,io_deq_valid,io_deq_bits_inst_xd,io_deq_bits_inst_xs1,
  io_deq_bits_inst_xs2,N0,N1,N2,N3,N4,do_deq,T3,do_enq,T6,ptr_match,T9,N5,empty,T33,full,N6,N7,
  N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N21,N22,N23,N24,N25,N26,N27,N28;
  reg R1,N20,maybe_full;
  reg [319:0] ram;
  assign N0 = N20 ^ R1;
  assign ptr_match = ~N0;
  assign T9 = do_enq ^ do_deq;
  assign io_deq_bits_inst_funct[6] = (N5)? ram[159] : 
                                     (N1)? ram[319] : 1'b0;
  assign N1 = R1;
  assign io_deq_bits_inst_funct[5] = (N5)? ram[158] : 
                                     (N1)? ram[318] : 1'b0;
  assign io_deq_bits_inst_funct[4] = (N5)? ram[157] : 
                                     (N1)? ram[317] : 1'b0;
  assign io_deq_bits_inst_funct[3] = (N5)? ram[156] : 
                                     (N1)? ram[316] : 1'b0;
  assign io_deq_bits_inst_funct[2] = (N5)? ram[155] : 
                                     (N1)? ram[315] : 1'b0;
  assign io_deq_bits_inst_funct[1] = (N5)? ram[154] : 
                                     (N1)? ram[314] : 1'b0;
  assign io_deq_bits_inst_funct[0] = (N5)? ram[153] : 
                                     (N1)? ram[313] : 1'b0;
  assign io_deq_bits_inst_rs2[4] = (N5)? ram[152] : 
                                   (N1)? ram[312] : 1'b0;
  assign io_deq_bits_inst_rs2[3] = (N5)? ram[151] : 
                                   (N1)? ram[311] : 1'b0;
  assign io_deq_bits_inst_rs2[2] = (N5)? ram[150] : 
                                   (N1)? ram[310] : 1'b0;
  assign io_deq_bits_inst_rs2[1] = (N5)? ram[149] : 
                                   (N1)? ram[309] : 1'b0;
  assign io_deq_bits_inst_rs2[0] = (N5)? ram[148] : 
                                   (N1)? ram[308] : 1'b0;
  assign io_deq_bits_inst_rs1[4] = (N5)? ram[147] : 
                                   (N1)? ram[307] : 1'b0;
  assign io_deq_bits_inst_rs1[3] = (N5)? ram[146] : 
                                   (N1)? ram[306] : 1'b0;
  assign io_deq_bits_inst_rs1[2] = (N5)? ram[145] : 
                                   (N1)? ram[305] : 1'b0;
  assign io_deq_bits_inst_rs1[1] = (N5)? ram[144] : 
                                   (N1)? ram[304] : 1'b0;
  assign io_deq_bits_inst_rs1[0] = (N5)? ram[143] : 
                                   (N1)? ram[303] : 1'b0;
  assign io_deq_bits_inst_xd = (N5)? ram[142] : 
                               (N1)? ram[302] : 1'b0;
  assign io_deq_bits_inst_xs1 = (N5)? ram[141] : 
                                (N1)? ram[301] : 1'b0;
  assign io_deq_bits_inst_xs2 = (N5)? ram[140] : 
                                (N1)? ram[300] : 1'b0;
  assign io_deq_bits_inst_rd[4] = (N5)? ram[139] : 
                                  (N1)? ram[299] : 1'b0;
  assign io_deq_bits_inst_rd[3] = (N5)? ram[138] : 
                                  (N1)? ram[298] : 1'b0;
  assign io_deq_bits_inst_rd[2] = (N5)? ram[137] : 
                                  (N1)? ram[297] : 1'b0;
  assign io_deq_bits_inst_rd[1] = (N5)? ram[136] : 
                                  (N1)? ram[296] : 1'b0;
  assign io_deq_bits_inst_rd[0] = (N5)? ram[135] : 
                                  (N1)? ram[295] : 1'b0;
  assign io_deq_bits_inst_opcode[6] = (N5)? ram[134] : 
                                      (N1)? ram[294] : 1'b0;
  assign io_deq_bits_inst_opcode[5] = (N5)? ram[133] : 
                                      (N1)? ram[293] : 1'b0;
  assign io_deq_bits_inst_opcode[4] = (N5)? ram[132] : 
                                      (N1)? ram[292] : 1'b0;
  assign io_deq_bits_inst_opcode[3] = (N5)? ram[131] : 
                                      (N1)? ram[291] : 1'b0;
  assign io_deq_bits_inst_opcode[2] = (N5)? ram[130] : 
                                      (N1)? ram[290] : 1'b0;
  assign io_deq_bits_inst_opcode[1] = (N5)? ram[129] : 
                                      (N1)? ram[289] : 1'b0;
  assign io_deq_bits_inst_opcode[0] = (N5)? ram[128] : 
                                      (N1)? ram[288] : 1'b0;
  assign io_deq_bits_rs1[63] = (N5)? ram[127] : 
                               (N1)? ram[287] : 1'b0;
  assign io_deq_bits_rs1[62] = (N5)? ram[126] : 
                               (N1)? ram[286] : 1'b0;
  assign io_deq_bits_rs1[61] = (N5)? ram[125] : 
                               (N1)? ram[285] : 1'b0;
  assign io_deq_bits_rs1[60] = (N5)? ram[124] : 
                               (N1)? ram[284] : 1'b0;
  assign io_deq_bits_rs1[59] = (N5)? ram[123] : 
                               (N1)? ram[283] : 1'b0;
  assign io_deq_bits_rs1[58] = (N5)? ram[122] : 
                               (N1)? ram[282] : 1'b0;
  assign io_deq_bits_rs1[57] = (N5)? ram[121] : 
                               (N1)? ram[281] : 1'b0;
  assign io_deq_bits_rs1[56] = (N5)? ram[120] : 
                               (N1)? ram[280] : 1'b0;
  assign io_deq_bits_rs1[55] = (N5)? ram[119] : 
                               (N1)? ram[279] : 1'b0;
  assign io_deq_bits_rs1[54] = (N5)? ram[118] : 
                               (N1)? ram[278] : 1'b0;
  assign io_deq_bits_rs1[53] = (N5)? ram[117] : 
                               (N1)? ram[277] : 1'b0;
  assign io_deq_bits_rs1[52] = (N5)? ram[116] : 
                               (N1)? ram[276] : 1'b0;
  assign io_deq_bits_rs1[51] = (N5)? ram[115] : 
                               (N1)? ram[275] : 1'b0;
  assign io_deq_bits_rs1[50] = (N5)? ram[114] : 
                               (N1)? ram[274] : 1'b0;
  assign io_deq_bits_rs1[49] = (N5)? ram[113] : 
                               (N1)? ram[273] : 1'b0;
  assign io_deq_bits_rs1[48] = (N5)? ram[112] : 
                               (N1)? ram[272] : 1'b0;
  assign io_deq_bits_rs1[47] = (N5)? ram[111] : 
                               (N1)? ram[271] : 1'b0;
  assign io_deq_bits_rs1[46] = (N5)? ram[110] : 
                               (N1)? ram[270] : 1'b0;
  assign io_deq_bits_rs1[45] = (N5)? ram[109] : 
                               (N1)? ram[269] : 1'b0;
  assign io_deq_bits_rs1[44] = (N5)? ram[108] : 
                               (N1)? ram[268] : 1'b0;
  assign io_deq_bits_rs1[43] = (N5)? ram[107] : 
                               (N1)? ram[267] : 1'b0;
  assign io_deq_bits_rs1[42] = (N5)? ram[106] : 
                               (N1)? ram[266] : 1'b0;
  assign io_deq_bits_rs1[41] = (N5)? ram[105] : 
                               (N1)? ram[265] : 1'b0;
  assign io_deq_bits_rs1[40] = (N5)? ram[104] : 
                               (N1)? ram[264] : 1'b0;
  assign io_deq_bits_rs1[39] = (N5)? ram[103] : 
                               (N1)? ram[263] : 1'b0;
  assign io_deq_bits_rs1[38] = (N5)? ram[102] : 
                               (N1)? ram[262] : 1'b0;
  assign io_deq_bits_rs1[37] = (N5)? ram[101] : 
                               (N1)? ram[261] : 1'b0;
  assign io_deq_bits_rs1[36] = (N5)? ram[100] : 
                               (N1)? ram[260] : 1'b0;
  assign io_deq_bits_rs1[35] = (N5)? ram[99] : 
                               (N1)? ram[259] : 1'b0;
  assign io_deq_bits_rs1[34] = (N5)? ram[98] : 
                               (N1)? ram[258] : 1'b0;
  assign io_deq_bits_rs1[33] = (N5)? ram[97] : 
                               (N1)? ram[257] : 1'b0;
  assign io_deq_bits_rs1[32] = (N5)? ram[96] : 
                               (N1)? ram[256] : 1'b0;
  assign io_deq_bits_rs1[31] = (N5)? ram[95] : 
                               (N1)? ram[255] : 1'b0;
  assign io_deq_bits_rs1[30] = (N5)? ram[94] : 
                               (N1)? ram[254] : 1'b0;
  assign io_deq_bits_rs1[29] = (N5)? ram[93] : 
                               (N1)? ram[253] : 1'b0;
  assign io_deq_bits_rs1[28] = (N5)? ram[92] : 
                               (N1)? ram[252] : 1'b0;
  assign io_deq_bits_rs1[27] = (N5)? ram[91] : 
                               (N1)? ram[251] : 1'b0;
  assign io_deq_bits_rs1[26] = (N5)? ram[90] : 
                               (N1)? ram[250] : 1'b0;
  assign io_deq_bits_rs1[25] = (N5)? ram[89] : 
                               (N1)? ram[249] : 1'b0;
  assign io_deq_bits_rs1[24] = (N5)? ram[88] : 
                               (N1)? ram[248] : 1'b0;
  assign io_deq_bits_rs1[23] = (N5)? ram[87] : 
                               (N1)? ram[247] : 1'b0;
  assign io_deq_bits_rs1[22] = (N5)? ram[86] : 
                               (N1)? ram[246] : 1'b0;
  assign io_deq_bits_rs1[21] = (N5)? ram[85] : 
                               (N1)? ram[245] : 1'b0;
  assign io_deq_bits_rs1[20] = (N5)? ram[84] : 
                               (N1)? ram[244] : 1'b0;
  assign io_deq_bits_rs1[19] = (N5)? ram[83] : 
                               (N1)? ram[243] : 1'b0;
  assign io_deq_bits_rs1[18] = (N5)? ram[82] : 
                               (N1)? ram[242] : 1'b0;
  assign io_deq_bits_rs1[17] = (N5)? ram[81] : 
                               (N1)? ram[241] : 1'b0;
  assign io_deq_bits_rs1[16] = (N5)? ram[80] : 
                               (N1)? ram[240] : 1'b0;
  assign io_deq_bits_rs1[15] = (N5)? ram[79] : 
                               (N1)? ram[239] : 1'b0;
  assign io_deq_bits_rs1[14] = (N5)? ram[78] : 
                               (N1)? ram[238] : 1'b0;
  assign io_deq_bits_rs1[13] = (N5)? ram[77] : 
                               (N1)? ram[237] : 1'b0;
  assign io_deq_bits_rs1[12] = (N5)? ram[76] : 
                               (N1)? ram[236] : 1'b0;
  assign io_deq_bits_rs1[11] = (N5)? ram[75] : 
                               (N1)? ram[235] : 1'b0;
  assign io_deq_bits_rs1[10] = (N5)? ram[74] : 
                               (N1)? ram[234] : 1'b0;
  assign io_deq_bits_rs1[9] = (N5)? ram[73] : 
                              (N1)? ram[233] : 1'b0;
  assign io_deq_bits_rs1[8] = (N5)? ram[72] : 
                              (N1)? ram[232] : 1'b0;
  assign io_deq_bits_rs1[7] = (N5)? ram[71] : 
                              (N1)? ram[231] : 1'b0;
  assign io_deq_bits_rs1[6] = (N5)? ram[70] : 
                              (N1)? ram[230] : 1'b0;
  assign io_deq_bits_rs1[5] = (N5)? ram[69] : 
                              (N1)? ram[229] : 1'b0;
  assign io_deq_bits_rs1[4] = (N5)? ram[68] : 
                              (N1)? ram[228] : 1'b0;
  assign io_deq_bits_rs1[3] = (N5)? ram[67] : 
                              (N1)? ram[227] : 1'b0;
  assign io_deq_bits_rs1[2] = (N5)? ram[66] : 
                              (N1)? ram[226] : 1'b0;
  assign io_deq_bits_rs1[1] = (N5)? ram[65] : 
                              (N1)? ram[225] : 1'b0;
  assign io_deq_bits_rs1[0] = (N5)? ram[64] : 
                              (N1)? ram[224] : 1'b0;
  assign io_deq_bits_rs2[63] = (N5)? ram[63] : 
                               (N1)? ram[223] : 1'b0;
  assign io_deq_bits_rs2[62] = (N5)? ram[62] : 
                               (N1)? ram[222] : 1'b0;
  assign io_deq_bits_rs2[61] = (N5)? ram[61] : 
                               (N1)? ram[221] : 1'b0;
  assign io_deq_bits_rs2[60] = (N5)? ram[60] : 
                               (N1)? ram[220] : 1'b0;
  assign io_deq_bits_rs2[59] = (N5)? ram[59] : 
                               (N1)? ram[219] : 1'b0;
  assign io_deq_bits_rs2[58] = (N5)? ram[58] : 
                               (N1)? ram[218] : 1'b0;
  assign io_deq_bits_rs2[57] = (N5)? ram[57] : 
                               (N1)? ram[217] : 1'b0;
  assign io_deq_bits_rs2[56] = (N5)? ram[56] : 
                               (N1)? ram[216] : 1'b0;
  assign io_deq_bits_rs2[55] = (N5)? ram[55] : 
                               (N1)? ram[215] : 1'b0;
  assign io_deq_bits_rs2[54] = (N5)? ram[54] : 
                               (N1)? ram[214] : 1'b0;
  assign io_deq_bits_rs2[53] = (N5)? ram[53] : 
                               (N1)? ram[213] : 1'b0;
  assign io_deq_bits_rs2[52] = (N5)? ram[52] : 
                               (N1)? ram[212] : 1'b0;
  assign io_deq_bits_rs2[51] = (N5)? ram[51] : 
                               (N1)? ram[211] : 1'b0;
  assign io_deq_bits_rs2[50] = (N5)? ram[50] : 
                               (N1)? ram[210] : 1'b0;
  assign io_deq_bits_rs2[49] = (N5)? ram[49] : 
                               (N1)? ram[209] : 1'b0;
  assign io_deq_bits_rs2[48] = (N5)? ram[48] : 
                               (N1)? ram[208] : 1'b0;
  assign io_deq_bits_rs2[47] = (N5)? ram[47] : 
                               (N1)? ram[207] : 1'b0;
  assign io_deq_bits_rs2[46] = (N5)? ram[46] : 
                               (N1)? ram[206] : 1'b0;
  assign io_deq_bits_rs2[45] = (N5)? ram[45] : 
                               (N1)? ram[205] : 1'b0;
  assign io_deq_bits_rs2[44] = (N5)? ram[44] : 
                               (N1)? ram[204] : 1'b0;
  assign io_deq_bits_rs2[43] = (N5)? ram[43] : 
                               (N1)? ram[203] : 1'b0;
  assign io_deq_bits_rs2[42] = (N5)? ram[42] : 
                               (N1)? ram[202] : 1'b0;
  assign io_deq_bits_rs2[41] = (N5)? ram[41] : 
                               (N1)? ram[201] : 1'b0;
  assign io_deq_bits_rs2[40] = (N5)? ram[40] : 
                               (N1)? ram[200] : 1'b0;
  assign io_deq_bits_rs2[39] = (N5)? ram[39] : 
                               (N1)? ram[199] : 1'b0;
  assign io_deq_bits_rs2[38] = (N5)? ram[38] : 
                               (N1)? ram[198] : 1'b0;
  assign io_deq_bits_rs2[37] = (N5)? ram[37] : 
                               (N1)? ram[197] : 1'b0;
  assign io_deq_bits_rs2[36] = (N5)? ram[36] : 
                               (N1)? ram[196] : 1'b0;
  assign io_deq_bits_rs2[35] = (N5)? ram[35] : 
                               (N1)? ram[195] : 1'b0;
  assign io_deq_bits_rs2[34] = (N5)? ram[34] : 
                               (N1)? ram[194] : 1'b0;
  assign io_deq_bits_rs2[33] = (N5)? ram[33] : 
                               (N1)? ram[193] : 1'b0;
  assign io_deq_bits_rs2[32] = (N5)? ram[32] : 
                               (N1)? ram[192] : 1'b0;
  assign io_deq_bits_rs2[31] = (N5)? ram[31] : 
                               (N1)? ram[191] : 1'b0;
  assign io_deq_bits_rs2[30] = (N5)? ram[30] : 
                               (N1)? ram[190] : 1'b0;
  assign io_deq_bits_rs2[29] = (N5)? ram[29] : 
                               (N1)? ram[189] : 1'b0;
  assign io_deq_bits_rs2[28] = (N5)? ram[28] : 
                               (N1)? ram[188] : 1'b0;
  assign io_deq_bits_rs2[27] = (N5)? ram[27] : 
                               (N1)? ram[187] : 1'b0;
  assign io_deq_bits_rs2[26] = (N5)? ram[26] : 
                               (N1)? ram[186] : 1'b0;
  assign io_deq_bits_rs2[25] = (N5)? ram[25] : 
                               (N1)? ram[185] : 1'b0;
  assign io_deq_bits_rs2[24] = (N5)? ram[24] : 
                               (N1)? ram[184] : 1'b0;
  assign io_deq_bits_rs2[23] = (N5)? ram[23] : 
                               (N1)? ram[183] : 1'b0;
  assign io_deq_bits_rs2[22] = (N5)? ram[22] : 
                               (N1)? ram[182] : 1'b0;
  assign io_deq_bits_rs2[21] = (N5)? ram[21] : 
                               (N1)? ram[181] : 1'b0;
  assign io_deq_bits_rs2[20] = (N5)? ram[20] : 
                               (N1)? ram[180] : 1'b0;
  assign io_deq_bits_rs2[19] = (N5)? ram[19] : 
                               (N1)? ram[179] : 1'b0;
  assign io_deq_bits_rs2[18] = (N5)? ram[18] : 
                               (N1)? ram[178] : 1'b0;
  assign io_deq_bits_rs2[17] = (N5)? ram[17] : 
                               (N1)? ram[177] : 1'b0;
  assign io_deq_bits_rs2[16] = (N5)? ram[16] : 
                               (N1)? ram[176] : 1'b0;
  assign io_deq_bits_rs2[15] = (N5)? ram[15] : 
                               (N1)? ram[175] : 1'b0;
  assign io_deq_bits_rs2[14] = (N5)? ram[14] : 
                               (N1)? ram[174] : 1'b0;
  assign io_deq_bits_rs2[13] = (N5)? ram[13] : 
                               (N1)? ram[173] : 1'b0;
  assign io_deq_bits_rs2[12] = (N5)? ram[12] : 
                               (N1)? ram[172] : 1'b0;
  assign io_deq_bits_rs2[11] = (N5)? ram[11] : 
                               (N1)? ram[171] : 1'b0;
  assign io_deq_bits_rs2[10] = (N5)? ram[10] : 
                               (N1)? ram[170] : 1'b0;
  assign io_deq_bits_rs2[9] = (N5)? ram[9] : 
                              (N1)? ram[169] : 1'b0;
  assign io_deq_bits_rs2[8] = (N5)? ram[8] : 
                              (N1)? ram[168] : 1'b0;
  assign io_deq_bits_rs2[7] = (N5)? ram[7] : 
                              (N1)? ram[167] : 1'b0;
  assign io_deq_bits_rs2[6] = (N5)? ram[6] : 
                              (N1)? ram[166] : 1'b0;
  assign io_deq_bits_rs2[5] = (N5)? ram[5] : 
                              (N1)? ram[165] : 1'b0;
  assign io_deq_bits_rs2[4] = (N5)? ram[4] : 
                              (N1)? ram[164] : 1'b0;
  assign io_deq_bits_rs2[3] = (N5)? ram[3] : 
                              (N1)? ram[163] : 1'b0;
  assign io_deq_bits_rs2[2] = (N5)? ram[2] : 
                              (N1)? ram[162] : 1'b0;
  assign io_deq_bits_rs2[1] = (N5)? ram[1] : 
                              (N1)? ram[161] : 1'b0;
  assign io_deq_bits_rs2[0] = (N5)? ram[0] : 
                              (N1)? ram[160] : 1'b0;

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
      ram[319] <= io_enq_bits_inst_funct[6];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[318] <= io_enq_bits_inst_funct[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[317] <= io_enq_bits_inst_funct[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[316] <= io_enq_bits_inst_funct[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[315] <= io_enq_bits_inst_funct[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[314] <= io_enq_bits_inst_funct[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[313] <= io_enq_bits_inst_funct[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[312] <= io_enq_bits_inst_rs2[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[311] <= io_enq_bits_inst_rs2[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[310] <= io_enq_bits_inst_rs2[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[309] <= io_enq_bits_inst_rs2[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[308] <= io_enq_bits_inst_rs2[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[307] <= io_enq_bits_inst_rs1[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[306] <= io_enq_bits_inst_rs1[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[305] <= io_enq_bits_inst_rs1[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[304] <= io_enq_bits_inst_rs1[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[303] <= io_enq_bits_inst_rs1[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[302] <= io_enq_bits_inst_xd;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[301] <= io_enq_bits_inst_xs1;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[300] <= io_enq_bits_inst_xs2;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[299] <= io_enq_bits_inst_rd[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[298] <= io_enq_bits_inst_rd[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[297] <= io_enq_bits_inst_rd[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[296] <= io_enq_bits_inst_rd[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[295] <= io_enq_bits_inst_rd[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[294] <= io_enq_bits_inst_opcode[6];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[293] <= io_enq_bits_inst_opcode[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[292] <= io_enq_bits_inst_opcode[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[291] <= io_enq_bits_inst_opcode[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[290] <= io_enq_bits_inst_opcode[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[289] <= io_enq_bits_inst_opcode[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[288] <= io_enq_bits_inst_opcode[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[287] <= io_enq_bits_rs1[63];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[286] <= io_enq_bits_rs1[62];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[285] <= io_enq_bits_rs1[61];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[284] <= io_enq_bits_rs1[60];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[283] <= io_enq_bits_rs1[59];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[282] <= io_enq_bits_rs1[58];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[281] <= io_enq_bits_rs1[57];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[280] <= io_enq_bits_rs1[56];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[279] <= io_enq_bits_rs1[55];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[278] <= io_enq_bits_rs1[54];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[277] <= io_enq_bits_rs1[53];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[276] <= io_enq_bits_rs1[52];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[275] <= io_enq_bits_rs1[51];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[274] <= io_enq_bits_rs1[50];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[273] <= io_enq_bits_rs1[49];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[272] <= io_enq_bits_rs1[48];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[271] <= io_enq_bits_rs1[47];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[270] <= io_enq_bits_rs1[46];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[269] <= io_enq_bits_rs1[45];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[268] <= io_enq_bits_rs1[44];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[267] <= io_enq_bits_rs1[43];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[266] <= io_enq_bits_rs1[42];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[265] <= io_enq_bits_rs1[41];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[264] <= io_enq_bits_rs1[40];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[263] <= io_enq_bits_rs1[39];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[262] <= io_enq_bits_rs1[38];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[261] <= io_enq_bits_rs1[37];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[260] <= io_enq_bits_rs1[36];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[259] <= io_enq_bits_rs1[35];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[258] <= io_enq_bits_rs1[34];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[257] <= io_enq_bits_rs1[33];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[256] <= io_enq_bits_rs1[32];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[255] <= io_enq_bits_rs1[31];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[254] <= io_enq_bits_rs1[30];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[253] <= io_enq_bits_rs1[29];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[252] <= io_enq_bits_rs1[28];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[251] <= io_enq_bits_rs1[27];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[250] <= io_enq_bits_rs1[26];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[249] <= io_enq_bits_rs1[25];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[248] <= io_enq_bits_rs1[24];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[247] <= io_enq_bits_rs1[23];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[246] <= io_enq_bits_rs1[22];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[245] <= io_enq_bits_rs1[21];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[244] <= io_enq_bits_rs1[20];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[243] <= io_enq_bits_rs1[19];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[242] <= io_enq_bits_rs1[18];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[241] <= io_enq_bits_rs1[17];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[240] <= io_enq_bits_rs1[16];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[239] <= io_enq_bits_rs1[15];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[238] <= io_enq_bits_rs1[14];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[237] <= io_enq_bits_rs1[13];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[236] <= io_enq_bits_rs1[12];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[235] <= io_enq_bits_rs1[11];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[234] <= io_enq_bits_rs1[10];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[233] <= io_enq_bits_rs1[9];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[232] <= io_enq_bits_rs1[8];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[231] <= io_enq_bits_rs1[7];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[230] <= io_enq_bits_rs1[6];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[229] <= io_enq_bits_rs1[5];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[228] <= io_enq_bits_rs1[4];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[227] <= io_enq_bits_rs1[3];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[226] <= io_enq_bits_rs1[2];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[225] <= io_enq_bits_rs1[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[224] <= io_enq_bits_rs1[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[223] <= io_enq_bits_rs2[63];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[222] <= io_enq_bits_rs2[62];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[221] <= io_enq_bits_rs2[61];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[220] <= io_enq_bits_rs2[60];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[219] <= io_enq_bits_rs2[59];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[218] <= io_enq_bits_rs2[58];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[217] <= io_enq_bits_rs2[57];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[216] <= io_enq_bits_rs2[56];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[215] <= io_enq_bits_rs2[55];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[214] <= io_enq_bits_rs2[54];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[213] <= io_enq_bits_rs2[53];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[212] <= io_enq_bits_rs2[52];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[211] <= io_enq_bits_rs2[51];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[210] <= io_enq_bits_rs2[50];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[209] <= io_enq_bits_rs2[49];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[208] <= io_enq_bits_rs2[48];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[207] <= io_enq_bits_rs2[47];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[206] <= io_enq_bits_rs2[46];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[205] <= io_enq_bits_rs2[45];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[204] <= io_enq_bits_rs2[44];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[203] <= io_enq_bits_rs2[43];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[202] <= io_enq_bits_rs2[42];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[201] <= io_enq_bits_rs2[41];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[200] <= io_enq_bits_rs2[40];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[199] <= io_enq_bits_rs2[39];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[198] <= io_enq_bits_rs2[38];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[197] <= io_enq_bits_rs2[37];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[196] <= io_enq_bits_rs2[36];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[195] <= io_enq_bits_rs2[35];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[194] <= io_enq_bits_rs2[34];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[193] <= io_enq_bits_rs2[33];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[192] <= io_enq_bits_rs2[32];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[191] <= io_enq_bits_rs2[31];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[190] <= io_enq_bits_rs2[30];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[189] <= io_enq_bits_rs2[29];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[188] <= io_enq_bits_rs2[28];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[187] <= io_enq_bits_rs2[27];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[186] <= io_enq_bits_rs2[26];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[185] <= io_enq_bits_rs2[25];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[184] <= io_enq_bits_rs2[24];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[183] <= io_enq_bits_rs2[23];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[182] <= io_enq_bits_rs2[22];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[181] <= io_enq_bits_rs2[21];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[180] <= io_enq_bits_rs2[20];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[179] <= io_enq_bits_rs2[19];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[178] <= io_enq_bits_rs2[18];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[177] <= io_enq_bits_rs2[17];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[176] <= io_enq_bits_rs2[16];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[175] <= io_enq_bits_rs2[15];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[174] <= io_enq_bits_rs2[14];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[173] <= io_enq_bits_rs2[13];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[172] <= io_enq_bits_rs2[12];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[171] <= io_enq_bits_rs2[11];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[170] <= io_enq_bits_rs2[10];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[169] <= io_enq_bits_rs2[9];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[168] <= io_enq_bits_rs2[8];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[167] <= io_enq_bits_rs2[7];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[166] <= io_enq_bits_rs2[6];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[165] <= io_enq_bits_rs2[5];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[164] <= io_enq_bits_rs2[4];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[163] <= io_enq_bits_rs2[3];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[162] <= io_enq_bits_rs2[2];
    end 
  end


  always @(posedge clk) begin
    if(N24) begin
      ram[161] <= io_enq_bits_rs2[1];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      ram[160] <= io_enq_bits_rs2[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[159] <= io_enq_bits_inst_funct[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[158] <= io_enq_bits_inst_funct[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[157] <= io_enq_bits_inst_funct[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[156] <= io_enq_bits_inst_funct[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[155] <= io_enq_bits_inst_funct[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[154] <= io_enq_bits_inst_funct[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[153] <= io_enq_bits_inst_funct[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[152] <= io_enq_bits_inst_rs2[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[151] <= io_enq_bits_inst_rs2[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[150] <= io_enq_bits_inst_rs2[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[149] <= io_enq_bits_inst_rs2[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[148] <= io_enq_bits_inst_rs2[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[147] <= io_enq_bits_inst_rs1[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[146] <= io_enq_bits_inst_rs1[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[145] <= io_enq_bits_inst_rs1[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[144] <= io_enq_bits_inst_rs1[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[143] <= io_enq_bits_inst_rs1[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[142] <= io_enq_bits_inst_xd;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[141] <= io_enq_bits_inst_xs1;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[140] <= io_enq_bits_inst_xs2;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[139] <= io_enq_bits_inst_rd[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[138] <= io_enq_bits_inst_rd[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[137] <= io_enq_bits_inst_rd[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[136] <= io_enq_bits_inst_rd[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[135] <= io_enq_bits_inst_rd[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[134] <= io_enq_bits_inst_opcode[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[133] <= io_enq_bits_inst_opcode[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[132] <= io_enq_bits_inst_opcode[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[131] <= io_enq_bits_inst_opcode[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[130] <= io_enq_bits_inst_opcode[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[129] <= io_enq_bits_inst_opcode[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[128] <= io_enq_bits_inst_opcode[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[127] <= io_enq_bits_rs1[63];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[126] <= io_enq_bits_rs1[62];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[125] <= io_enq_bits_rs1[61];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[124] <= io_enq_bits_rs1[60];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[123] <= io_enq_bits_rs1[59];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[122] <= io_enq_bits_rs1[58];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[121] <= io_enq_bits_rs1[57];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[120] <= io_enq_bits_rs1[56];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[119] <= io_enq_bits_rs1[55];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[118] <= io_enq_bits_rs1[54];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[117] <= io_enq_bits_rs1[53];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[116] <= io_enq_bits_rs1[52];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[115] <= io_enq_bits_rs1[51];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[114] <= io_enq_bits_rs1[50];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[113] <= io_enq_bits_rs1[49];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[112] <= io_enq_bits_rs1[48];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[111] <= io_enq_bits_rs1[47];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[110] <= io_enq_bits_rs1[46];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[109] <= io_enq_bits_rs1[45];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[108] <= io_enq_bits_rs1[44];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[107] <= io_enq_bits_rs1[43];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[106] <= io_enq_bits_rs1[42];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[105] <= io_enq_bits_rs1[41];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[104] <= io_enq_bits_rs1[40];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[103] <= io_enq_bits_rs1[39];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[102] <= io_enq_bits_rs1[38];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[101] <= io_enq_bits_rs1[37];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[100] <= io_enq_bits_rs1[36];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[99] <= io_enq_bits_rs1[35];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[98] <= io_enq_bits_rs1[34];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[97] <= io_enq_bits_rs1[33];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[96] <= io_enq_bits_rs1[32];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[95] <= io_enq_bits_rs1[31];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[94] <= io_enq_bits_rs1[30];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[93] <= io_enq_bits_rs1[29];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[92] <= io_enq_bits_rs1[28];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[91] <= io_enq_bits_rs1[27];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[90] <= io_enq_bits_rs1[26];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[89] <= io_enq_bits_rs1[25];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[88] <= io_enq_bits_rs1[24];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[87] <= io_enq_bits_rs1[23];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[86] <= io_enq_bits_rs1[22];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[85] <= io_enq_bits_rs1[21];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[84] <= io_enq_bits_rs1[20];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[83] <= io_enq_bits_rs1[19];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[82] <= io_enq_bits_rs1[18];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[81] <= io_enq_bits_rs1[17];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[80] <= io_enq_bits_rs1[16];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[79] <= io_enq_bits_rs1[15];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[78] <= io_enq_bits_rs1[14];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[77] <= io_enq_bits_rs1[13];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[76] <= io_enq_bits_rs1[12];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[75] <= io_enq_bits_rs1[11];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[74] <= io_enq_bits_rs1[10];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[73] <= io_enq_bits_rs1[9];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[72] <= io_enq_bits_rs1[8];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[71] <= io_enq_bits_rs1[7];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[70] <= io_enq_bits_rs1[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[69] <= io_enq_bits_rs1[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[68] <= io_enq_bits_rs1[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[67] <= io_enq_bits_rs1[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[66] <= io_enq_bits_rs1[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[65] <= io_enq_bits_rs1[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[64] <= io_enq_bits_rs1[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[63] <= io_enq_bits_rs2[63];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[62] <= io_enq_bits_rs2[62];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[61] <= io_enq_bits_rs2[61];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[60] <= io_enq_bits_rs2[60];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[59] <= io_enq_bits_rs2[59];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[58] <= io_enq_bits_rs2[58];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[57] <= io_enq_bits_rs2[57];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[56] <= io_enq_bits_rs2[56];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[55] <= io_enq_bits_rs2[55];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[54] <= io_enq_bits_rs2[54];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[53] <= io_enq_bits_rs2[53];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[52] <= io_enq_bits_rs2[52];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[51] <= io_enq_bits_rs2[51];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[50] <= io_enq_bits_rs2[50];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[49] <= io_enq_bits_rs2[49];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[48] <= io_enq_bits_rs2[48];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[47] <= io_enq_bits_rs2[47];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[46] <= io_enq_bits_rs2[46];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[45] <= io_enq_bits_rs2[45];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[44] <= io_enq_bits_rs2[44];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[43] <= io_enq_bits_rs2[43];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[42] <= io_enq_bits_rs2[42];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[41] <= io_enq_bits_rs2[41];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[40] <= io_enq_bits_rs2[40];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[39] <= io_enq_bits_rs2[39];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[38] <= io_enq_bits_rs2[38];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[37] <= io_enq_bits_rs2[37];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[36] <= io_enq_bits_rs2[36];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[35] <= io_enq_bits_rs2[35];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[34] <= io_enq_bits_rs2[34];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[33] <= io_enq_bits_rs2[33];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[32] <= io_enq_bits_rs2[32];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[31] <= io_enq_bits_rs2[31];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[30] <= io_enq_bits_rs2[30];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[29] <= io_enq_bits_rs2[29];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[28] <= io_enq_bits_rs2[28];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[27] <= io_enq_bits_rs2[27];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[26] <= io_enq_bits_rs2[26];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[25] <= io_enq_bits_rs2[25];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[24] <= io_enq_bits_rs2[24];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[23] <= io_enq_bits_rs2[23];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[22] <= io_enq_bits_rs2[22];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[21] <= io_enq_bits_rs2[21];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[20] <= io_enq_bits_rs2[20];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[19] <= io_enq_bits_rs2[19];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[18] <= io_enq_bits_rs2[18];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[17] <= io_enq_bits_rs2[17];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[16] <= io_enq_bits_rs2[16];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[15] <= io_enq_bits_rs2[15];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[14] <= io_enq_bits_rs2[14];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[13] <= io_enq_bits_rs2[13];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[12] <= io_enq_bits_rs2[12];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[11] <= io_enq_bits_rs2[11];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[10] <= io_enq_bits_rs2[10];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[9] <= io_enq_bits_rs2[9];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[8] <= io_enq_bits_rs2[8];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[7] <= io_enq_bits_rs2[7];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[6] <= io_enq_bits_rs2[6];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[5] <= io_enq_bits_rs2[5];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[4] <= io_enq_bits_rs2[4];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[3] <= io_enq_bits_rs2[3];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[2] <= io_enq_bits_rs2[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[1] <= io_enq_bits_rs2[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[0] <= io_enq_bits_rs2[0];
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
  assign empty = ptr_match & T33;
  assign T33 = ~maybe_full;
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