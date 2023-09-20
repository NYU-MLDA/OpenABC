module axi_adapter_64_4_00000004
(
  clk_i,
  rst_ni,
  req_i,
  type_i,
  gnt_o,
  gnt_id_o,
  addr_i,
  we_i,
  wdata_i,
  be_i,
  size_i,
  id_i,
  valid_o,
  rdata_o,
  id_o,
  critical_word_o,
  critical_word_valid_o,
  axi_req_o,
  axi_resp_i
);

  output [3:0] gnt_id_o;
  input [63:0] addr_i;
  input [63:0] wdata_i;
  input [7:0] be_i;
  input [1:0] size_i;
  input [3:0] id_i;
  output [63:0] rdata_o;
  output [3:0] id_o;
  output [63:0] critical_word_o;
  output [277:0] axi_req_o;
  input [81:0] axi_resp_i;
  input clk_i;
  input rst_ni;
  input req_i;
  input type_i;
  input we_i;
  output gnt_o;
  output valid_o;
  output critical_word_valid_o;
  wire [3:0] gnt_id_o,id_o,state_d,id_d;
  wire [63:0] critical_word_o,cache_line_d;
  wire [277:0] axi_req_o;
  wire gnt_o,valid_o,critical_word_valid_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,
  N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,
  N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,
  N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,
  N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,
  N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,
  N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,
  N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,
  N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,
  N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,
  N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,
  N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,
  N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,
  N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,
  N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,
  N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,
  N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,
  N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,
  N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,
  N334,N335,N336,N337;
  wire [0:0] cnt_d,addr_offset_d;
  reg [3:0] id_q,state_q;
  reg [0:0] cnt_q,addr_offset_q;
  reg [63:0] rdata_o;
  assign axi_req_o[2] = 1'b0;
  assign axi_req_o[3] = 1'b0;
  assign axi_req_o[4] = 1'b0;
  assign axi_req_o[5] = 1'b0;
  assign axi_req_o[6] = 1'b0;
  assign axi_req_o[7] = 1'b0;
  assign axi_req_o[8] = 1'b0;
  assign axi_req_o[9] = 1'b0;
  assign axi_req_o[10] = 1'b0;
  assign axi_req_o[11] = 1'b0;
  assign axi_req_o[12] = 1'b0;
  assign axi_req_o[13] = 1'b0;
  assign axi_req_o[14] = 1'b0;
  assign axi_req_o[15] = 1'b0;
  assign axi_req_o[16] = 1'b0;
  assign axi_req_o[17] = 1'b0;
  assign axi_req_o[19] = 1'b0;
  assign axi_req_o[22] = 1'b0;
  assign axi_req_o[23] = 1'b0;
  assign axi_req_o[24] = 1'b0;
  assign axi_req_o[25] = 1'b0;
  assign axi_req_o[26] = 1'b0;
  assign axi_req_o[27] = 1'b0;
  assign axi_req_o[28] = 1'b0;
  assign axi_req_o[29] = 1'b0;
  assign axi_req_o[30] = 1'b0;
  assign axi_req_o[175] = 1'b0;
  assign axi_req_o[176] = 1'b0;
  assign axi_req_o[177] = 1'b0;
  assign axi_req_o[178] = 1'b0;
  assign axi_req_o[179] = 1'b0;
  assign axi_req_o[180] = 1'b0;
  assign axi_req_o[181] = 1'b0;
  assign axi_req_o[182] = 1'b0;
  assign axi_req_o[183] = 1'b0;
  assign axi_req_o[184] = 1'b0;
  assign axi_req_o[185] = 1'b0;
  assign axi_req_o[186] = 1'b0;
  assign axi_req_o[187] = 1'b0;
  assign axi_req_o[188] = 1'b0;
  assign axi_req_o[189] = 1'b0;
  assign axi_req_o[190] = 1'b0;
  assign axi_req_o[191] = 1'b0;
  assign axi_req_o[192] = 1'b0;
  assign axi_req_o[193] = 1'b0;
  assign axi_req_o[194] = 1'b0;
  assign axi_req_o[195] = 1'b0;
  assign axi_req_o[196] = 1'b0;
  assign axi_req_o[198] = 1'b0;
  assign axi_req_o[201] = 1'b0;
  assign axi_req_o[202] = 1'b0;
  assign axi_req_o[203] = 1'b0;
  assign axi_req_o[204] = 1'b0;
  assign axi_req_o[205] = 1'b0;
  assign axi_req_o[206] = 1'b0;
  assign axi_req_o[207] = 1'b0;
  assign axi_req_o[208] = 1'b0;
  assign axi_req_o[209] = 1'b0;
  assign axi_req_o[197] = axi_req_o[18];
  assign critical_word_o[63] = axi_resp_i[66];
  assign critical_word_o[62] = axi_resp_i[65];
  assign critical_word_o[61] = axi_resp_i[64];
  assign critical_word_o[60] = axi_resp_i[63];
  assign critical_word_o[59] = axi_resp_i[62];
  assign critical_word_o[58] = axi_resp_i[61];
  assign critical_word_o[57] = axi_resp_i[60];
  assign critical_word_o[56] = axi_resp_i[59];
  assign critical_word_o[55] = axi_resp_i[58];
  assign critical_word_o[54] = axi_resp_i[57];
  assign critical_word_o[53] = axi_resp_i[56];
  assign critical_word_o[52] = axi_resp_i[55];
  assign critical_word_o[51] = axi_resp_i[54];
  assign critical_word_o[50] = axi_resp_i[53];
  assign critical_word_o[49] = axi_resp_i[52];
  assign critical_word_o[48] = axi_resp_i[51];
  assign critical_word_o[47] = axi_resp_i[50];
  assign critical_word_o[46] = axi_resp_i[49];
  assign critical_word_o[45] = axi_resp_i[48];
  assign critical_word_o[44] = axi_resp_i[47];
  assign critical_word_o[43] = axi_resp_i[46];
  assign critical_word_o[42] = axi_resp_i[45];
  assign critical_word_o[41] = axi_resp_i[44];
  assign critical_word_o[40] = axi_resp_i[43];
  assign critical_word_o[39] = axi_resp_i[42];
  assign critical_word_o[38] = axi_resp_i[41];
  assign critical_word_o[37] = axi_resp_i[40];
  assign critical_word_o[36] = axi_resp_i[39];
  assign critical_word_o[35] = axi_resp_i[38];
  assign critical_word_o[34] = axi_resp_i[37];
  assign critical_word_o[33] = axi_resp_i[36];
  assign critical_word_o[32] = axi_resp_i[35];
  assign critical_word_o[31] = axi_resp_i[34];
  assign critical_word_o[30] = axi_resp_i[33];
  assign critical_word_o[29] = axi_resp_i[32];
  assign critical_word_o[28] = axi_resp_i[31];
  assign critical_word_o[27] = axi_resp_i[30];
  assign critical_word_o[26] = axi_resp_i[29];
  assign critical_word_o[25] = axi_resp_i[28];
  assign critical_word_o[24] = axi_resp_i[27];
  assign critical_word_o[23] = axi_resp_i[26];
  assign critical_word_o[22] = axi_resp_i[25];
  assign critical_word_o[21] = axi_resp_i[24];
  assign critical_word_o[20] = axi_resp_i[23];
  assign critical_word_o[19] = axi_resp_i[22];
  assign critical_word_o[18] = axi_resp_i[21];
  assign critical_word_o[17] = axi_resp_i[20];
  assign critical_word_o[16] = axi_resp_i[19];
  assign critical_word_o[15] = axi_resp_i[18];
  assign critical_word_o[14] = axi_resp_i[17];
  assign critical_word_o[13] = axi_resp_i[16];
  assign critical_word_o[12] = axi_resp_i[15];
  assign critical_word_o[11] = axi_resp_i[14];
  assign critical_word_o[10] = axi_resp_i[13];
  assign critical_word_o[9] = axi_resp_i[12];
  assign critical_word_o[8] = axi_resp_i[11];
  assign critical_word_o[7] = axi_resp_i[10];
  assign critical_word_o[6] = axi_resp_i[9];
  assign critical_word_o[5] = axi_resp_i[8];
  assign critical_word_o[4] = axi_resp_i[7];
  assign critical_word_o[3] = axi_resp_i[6];
  assign critical_word_o[2] = axi_resp_i[5];
  assign critical_word_o[1] = axi_resp_i[4];
  assign critical_word_o[0] = axi_resp_i[3];
  assign gnt_id_o[3] = id_i[3];
  assign axi_req_o[98] = id_i[3];
  assign axi_req_o[277] = id_i[3];
  assign gnt_id_o[2] = id_i[2];
  assign axi_req_o[97] = id_i[2];
  assign axi_req_o[276] = id_i[2];
  assign gnt_id_o[1] = id_i[1];
  assign axi_req_o[96] = id_i[1];
  assign axi_req_o[275] = id_i[1];
  assign gnt_id_o[0] = id_i[0];
  assign axi_req_o[95] = id_i[0];
  assign axi_req_o[274] = id_i[0];
  assign axi_req_o[94] = addr_i[63];
  assign axi_req_o[273] = addr_i[63];
  assign axi_req_o[93] = addr_i[62];
  assign axi_req_o[272] = addr_i[62];
  assign axi_req_o[92] = addr_i[61];
  assign axi_req_o[271] = addr_i[61];
  assign axi_req_o[91] = addr_i[60];
  assign axi_req_o[270] = addr_i[60];
  assign axi_req_o[90] = addr_i[59];
  assign axi_req_o[269] = addr_i[59];
  assign axi_req_o[89] = addr_i[58];
  assign axi_req_o[268] = addr_i[58];
  assign axi_req_o[88] = addr_i[57];
  assign axi_req_o[267] = addr_i[57];
  assign axi_req_o[87] = addr_i[56];
  assign axi_req_o[266] = addr_i[56];
  assign axi_req_o[86] = addr_i[55];
  assign axi_req_o[265] = addr_i[55];
  assign axi_req_o[85] = addr_i[54];
  assign axi_req_o[264] = addr_i[54];
  assign axi_req_o[84] = addr_i[53];
  assign axi_req_o[263] = addr_i[53];
  assign axi_req_o[83] = addr_i[52];
  assign axi_req_o[262] = addr_i[52];
  assign axi_req_o[82] = addr_i[51];
  assign axi_req_o[261] = addr_i[51];
  assign axi_req_o[81] = addr_i[50];
  assign axi_req_o[260] = addr_i[50];
  assign axi_req_o[80] = addr_i[49];
  assign axi_req_o[259] = addr_i[49];
  assign axi_req_o[79] = addr_i[48];
  assign axi_req_o[258] = addr_i[48];
  assign axi_req_o[78] = addr_i[47];
  assign axi_req_o[257] = addr_i[47];
  assign axi_req_o[77] = addr_i[46];
  assign axi_req_o[256] = addr_i[46];
  assign axi_req_o[76] = addr_i[45];
  assign axi_req_o[255] = addr_i[45];
  assign axi_req_o[75] = addr_i[44];
  assign axi_req_o[254] = addr_i[44];
  assign axi_req_o[74] = addr_i[43];
  assign axi_req_o[253] = addr_i[43];
  assign axi_req_o[73] = addr_i[42];
  assign axi_req_o[252] = addr_i[42];
  assign axi_req_o[72] = addr_i[41];
  assign axi_req_o[251] = addr_i[41];
  assign axi_req_o[71] = addr_i[40];
  assign axi_req_o[250] = addr_i[40];
  assign axi_req_o[70] = addr_i[39];
  assign axi_req_o[249] = addr_i[39];
  assign axi_req_o[69] = addr_i[38];
  assign axi_req_o[248] = addr_i[38];
  assign axi_req_o[68] = addr_i[37];
  assign axi_req_o[247] = addr_i[37];
  assign axi_req_o[67] = addr_i[36];
  assign axi_req_o[246] = addr_i[36];
  assign axi_req_o[66] = addr_i[35];
  assign axi_req_o[245] = addr_i[35];
  assign axi_req_o[65] = addr_i[34];
  assign axi_req_o[244] = addr_i[34];
  assign axi_req_o[64] = addr_i[33];
  assign axi_req_o[243] = addr_i[33];
  assign axi_req_o[63] = addr_i[32];
  assign axi_req_o[242] = addr_i[32];
  assign axi_req_o[62] = addr_i[31];
  assign axi_req_o[241] = addr_i[31];
  assign axi_req_o[61] = addr_i[30];
  assign axi_req_o[240] = addr_i[30];
  assign axi_req_o[60] = addr_i[29];
  assign axi_req_o[239] = addr_i[29];
  assign axi_req_o[59] = addr_i[28];
  assign axi_req_o[238] = addr_i[28];
  assign axi_req_o[58] = addr_i[27];
  assign axi_req_o[237] = addr_i[27];
  assign axi_req_o[57] = addr_i[26];
  assign axi_req_o[236] = addr_i[26];
  assign axi_req_o[56] = addr_i[25];
  assign axi_req_o[235] = addr_i[25];
  assign axi_req_o[55] = addr_i[24];
  assign axi_req_o[234] = addr_i[24];
  assign axi_req_o[54] = addr_i[23];
  assign axi_req_o[233] = addr_i[23];
  assign axi_req_o[53] = addr_i[22];
  assign axi_req_o[232] = addr_i[22];
  assign axi_req_o[52] = addr_i[21];
  assign axi_req_o[231] = addr_i[21];
  assign axi_req_o[51] = addr_i[20];
  assign axi_req_o[230] = addr_i[20];
  assign axi_req_o[50] = addr_i[19];
  assign axi_req_o[229] = addr_i[19];
  assign axi_req_o[49] = addr_i[18];
  assign axi_req_o[228] = addr_i[18];
  assign axi_req_o[48] = addr_i[17];
  assign axi_req_o[227] = addr_i[17];
  assign axi_req_o[47] = addr_i[16];
  assign axi_req_o[226] = addr_i[16];
  assign axi_req_o[46] = addr_i[15];
  assign axi_req_o[225] = addr_i[15];
  assign axi_req_o[45] = addr_i[14];
  assign axi_req_o[224] = addr_i[14];
  assign axi_req_o[44] = addr_i[13];
  assign axi_req_o[223] = addr_i[13];
  assign axi_req_o[43] = addr_i[12];
  assign axi_req_o[222] = addr_i[12];
  assign axi_req_o[42] = addr_i[11];
  assign axi_req_o[221] = addr_i[11];
  assign axi_req_o[41] = addr_i[10];
  assign axi_req_o[220] = addr_i[10];
  assign axi_req_o[40] = addr_i[9];
  assign axi_req_o[219] = addr_i[9];
  assign axi_req_o[39] = addr_i[8];
  assign axi_req_o[218] = addr_i[8];
  assign axi_req_o[38] = addr_i[7];
  assign axi_req_o[217] = addr_i[7];
  assign axi_req_o[37] = addr_i[6];
  assign axi_req_o[216] = addr_i[6];
  assign axi_req_o[36] = addr_i[5];
  assign axi_req_o[215] = addr_i[5];
  assign axi_req_o[35] = addr_i[4];
  assign axi_req_o[214] = addr_i[4];
  assign axi_req_o[213] = addr_i[3];
  assign axi_req_o[212] = addr_i[2];
  assign axi_req_o[211] = addr_i[1];
  assign axi_req_o[210] = addr_i[0];
  assign axi_req_o[21] = size_i[1];
  assign axi_req_o[200] = size_i[1];
  assign axi_req_o[20] = size_i[0];
  assign axi_req_o[199] = size_i[0];
  assign axi_req_o[173] = wdata_i[63];
  assign axi_req_o[172] = wdata_i[62];
  assign axi_req_o[171] = wdata_i[61];
  assign axi_req_o[170] = wdata_i[60];
  assign axi_req_o[169] = wdata_i[59];
  assign axi_req_o[168] = wdata_i[58];
  assign axi_req_o[167] = wdata_i[57];
  assign axi_req_o[166] = wdata_i[56];
  assign axi_req_o[165] = wdata_i[55];
  assign axi_req_o[164] = wdata_i[54];
  assign axi_req_o[163] = wdata_i[53];
  assign axi_req_o[162] = wdata_i[52];
  assign axi_req_o[161] = wdata_i[51];
  assign axi_req_o[160] = wdata_i[50];
  assign axi_req_o[159] = wdata_i[49];
  assign axi_req_o[158] = wdata_i[48];
  assign axi_req_o[157] = wdata_i[47];
  assign axi_req_o[156] = wdata_i[46];
  assign axi_req_o[155] = wdata_i[45];
  assign axi_req_o[154] = wdata_i[44];
  assign axi_req_o[153] = wdata_i[43];
  assign axi_req_o[152] = wdata_i[42];
  assign axi_req_o[151] = wdata_i[41];
  assign axi_req_o[150] = wdata_i[40];
  assign axi_req_o[149] = wdata_i[39];
  assign axi_req_o[148] = wdata_i[38];
  assign axi_req_o[147] = wdata_i[37];
  assign axi_req_o[146] = wdata_i[36];
  assign axi_req_o[145] = wdata_i[35];
  assign axi_req_o[144] = wdata_i[34];
  assign axi_req_o[143] = wdata_i[33];
  assign axi_req_o[142] = wdata_i[32];
  assign axi_req_o[141] = wdata_i[31];
  assign axi_req_o[140] = wdata_i[30];
  assign axi_req_o[139] = wdata_i[29];
  assign axi_req_o[138] = wdata_i[28];
  assign axi_req_o[137] = wdata_i[27];
  assign axi_req_o[136] = wdata_i[26];
  assign axi_req_o[135] = wdata_i[25];
  assign axi_req_o[134] = wdata_i[24];
  assign axi_req_o[133] = wdata_i[23];
  assign axi_req_o[132] = wdata_i[22];
  assign axi_req_o[131] = wdata_i[21];
  assign axi_req_o[130] = wdata_i[20];
  assign axi_req_o[129] = wdata_i[19];
  assign axi_req_o[128] = wdata_i[18];
  assign axi_req_o[127] = wdata_i[17];
  assign axi_req_o[126] = wdata_i[16];
  assign axi_req_o[125] = wdata_i[15];
  assign axi_req_o[124] = wdata_i[14];
  assign axi_req_o[123] = wdata_i[13];
  assign axi_req_o[122] = wdata_i[12];
  assign axi_req_o[121] = wdata_i[11];
  assign axi_req_o[120] = wdata_i[10];
  assign axi_req_o[119] = wdata_i[9];
  assign axi_req_o[118] = wdata_i[8];
  assign axi_req_o[117] = wdata_i[7];
  assign axi_req_o[116] = wdata_i[6];
  assign axi_req_o[115] = wdata_i[5];
  assign axi_req_o[114] = wdata_i[4];
  assign axi_req_o[113] = wdata_i[3];
  assign axi_req_o[112] = wdata_i[2];
  assign axi_req_o[111] = wdata_i[1];
  assign axi_req_o[110] = wdata_i[0];
  assign axi_req_o[109] = be_i[7];
  assign axi_req_o[108] = be_i[6];
  assign axi_req_o[107] = be_i[5];
  assign axi_req_o[106] = be_i[4];
  assign axi_req_o[105] = be_i[3];
  assign axi_req_o[104] = be_i[2];
  assign axi_req_o[103] = be_i[1];
  assign axi_req_o[102] = be_i[0];
  assign N29 = N28 & N328;
  assign N30 = N329 & N330;
  assign N31 = N29 & N30;
  assign N32 = state_q[3] | state_q[2];
  assign N33 = N329 | state_q[0];
  assign N34 = N32 | N33;
  assign N36 = state_q[3] | N328;
  assign N37 = state_q[1] | state_q[0];
  assign N38 = N36 | N37;
  assign N40 = state_q[3] | N328;
  assign N41 = state_q[1] | N330;
  assign N42 = N40 | N41;
  assign N44 = state_q[3] | state_q[2];
  assign N45 = N329 | N330;
  assign N46 = N44 | N45;
  assign N48 = state_q[3] | state_q[2];
  assign N49 = state_q[1] | N330;
  assign N50 = N48 | N49;
  assign N52 = state_q[3] | N328;
  assign N53 = N329 | N330;
  assign N54 = N52 | N53;
  assign N55 = state_q[3] | N328;
  assign N56 = N329 | state_q[0];
  assign N57 = N55 | N56;
  assign N59 = N28 | state_q[2];
  assign N60 = state_q[1] | state_q[0];
  assign N61 = N59 | N60;
  assign N66 = axi_resp_i[81] | N76;
  assign N68 = N75 | axi_resp_i[79];
  assign N70 = N75 & N76;
  assign N0 = N110 ^ addr_offset_q[0];
  assign N112 = ~N0;

  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      id_q[3] <= 1'b0;
    end else if(N268) begin
      id_q[3] <= id_d[3];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      id_q[2] <= 1'b0;
    end else if(N268) begin
      id_q[2] <= id_d[2];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      id_q[1] <= 1'b0;
    end else if(N268) begin
      id_q[1] <= id_d[1];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      id_q[0] <= 1'b0;
    end else if(N268) begin
      id_q[0] <= id_d[0];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      state_q[3] <= 1'b0;
    end else if(N296) begin
      state_q[3] <= state_d[3];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      state_q[2] <= 1'b0;
    end else if(N296) begin
      state_q[2] <= state_d[2];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      state_q[1] <= 1'b0;
    end else if(N296) begin
      state_q[1] <= state_d[1];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      state_q[0] <= 1'b0;
    end else if(N296) begin
      state_q[0] <= state_d[0];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      cnt_q[0] <= 1'b0;
    end else if(N312) begin
      cnt_q[0] <= cnt_d[0];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[63] <= 1'b0;
    end else if(N315) begin
      rdata_o[63] <= cache_line_d[63];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[62] <= 1'b0;
    end else if(N315) begin
      rdata_o[62] <= cache_line_d[62];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[61] <= 1'b0;
    end else if(N315) begin
      rdata_o[61] <= cache_line_d[61];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[60] <= 1'b0;
    end else if(N315) begin
      rdata_o[60] <= cache_line_d[60];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[59] <= 1'b0;
    end else if(N315) begin
      rdata_o[59] <= cache_line_d[59];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[58] <= 1'b0;
    end else if(N315) begin
      rdata_o[58] <= cache_line_d[58];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[57] <= 1'b0;
    end else if(N315) begin
      rdata_o[57] <= cache_line_d[57];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[56] <= 1'b0;
    end else if(N315) begin
      rdata_o[56] <= cache_line_d[56];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[55] <= 1'b0;
    end else if(N315) begin
      rdata_o[55] <= cache_line_d[55];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[54] <= 1'b0;
    end else if(N315) begin
      rdata_o[54] <= cache_line_d[54];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[53] <= 1'b0;
    end else if(N315) begin
      rdata_o[53] <= cache_line_d[53];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[52] <= 1'b0;
    end else if(N315) begin
      rdata_o[52] <= cache_line_d[52];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[51] <= 1'b0;
    end else if(N315) begin
      rdata_o[51] <= cache_line_d[51];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[50] <= 1'b0;
    end else if(N315) begin
      rdata_o[50] <= cache_line_d[50];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[49] <= 1'b0;
    end else if(N315) begin
      rdata_o[49] <= cache_line_d[49];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[48] <= 1'b0;
    end else if(N315) begin
      rdata_o[48] <= cache_line_d[48];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[47] <= 1'b0;
    end else if(N315) begin
      rdata_o[47] <= cache_line_d[47];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[46] <= 1'b0;
    end else if(N315) begin
      rdata_o[46] <= cache_line_d[46];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[45] <= 1'b0;
    end else if(N315) begin
      rdata_o[45] <= cache_line_d[45];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[44] <= 1'b0;
    end else if(N315) begin
      rdata_o[44] <= cache_line_d[44];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[43] <= 1'b0;
    end else if(N315) begin
      rdata_o[43] <= cache_line_d[43];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[42] <= 1'b0;
    end else if(N315) begin
      rdata_o[42] <= cache_line_d[42];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[41] <= 1'b0;
    end else if(N315) begin
      rdata_o[41] <= cache_line_d[41];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[40] <= 1'b0;
    end else if(N315) begin
      rdata_o[40] <= cache_line_d[40];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[39] <= 1'b0;
    end else if(N315) begin
      rdata_o[39] <= cache_line_d[39];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[38] <= 1'b0;
    end else if(N315) begin
      rdata_o[38] <= cache_line_d[38];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[37] <= 1'b0;
    end else if(N315) begin
      rdata_o[37] <= cache_line_d[37];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[36] <= 1'b0;
    end else if(N315) begin
      rdata_o[36] <= cache_line_d[36];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[35] <= 1'b0;
    end else if(N315) begin
      rdata_o[35] <= cache_line_d[35];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[34] <= 1'b0;
    end else if(N315) begin
      rdata_o[34] <= cache_line_d[34];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[33] <= 1'b0;
    end else if(N315) begin
      rdata_o[33] <= cache_line_d[33];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[32] <= 1'b0;
    end else if(N315) begin
      rdata_o[32] <= cache_line_d[32];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[31] <= 1'b0;
    end else if(N315) begin
      rdata_o[31] <= cache_line_d[31];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[30] <= 1'b0;
    end else if(N315) begin
      rdata_o[30] <= cache_line_d[30];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[29] <= 1'b0;
    end else if(N315) begin
      rdata_o[29] <= cache_line_d[29];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[28] <= 1'b0;
    end else if(N315) begin
      rdata_o[28] <= cache_line_d[28];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[27] <= 1'b0;
    end else if(N315) begin
      rdata_o[27] <= cache_line_d[27];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[26] <= 1'b0;
    end else if(N315) begin
      rdata_o[26] <= cache_line_d[26];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[25] <= 1'b0;
    end else if(N315) begin
      rdata_o[25] <= cache_line_d[25];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[24] <= 1'b0;
    end else if(N315) begin
      rdata_o[24] <= cache_line_d[24];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[23] <= 1'b0;
    end else if(N315) begin
      rdata_o[23] <= cache_line_d[23];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[22] <= 1'b0;
    end else if(N315) begin
      rdata_o[22] <= cache_line_d[22];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[21] <= 1'b0;
    end else if(N315) begin
      rdata_o[21] <= cache_line_d[21];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[20] <= 1'b0;
    end else if(N315) begin
      rdata_o[20] <= cache_line_d[20];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[19] <= 1'b0;
    end else if(N315) begin
      rdata_o[19] <= cache_line_d[19];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[18] <= 1'b0;
    end else if(N315) begin
      rdata_o[18] <= cache_line_d[18];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[17] <= 1'b0;
    end else if(N315) begin
      rdata_o[17] <= cache_line_d[17];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[16] <= 1'b0;
    end else if(N315) begin
      rdata_o[16] <= cache_line_d[16];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[15] <= 1'b0;
    end else if(N315) begin
      rdata_o[15] <= cache_line_d[15];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[14] <= 1'b0;
    end else if(N315) begin
      rdata_o[14] <= cache_line_d[14];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[13] <= 1'b0;
    end else if(N315) begin
      rdata_o[13] <= cache_line_d[13];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[12] <= 1'b0;
    end else if(N315) begin
      rdata_o[12] <= cache_line_d[12];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[11] <= 1'b0;
    end else if(N315) begin
      rdata_o[11] <= cache_line_d[11];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[10] <= 1'b0;
    end else if(N315) begin
      rdata_o[10] <= cache_line_d[10];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[9] <= 1'b0;
    end else if(N315) begin
      rdata_o[9] <= cache_line_d[9];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[8] <= 1'b0;
    end else if(N315) begin
      rdata_o[8] <= cache_line_d[8];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[7] <= 1'b0;
    end else if(N315) begin
      rdata_o[7] <= cache_line_d[7];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[6] <= 1'b0;
    end else if(N315) begin
      rdata_o[6] <= cache_line_d[6];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[5] <= 1'b0;
    end else if(N315) begin
      rdata_o[5] <= cache_line_d[5];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[4] <= 1'b0;
    end else if(N315) begin
      rdata_o[4] <= cache_line_d[4];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[3] <= 1'b0;
    end else if(N315) begin
      rdata_o[3] <= cache_line_d[3];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[2] <= 1'b0;
    end else if(N315) begin
      rdata_o[2] <= cache_line_d[2];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[1] <= 1'b0;
    end else if(N315) begin
      rdata_o[1] <= cache_line_d[1];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      rdata_o[0] <= 1'b0;
    end else if(N315) begin
      rdata_o[0] <= cache_line_d[0];
    end 
  end


  always @(posedge clk_i or posedge N256) begin
    if(N256) begin
      addr_offset_q[0] <= 1'b0;
    end else if(N325) begin
      addr_offset_q[0] <= addr_offset_d[0];
    end 
  end

  assign N326 = ~cnt_q[0];
  assign N327 = ~type_i;
  assign N328 = ~state_q[2];
  assign N329 = ~state_q[1];
  assign N330 = ~state_q[0];
  assign N331 = N328 | state_q[3];
  assign N332 = N329 | N331;
  assign N333 = N330 | N332;
  assign N334 = ~N333;
  assign N110 = 1'b0 ^ cnt_q[0];
  assign N244 = cnt_q[0] ^ 1'b1;
  assign N106 = cnt_q[0] ^ 1'b1;
  assign N97 = cnt_q[0] ^ 1'b1;
  assign N98 = cnt_q[0] ^ 1'b1;
  assign N335 = ~N110;
  assign N114 = 1'b1 & N335;
  assign N75 = ~axi_resp_i[81];
  assign N76 = ~axi_resp_i[79];
  assign N74 = axi_resp_i[81] & axi_resp_i[79];
  assign axi_req_o[34:31] = (N1)? addr_i[3:0] : 
                            (N2)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N1 = N327;
  assign N2 = axi_req_o[18];
  assign { N72, N71 } = (N3)? { 1'b0, 1'b1 } : 
                        (N4)? { 1'b1, 1'b0 } : 
                        (N5)? { 1'b1, 1'b1 } : 
                        (N6)? { 1'b0, 1'b0 } : 1'b0;
  assign N3 = N74;
  assign N4 = N67;
  assign N5 = N69;
  assign N6 = N70;
  assign { N79, N78, N77 } = (N3)? { 1'b0, 1'b1, 1'b1 } : 
                             (N7)? { 1'b1, 1'b0, 1'b0 } : 
                             (N8)? { 1'b0, 1'b1, 1'b1 } : 1'b0;
  assign N7 = N75;
  assign N8 = N76;
  assign N80 = (N1)? N65 : 
               (N2)? 1'b0 : 1'b0;
  assign { N83, N82, N81 } = (N1)? { 1'b0, N72, N71 } : 
                             (N2)? { N79, N78, N77 } : 1'b0;
  assign N84 = (N1)? 1'b0 : 
               (N2)? axi_resp_i[79] : 1'b0;
  assign N86 = (N9)? N327 : 
               (N10)? 1'b0 : 1'b0;
  assign N9 = we_i;
  assign N10 = N64;
  assign N87 = (N9)? N84 : 
               (N10)? 1'b0 : 1'b0;
  assign N88 = (N9)? N80 : 
               (N10)? axi_resp_i[80] : 1'b0;
  assign { N91, N90, N89 } = (N9)? { N83, N82, N81 } : 
                             (N10)? { 1'b1, 1'b1, axi_req_o[18:18] } : 1'b0;
  assign { N94, N93, N92 } = (N11)? { N86, we_i, N64 } : 
                             (N12)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N11 = req_i;
  assign N12 = N63;
  assign N95 = (N11)? N87 : 
               (N12)? 1'b0 : 1'b0;
  assign N96 = (N11)? N88 : 
               (N12)? 1'b0 : 1'b0;
  assign N99 = (N4)? N97 : 
               (N3)? N98 : 1'b0;
  assign { N101, N100 } = (N4)? { 1'b1, 1'b0 } : 
                          (N5)? { 1'b0, 1'b1 } : 
                          (N3)? { 1'b0, cnt_q[0:0] } : 1'b0;
  assign N102 = (N4)? 1'b0 : 
                (N5)? 1'b0 : 
                (N3)? N326 : 
                (N6)? 1'b0 : 1'b0;
  assign N107 = (N13)? 1'b1 : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 1'b0;
  assign N13 = N326;
  assign N14 = cnt_q[0];
  assign N15 = 1'b0;
  assign N108 = (N13)? axi_resp_i[79] : 
                (N14)? 1'b0 : 
                (N15)? 1'b0 : 1'b0;
  assign { N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116 } = (N16)? { axi_resp_i[3:3], axi_resp_i[4:4], axi_resp_i[5:5], axi_resp_i[6:6], axi_resp_i[7:7], axi_resp_i[8:8], axi_resp_i[9:9], axi_resp_i[10:10], axi_resp_i[11:11], axi_resp_i[12:12], axi_resp_i[13:13], axi_resp_i[14:14], axi_resp_i[15:15], axi_resp_i[16:16], axi_resp_i[17:17], axi_resp_i[18:18], axi_resp_i[19:19], axi_resp_i[20:20], axi_resp_i[21:21], axi_resp_i[22:22], axi_resp_i[23:23], axi_resp_i[24:24], axi_resp_i[25:25], axi_resp_i[26:26], axi_resp_i[27:27], axi_resp_i[28:28], axi_resp_i[29:29], axi_resp_i[30:30], axi_resp_i[31:31], axi_resp_i[32:32], axi_resp_i[33:33], axi_resp_i[34:34], axi_resp_i[35:35], axi_resp_i[36:36], axi_resp_i[37:37], axi_resp_i[38:38], axi_resp_i[39:39], axi_resp_i[40:40], axi_resp_i[41:41], axi_resp_i[42:42], axi_resp_i[43:43], axi_resp_i[44:44], axi_resp_i[45:45], axi_resp_i[46:46], axi_resp_i[47:47], axi_resp_i[48:48], axi_resp_i[49:49], axi_resp_i[50:50], axi_resp_i[51:51], axi_resp_i[52:52], axi_resp_i[53:53], axi_resp_i[54:54], axi_resp_i[55:55], axi_resp_i[56:56], axi_resp_i[57:57], axi_resp_i[58:58], axi_resp_i[59:59], axi_resp_i[60:60], axi_resp_i[61:61], axi_resp_i[62:62], axi_resp_i[63:63], axi_resp_i[64:64], axi_resp_i[65:65], axi_resp_i[66:66] } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N115)? { rdata_o[0:0], rdata_o[1:1], rdata_o[2:2], rdata_o[3:3], rdata_o[4:4], rdata_o[5:5], rdata_o[6:6], rdata_o[7:7], rdata_o[8:8], rdata_o[9:9], rdata_o[10:10], rdata_o[11:11], rdata_o[12:12], rdata_o[13:13], rdata_o[14:14], rdata_o[15:15], rdata_o[16:16], rdata_o[17:17], rdata_o[18:18], rdata_o[19:19], rdata_o[20:20], rdata_o[21:21], rdata_o[22:22], rdata_o[23:23], rdata_o[24:24], rdata_o[25:25], rdata_o[26:26], rdata_o[27:27], rdata_o[28:28], rdata_o[29:29], rdata_o[30:30], rdata_o[31:31], rdata_o[32:32], rdata_o[33:33], rdata_o[34:34], rdata_o[35:35], rdata_o[36:36], rdata_o[37:37], rdata_o[38:38], rdata_o[39:39], rdata_o[40:40], rdata_o[41:41], rdata_o[42:42], rdata_o[43:43], rdata_o[44:44], rdata_o[45:45], rdata_o[46:46], rdata_o[47:47], rdata_o[48:48], rdata_o[49:49], rdata_o[50:50], rdata_o[51:51], rdata_o[52:52], rdata_o[53:53], rdata_o[54:54], rdata_o[55:55], rdata_o[56:56], rdata_o[57:57], rdata_o[58:58], rdata_o[59:59], rdata_o[60:60], rdata_o[61:61], rdata_o[62:62], rdata_o[63:63] } : 1'b0;
  assign N16 = N114;
  assign { N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180 } = (N17)? { N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179 } : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N18)? axi_resp_i[66:3] : 1'b0;
  assign N17 = N334;
  assign N18 = N333;
  assign N245 = (N19)? N112 : 
                (N111)? 1'b0 : 1'b0;
  assign N19 = axi_resp_i[71];
  assign cnt_d[0] = (N20)? N95 : 
                    (N21)? N99 : 
                    (N22)? N106 : 
                    (N23)? N244 : 
                    (N253)? cnt_q[0] : 1'b0;
  assign N20 = N31;
  assign N21 = N39;
  assign N22 = N47;
  assign N23 = axi_req_o[0];
  assign state_d = (N20)? { 1'b0, N91, N90, N89 } : 
                   (N24)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N21)? { 1'b0, N101, N100, 1'b1 } : 
                   (N25)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N22)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N26)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                   (N23)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                   (N27)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                   (N253)? state_q : 1'b0;
  assign N24 = N35;
  assign N25 = N43;
  assign N26 = axi_req_o[99];
  assign N27 = N62;
  assign addr_offset_d[0] = (N20)? addr_i[3] : 
                            (N253)? addr_offset_q[0] : 1'b0;
  assign axi_req_o[1] = (N20)? N92 : 
                        (N255)? 1'b0 : 1'b0;
  assign { axi_req_o[174:174], axi_req_o[101:100] } = (N20)? { N93, N94, N93 } : 
                                                      (N24)? { 1'b1, 1'b0, 1'b0 } : 
                                                      (N21)? { 1'b1, N326, 1'b1 } : 
                                                      (N25)? { 1'b1, 1'b0, 1'b0 } : 
                                                      (N22)? { 1'b0, N107, 1'b1 } : 
                                                      (N26)? { 1'b0, 1'b0, 1'b0 } : 
                                                      (N23)? { 1'b0, 1'b0, 1'b0 } : 
                                                      (N27)? { 1'b0, 1'b0, 1'b0 } : 
                                                      (N253)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign gnt_o = (N20)? N96 : 
                 (N24)? axi_resp_i[81] : 
                 (N21)? N102 : 
                 (N25)? axi_resp_i[81] : 
                 (N22)? N108 : 
                 (N26)? 1'b0 : 
                 (N23)? 1'b0 : 
                 (N27)? 1'b0 : 
                 (N253)? 1'b0 : 1'b0;
  assign id_o = (N20)? axi_resp_i[70:67] : 
                (N24)? axi_resp_i[70:67] : 
                (N21)? axi_resp_i[70:67] : 
                (N25)? axi_resp_i[70:67] : 
                (N22)? axi_resp_i[70:67] : 
                (N26)? axi_resp_i[77:74] : 
                (N23)? axi_resp_i[70:67] : 
                (N27)? id_q : 
                (N253)? axi_resp_i[70:67] : 1'b0;
  assign valid_o = (N20)? 1'b0 : 
                   (N24)? 1'b0 : 
                   (N21)? 1'b0 : 
                   (N25)? 1'b0 : 
                   (N22)? 1'b0 : 
                   (N26)? axi_resp_i[78] : 
                   (N23)? 1'b0 : 
                   (N27)? 1'b1 : 
                   (N253)? 1'b0 : 1'b0;
  assign cache_line_d = (N23)? { N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180 } : 
                        (N253)? rdata_o : 1'b0;
  assign critical_word_valid_o = (N20)? 1'b0 : 
                                 (N24)? 1'b0 : 
                                 (N21)? 1'b0 : 
                                 (N25)? 1'b0 : 
                                 (N22)? 1'b0 : 
                                 (N26)? 1'b0 : 
                                 (N23)? N245 : 
                                 (N27)? 1'b0 : 
                                 (N253)? 1'b0 : 1'b0;
  assign id_d = (N23)? axi_resp_i[70:67] : 
                (N253)? id_q : 1'b0;
  assign axi_req_o[18] = type_i;
  assign N28 = ~state_q[3];
  assign N35 = ~N34;
  assign N39 = ~N38;
  assign N43 = ~N42;
  assign N47 = ~N46;
  assign N51 = ~N50;
  assign N58 = N336 | N337;
  assign N336 = ~N54;
  assign N337 = ~N57;
  assign N62 = ~N61;
  assign axi_req_o[99] = N51;
  assign axi_req_o[0] = N58;
  assign N63 = ~req_i;
  assign N64 = ~we_i;
  assign N65 = axi_resp_i[81] & axi_resp_i[79];
  assign N67 = ~N66;
  assign N69 = ~N68;
  assign N73 = ~axi_resp_i[79];
  assign N85 = ~axi_resp_i[80];
  assign N103 = ~axi_resp_i[81];
  assign N104 = axi_resp_i[79] | N326;
  assign N105 = ~N104;
  assign N109 = ~axi_resp_i[78];
  assign N111 = ~axi_resp_i[71];
  assign N113 = ~axi_resp_i[0];
  assign N115 = ~N114;
  assign N246 = N35 | N31;
  assign N247 = N39 | N246;
  assign N248 = N43 | N247;
  assign N249 = N47 | N248;
  assign N250 = axi_req_o[99] | N249;
  assign N251 = axi_req_o[0] | N250;
  assign N252 = N62 | N251;
  assign N253 = ~N252;
  assign N254 = ~N31;
  assign N255 = N254;
  assign N256 = ~rst_ni;
  assign N257 = N31 | N35;
  assign N258 = N257 | N39;
  assign N259 = N258 | N43;
  assign N260 = N259 | N47;
  assign N261 = N260 | axi_req_o[99];
  assign N262 = axi_resp_i[71] & axi_req_o[0];
  assign N263 = N113 & N262;
  assign N264 = N261 | N263;
  assign N265 = N111 & axi_req_o[0];
  assign N266 = N264 | N265;
  assign N267 = N266 | N62;
  assign N268 = ~N267;
  assign N269 = req_i & N31;
  assign N270 = we_i & N269;
  assign N271 = axi_req_o[18] & N270;
  assign N272 = N70 & N271;
  assign N273 = N64 & N269;
  assign N274 = N85 & N273;
  assign N275 = N272 | N274;
  assign N276 = N63 & N31;
  assign N277 = N275 | N276;
  assign N278 = N103 & N35;
  assign N279 = N277 | N278;
  assign N280 = N67 & N39;
  assign N281 = cnt_q[0] & N280;
  assign N282 = N279 | N281;
  assign N283 = N70 & N39;
  assign N284 = N282 | N283;
  assign N285 = N103 & N43;
  assign N286 = N284 | N285;
  assign N287 = N326 & N47;
  assign N288 = N73 & N287;
  assign N289 = N286 | N288;
  assign N290 = cnt_q[0] & N47;
  assign N291 = N289 | N290;
  assign N292 = N109 & axi_req_o[99];
  assign N293 = N291 | N292;
  assign N294 = N293 | N263;
  assign N295 = N294 | N265;
  assign N296 = ~N295;
  assign N297 = N326 & N280;
  assign N298 = N35 | N297;
  assign N299 = N69 & N39;
  assign N300 = N298 | N299;
  assign N301 = N74 & N39;
  assign N302 = N326 & N301;
  assign N303 = N300 | N302;
  assign N304 = N303 | N283;
  assign N305 = N304 | N43;
  assign N306 = N305 | N287;
  assign N307 = N105 & N47;
  assign N308 = N306 | N307;
  assign N309 = N308 | axi_req_o[99];
  assign N310 = N309 | N265;
  assign N311 = N310 | N62;
  assign N312 = ~N311;
  assign N313 = N261 | N265;
  assign N314 = N313 | N62;
  assign N315 = ~N314;
  assign N316 = N270 | N274;
  assign N317 = N316 | N276;
  assign N318 = N317 | N35;
  assign N319 = N318 | N39;
  assign N320 = N319 | N43;
  assign N321 = N320 | N47;
  assign N322 = N321 | axi_req_o[99];
  assign N323 = N322 | axi_req_o[0];
  assign N324 = N323 | N62;
  assign N325 = ~N324;

endmodule