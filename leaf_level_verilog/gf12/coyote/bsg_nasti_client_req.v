module bsg_nasti_client_req
(
  clk_i,
  reset_i,
  nasti_ar_valid_i,
  nasti_ar_data_i,
  nasti_ar_ready_o,
  nasti_aw_valid_i,
  nasti_aw_data_i,
  nasti_aw_ready_o,
  nasti_w_valid_i,
  nasti_w_data_i,
  nasti_w_ready_o,
  nasti_b_valid_o,
  nasti_b_data_o,
  nasti_b_ready_i,
  req_valid_o,
  req_data_o,
  req_yumi_i
);

  input [66:0] nasti_ar_data_i;
  input [66:0] nasti_aw_data_i;
  input [72:0] nasti_w_data_i;
  output [7:0] nasti_b_data_o;
  output [72:0] req_data_o;
  input clk_i;
  input reset_i;
  input nasti_ar_valid_i;
  input nasti_aw_valid_i;
  input nasti_w_valid_i;
  input nasti_b_ready_i;
  input req_yumi_i;
  output nasti_ar_ready_o;
  output nasti_aw_ready_o;
  output nasti_w_ready_o;
  output nasti_b_valid_o;
  output req_valid_o;
  wire nasti_ar_ready_o,nasti_aw_ready_o,nasti_w_ready_o,nasti_b_valid_o,req_valid_o,
  N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,
  N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244;
  wire [5:0] state_n;
  reg [5:0] state_r;
  reg [72:0] req_data_o;
  reg [7:0] nasti_b_data_o;
  assign nasti_b_data_o[6] = 1'b0;
  assign nasti_b_data_o[7] = 1'b0;

  always @(posedge clk_i) begin
    if(N171) begin
      state_r[5] <= N17;
    end 
  end


  always @(posedge clk_i) begin
    if(N171) begin
      state_r[4] <= N16;
    end 
  end


  always @(posedge clk_i) begin
    if(N171) begin
      state_r[3] <= N15;
    end 
  end


  always @(posedge clk_i) begin
    if(N171) begin
      state_r[2] <= N14;
    end 
  end


  always @(posedge clk_i) begin
    if(N171) begin
      state_r[1] <= N13;
    end 
  end


  always @(posedge clk_i) begin
    if(N171) begin
      state_r[0] <= N12;
    end 
  end

  assign N18 = state_r[5] | state_r[4];
  assign N19 = state_r[3] | state_r[2];
  assign N20 = state_r[1] | N172;
  assign N21 = N18 | N19;
  assign N22 = N21 | N20;
  assign N24 = state_r[5] | state_r[4];
  assign N25 = state_r[3] | state_r[2];
  assign N26 = N199 | state_r[0];
  assign N27 = N24 | N25;
  assign N28 = N27 | N26;
  assign N30 = state_r[5] | state_r[4];
  assign N31 = state_r[3] | N206;
  assign N32 = state_r[1] | state_r[0];
  assign N33 = N30 | N31;
  assign N34 = N33 | N32;
  assign N36 = state_r[5] | state_r[4];
  assign N37 = N185 | state_r[2];
  assign N38 = state_r[1] | state_r[0];
  assign N39 = N36 | N37;
  assign N40 = N39 | N38;
  assign N42 = state_r[5] | N213;
  assign N43 = state_r[3] | state_r[2];
  assign N44 = state_r[1] | state_r[0];
  assign N45 = N42 | N43;
  assign N46 = N45 | N44;
  assign N48 = N192 | state_r[4];
  assign N49 = state_r[3] | state_r[2];
  assign N50 = state_r[1] | state_r[0];
  assign N51 = N48 | N49;
  assign N52 = N51 | N50;

  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[72] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[71] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[70] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[69] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[68] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[67] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[66] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[65] <= 1'b0;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[64] <= N146;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[63] <= N145;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[62] <= N144;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[61] <= N143;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[60] <= N142;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[59] <= N141;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[58] <= N140;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[57] <= N139;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[56] <= N138;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[55] <= N137;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[54] <= N136;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[53] <= N135;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[52] <= N134;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[51] <= N133;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[50] <= N132;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[49] <= N131;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[48] <= N130;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[47] <= N129;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[46] <= N128;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[45] <= N127;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[44] <= N126;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[43] <= N125;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[42] <= N124;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[41] <= N123;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[40] <= N122;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[39] <= N121;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[38] <= N120;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[37] <= N119;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[36] <= N118;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[35] <= N117;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[34] <= N116;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[33] <= N115;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[32] <= N114;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[31] <= N113;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[30] <= N112;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[29] <= N111;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[28] <= N110;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[27] <= N109;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[26] <= N108;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[25] <= N107;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[24] <= N106;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[23] <= N105;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[22] <= N104;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[21] <= N103;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[20] <= N102;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[19] <= N101;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[18] <= N100;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[17] <= N99;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[16] <= N98;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[15] <= N97;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[14] <= N96;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[13] <= N95;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[12] <= N94;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[11] <= N93;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[10] <= N92;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[9] <= N91;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[8] <= N90;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[7] <= N89;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[6] <= N88;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[5] <= N87;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[4] <= N86;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[3] <= N85;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[2] <= N84;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[1] <= N83;
    end 
  end


  always @(posedge clk_i) begin
    if(N81) begin
      req_data_o[0] <= N82;
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[5] <= nasti_aw_data_i[5];
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[4] <= nasti_aw_data_i[4];
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[3] <= nasti_aw_data_i[3];
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[2] <= nasti_aw_data_i[2];
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[1] <= nasti_aw_data_i[1];
    end 
  end


  always @(posedge clk_i) begin
    if(N153) begin
      nasti_b_data_o[0] <= nasti_aw_data_i[0];
    end 
  end

  assign N172 = ~state_r[0];
  assign N173 = state_r[4] | state_r[5];
  assign N174 = state_r[3] | N173;
  assign N175 = state_r[2] | N174;
  assign N176 = state_r[1] | N175;
  assign N177 = N172 | N176;
  assign N178 = ~N177;
  assign N179 = state_r[4] | state_r[5];
  assign N180 = state_r[3] | N179;
  assign N181 = state_r[2] | N180;
  assign N182 = state_r[1] | N181;
  assign N183 = N172 | N182;
  assign N184 = ~N183;
  assign N185 = ~state_r[3];
  assign N186 = state_r[4] | state_r[5];
  assign N187 = N185 | N186;
  assign N188 = state_r[2] | N187;
  assign N189 = state_r[1] | N188;
  assign N190 = state_r[0] | N189;
  assign N191 = ~N190;
  assign N192 = ~state_r[5];
  assign N193 = state_r[4] | N192;
  assign N194 = state_r[3] | N193;
  assign N195 = state_r[2] | N194;
  assign N196 = state_r[1] | N195;
  assign N197 = state_r[0] | N196;
  assign N198 = ~N197;
  assign N199 = ~state_r[1];
  assign N200 = state_r[4] | state_r[5];
  assign N201 = state_r[3] | N200;
  assign N202 = state_r[2] | N201;
  assign N203 = N199 | N202;
  assign N204 = state_r[0] | N203;
  assign N205 = ~N204;
  assign N206 = ~state_r[2];
  assign N207 = state_r[4] | state_r[5];
  assign N208 = state_r[3] | N207;
  assign N209 = N206 | N208;
  assign N210 = state_r[1] | N209;
  assign N211 = state_r[0] | N210;
  assign N212 = ~N211;
  assign N213 = ~state_r[4];
  assign N214 = N213 | state_r[5];
  assign N215 = state_r[3] | N214;
  assign N216 = state_r[2] | N215;
  assign N217 = state_r[1] | N216;
  assign N218 = state_r[0] | N217;
  assign N219 = ~N218;
  assign N220 = state_r[4] | state_r[5];
  assign N221 = state_r[3] | N220;
  assign N222 = state_r[2] | N221;
  assign N223 = state_r[1] | N222;
  assign N224 = N172 | N223;
  assign N225 = ~N224;
  assign N226 = state_r[4] | state_r[5];
  assign N227 = state_r[3] | N226;
  assign N228 = state_r[2] | N227;
  assign N229 = state_r[1] | N228;
  assign N230 = N172 | N229;
  assign N231 = ~N230;
  assign N232 = state_r[4] | state_r[5];
  assign N233 = state_r[3] | N232;
  assign N234 = state_r[2] | N233;
  assign N235 = state_r[1] | N234;
  assign N236 = N172 | N235;
  assign N237 = ~N236;
  assign N238 = state_r[4] | state_r[5];
  assign N239 = N185 | N238;
  assign N240 = state_r[2] | N239;
  assign N241 = state_r[1] | N240;
  assign N242 = state_r[0] | N241;
  assign N243 = ~N242;
  assign { N17, N16, N15, N14, N13, N12 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                                            (N1)? state_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N11;
  assign { N63, N62 } = (N2)? { 1'b1, 1'b0 } : 
                        (N72)? { 1'b0, 1'b1 } : 1'b0;
  assign N2 = nasti_aw_valid_i;
  assign { N68, N67 } = (N3)? { 1'b1, 1'b0 } : 
                        (N74)? { 1'b0, 1'b1 } : 1'b0;
  assign N3 = N64;
  assign state_n = (N4)? { 1'b0, 1'b0, 1'b0, N63, N62, 1'b0 } : 
                   (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N6)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                   (N7)? { 1'b0, N68, 1'b0, N67, 1'b0, 1'b0 } : 
                   (N8)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                   (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N59)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign N4 = N23;
  assign N5 = N29;
  assign N6 = N35;
  assign N7 = N41;
  assign N8 = N47;
  assign N9 = N53;
  assign N81 = (N10)? 1'b1 : 
               (N148)? 1'b1 : 
               (N151)? 1'b1 : 
               (N80)? 1'b0 : 1'b0;
  assign N10 = N75;
  assign { N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82 } = (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, nasti_aw_data_i[66:35], nasti_aw_data_i[5:0], 1'b1 } : 
                                                                                                                                                                                                                                                                                                                                                                                                  (N148)? { nasti_w_data_i[8:8], nasti_w_data_i[72:9] } : 
                                                                                                                                                                                                                                                                                                                                                                                                  (N151)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, nasti_ar_data_i[66:35], nasti_ar_data_i[5:0], 1'b0 } : 1'b0;
  assign N11 = ~reset_i;
  assign N23 = ~N22;
  assign N29 = ~N28;
  assign N35 = ~N34;
  assign N41 = ~N40;
  assign N47 = ~N46;
  assign N53 = ~N52;
  assign N54 = N29 | N23;
  assign N55 = N35 | N54;
  assign N56 = N41 | N55;
  assign N57 = N47 | N56;
  assign N58 = N53 | N57;
  assign N59 = ~N58;
  assign N60 = nasti_ar_valid_i | nasti_aw_valid_i;
  assign N61 = ~N60;
  assign N64 = nasti_w_data_i[8] & nasti_w_valid_i;
  assign N65 = nasti_w_valid_i | N64;
  assign N66 = ~N65;
  assign N69 = ~req_yumi_i;
  assign N70 = ~nasti_b_ready_i;
  assign N71 = ~nasti_aw_valid_i;
  assign N72 = nasti_ar_valid_i & N71;
  assign N73 = ~N64;
  assign N74 = nasti_w_valid_i & N73;
  assign N75 = N237 & nasti_aw_valid_i;
  assign N76 = N243 & nasti_w_valid_i;
  assign N77 = N231 & nasti_ar_valid_i;
  assign N78 = N76 | N75;
  assign N79 = N77 | N78;
  assign N80 = ~N79;
  assign N147 = ~N75;
  assign N148 = N76 & N147;
  assign N149 = ~N76;
  assign N150 = N147 & N149;
  assign N151 = N77 & N150;
  assign N152 = N244 | N219;
  assign N244 = N205 | N212;
  assign req_valid_o = N152;
  assign nasti_ar_ready_o = N178;
  assign nasti_aw_ready_o = N184;
  assign nasti_w_ready_o = N191;
  assign N153 = N225 & nasti_aw_valid_i;
  assign nasti_b_valid_o = N198;
  assign N154 = N23 & N11;
  assign N155 = N61 & N154;
  assign N156 = N29 & N11;
  assign N157 = N69 & N156;
  assign N158 = N155 | N157;
  assign N159 = N35 & N11;
  assign N160 = N69 & N159;
  assign N161 = N158 | N160;
  assign N162 = N41 & N11;
  assign N163 = N66 & N162;
  assign N164 = N161 | N163;
  assign N165 = N47 & N11;
  assign N166 = N69 & N165;
  assign N167 = N164 | N166;
  assign N168 = N53 & N11;
  assign N169 = N70 & N168;
  assign N170 = N167 | N169;
  assign N171 = ~N170;

endmodule