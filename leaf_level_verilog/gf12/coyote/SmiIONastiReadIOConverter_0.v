module SmiIONastiReadIOConverter_0
(
  clk,
  reset,
  io_ar_ready,
  io_ar_valid,
  io_ar_bits_addr,
  io_ar_bits_len,
  io_ar_bits_size,
  io_ar_bits_burst,
  io_ar_bits_lock,
  io_ar_bits_cache,
  io_ar_bits_prot,
  io_ar_bits_qos,
  io_ar_bits_region,
  io_ar_bits_id,
  io_ar_bits_user,
  io_r_ready,
  io_r_valid,
  io_r_bits_resp,
  io_r_bits_data,
  io_r_bits_last,
  io_r_bits_id,
  io_r_bits_user,
  io_smi_req_ready,
  io_smi_req_valid,
  io_smi_req_bits_rw,
  io_smi_req_bits_addr,
  io_smi_resp_ready,
  io_smi_resp_valid,
  io_smi_resp_bits
);

  input [31:0] io_ar_bits_addr;
  input [7:0] io_ar_bits_len;
  input [2:0] io_ar_bits_size;
  input [1:0] io_ar_bits_burst;
  input [3:0] io_ar_bits_cache;
  input [2:0] io_ar_bits_prot;
  input [3:0] io_ar_bits_qos;
  input [3:0] io_ar_bits_region;
  input [5:0] io_ar_bits_id;
  output [1:0] io_r_bits_resp;
  output [63:0] io_r_bits_data;
  output [5:0] io_r_bits_id;
  output [11:0] io_smi_req_bits_addr;
  input [63:0] io_smi_resp_bits;
  input clk;
  input reset;
  input io_ar_valid;
  input io_ar_bits_lock;
  input io_ar_bits_user;
  input io_r_ready;
  input io_smi_req_ready;
  input io_smi_resp_valid;
  output io_ar_ready;
  output io_r_valid;
  output io_r_bits_last;
  output io_r_bits_user;
  output io_smi_req_valid;
  output io_smi_req_bits_rw;
  output io_smi_resp_ready;
  wire [1:0] io_r_bits_resp;
  wire io_ar_ready,io_r_valid,io_r_bits_last,io_r_bits_user,io_smi_req_valid,
  io_smi_req_bits_rw,io_smi_resp_ready,N0,N1,N2,N3,N4,N5,N6,T21,T5,T4,T19,T6,T14,N7,T9,N8,
  T10,T15,T18,T26,T28,T31,T34,T53,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N168,N169,N170,N171,N173,N174,N176;
  wire [0:0] T20,T7,T11,T12,T55;
  wire [2:0] T13;
  wire [11:0] T25;
  wire [7:0] T43;
  wire [63:0] T48;
  reg [1:0] state;
  reg nWords,T56,sendDone,sendInd;
  reg [11:0] io_smi_req_bits_addr;
  reg [5:0] io_r_bits_id;
  reg [7:0] nBeats;
  reg [63:0] io_r_bits_data;
  reg [5:3] T49;
  assign io_r_bits_resp[0] = 1'b0;
  assign io_r_bits_resp[1] = 1'b0;
  assign io_r_bits_user = 1'b0;
  assign io_smi_req_bits_rw = 1'b0;
  assign N0 = T56 ^ nWords;
  assign T6 = ~N0;
  assign T10 = io_ar_bits_size < { 1'b1, 1'b1 };
  assign N1 = sendInd ^ nWords;
  assign T31 = ~N1;
  assign T48 = io_smi_resp_bits >> { T49, 1'b0, 1'b0, 1'b0 };

  always @(posedge clk) begin
    if(N13) begin
      state[1] <= N15;
    end 
  end


  always @(posedge clk) begin
    if(N13) begin
      state[0] <= N14;
    end 
  end


  always @(posedge clk) begin
    if(N157) begin
      nWords <= T7[0];
    end 
  end


  always @(posedge clk) begin
    if(N19) begin
      T56 <= N20;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[11] <= N35;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[10] <= N34;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[9] <= N33;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[8] <= N32;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[7] <= N31;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[6] <= N30;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[5] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[4] <= N28;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[3] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[2] <= N26;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[1] <= N25;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_addr[0] <= N24;
    end 
  end


  always @(posedge clk) begin
    if(N39) begin
      sendDone <= N40;
    end 
  end


  always @(posedge clk) begin
    if(N44) begin
      sendInd <= N45;
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[5] <= io_ar_bits_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[4] <= io_ar_bits_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[3] <= io_ar_bits_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[2] <= io_ar_bits_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[1] <= io_ar_bits_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T4) begin
      io_r_bits_id[0] <= io_ar_bits_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[7] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[6] <= N55;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[5] <= N54;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[4] <= N53;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[3] <= N52;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[2] <= N51;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[1] <= N50;
    end 
  end


  always @(posedge clk) begin
    if(N48) begin
      nBeats[0] <= N49;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[63] <= N124;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[62] <= N123;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[61] <= N122;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[60] <= N121;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[59] <= N120;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[58] <= N119;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[57] <= N118;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[56] <= N117;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[55] <= N116;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[54] <= N115;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[53] <= N114;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[52] <= N113;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[51] <= N112;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[50] <= N111;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[49] <= N110;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[48] <= N109;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[47] <= N108;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[46] <= N107;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[45] <= N106;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[44] <= N105;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[43] <= N104;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[42] <= N103;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[41] <= N102;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[40] <= N101;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[39] <= N100;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[38] <= N99;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[37] <= N98;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[36] <= N97;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[35] <= N96;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[34] <= N95;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[33] <= N94;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[32] <= N93;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[31] <= N92;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[30] <= N91;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[29] <= N90;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[28] <= N89;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[27] <= N88;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[26] <= N87;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[25] <= N86;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[24] <= N85;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[23] <= N84;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[22] <= N83;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[21] <= N82;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[20] <= N81;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[19] <= N80;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[18] <= N79;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[17] <= N78;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[16] <= N77;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[15] <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[14] <= N75;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[13] <= N74;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[12] <= N73;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[11] <= N72;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[10] <= N71;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[9] <= N70;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[8] <= N69;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[7] <= N68;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[6] <= N67;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[5] <= N66;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[4] <= N65;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[3] <= N64;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[2] <= N63;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[1] <= N62;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      io_r_bits_data[0] <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N127) begin
      T49[5] <= N130;
    end 
  end


  always @(posedge clk) begin
    if(N127) begin
      T49[4] <= N129;
    end 
  end


  always @(posedge clk) begin
    if(N127) begin
      T49[3] <= N128;
    end 
  end

  assign N160 = nBeats[6] | nBeats[7];
  assign N161 = nBeats[5] | N160;
  assign N162 = nBeats[4] | N161;
  assign N163 = nBeats[3] | N162;
  assign N164 = nBeats[2] | N163;
  assign N165 = nBeats[1] | N164;
  assign N166 = nBeats[0] | N165;
  assign io_r_bits_last = ~N166;
  assign N168 = ~state[0];
  assign N169 = N168 | state[1];
  assign N170 = ~N169;
  assign N171 = state[0] | state[1];
  assign io_ar_ready = ~N171;
  assign N173 = ~state[1];
  assign N174 = state[0] | N173;
  assign io_r_valid = ~N174;
  assign N176 = N168 | state[1];
  assign io_smi_resp_ready = ~N176;
  assign T13 = io_ar_bits_size - { 1'b1, 1'b1 };
  assign T18 = T56 ^ 1'b1;
  assign T25 = io_smi_req_bits_addr + 1'b1;
  assign T34 = sendInd ^ 1'b1;
  assign T43 = nBeats - 1'b1;
  assign T11[0] = T12[0] ^ 1'b1;
  assign T7[0] = (N2)? T11[0] : 
                 (N3)? 1'b0 : 1'b0;
  assign N2 = T14;
  assign N3 = N7;
  assign N13 = (N4)? 1'b1 : 
               (N132)? 1'b1 : 
               (N135)? 1'b1 : 
               (N138)? 1'b1 : 
               (N12)? 1'b0 : 1'b0;
  assign N4 = reset;
  assign { N15, N14 } = (N4)? { 1'b0, 1'b0 } : 
                        (N132)? { 1'b0, T20[0:0] } : 
                        (N135)? { 1'b1, 1'b0 } : 
                        (N138)? { 1'b0, 1'b1 } : 1'b0;
  assign N19 = (N4)? 1'b1 : 
               (N139)? 1'b1 : 
               (N141)? 1'b1 : 
               (N18)? 1'b0 : 1'b0;
  assign N20 = (N4)? 1'b0 : 
               (N139)? 1'b0 : 
               (N141)? T18 : 1'b0;
  assign N23 = (N5)? 1'b1 : 
               (N143)? 1'b1 : 
               (N22)? 1'b0 : 1'b0;
  assign N5 = T26;
  assign { N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 } = (N5)? T25 : 
                                                                          (N143)? io_ar_bits_addr[14:3] : 1'b0;
  assign N39 = (N4)? 1'b1 : 
               (N144)? 1'b1 : 
               (N146)? 1'b1 : 
               (N38)? 1'b0 : 1'b0;
  assign N40 = (N4)? 1'b0 : 
               (N144)? 1'b0 : 
               (N146)? T31 : 1'b0;
  assign N44 = (N4)? 1'b1 : 
               (N147)? 1'b1 : 
               (N149)? 1'b1 : 
               (N43)? 1'b0 : 1'b0;
  assign N45 = (N4)? 1'b0 : 
               (N147)? 1'b0 : 
               (N149)? T34 : 1'b0;
  assign N48 = (N6)? 1'b1 : 
               (N150)? 1'b1 : 
               (N47)? 1'b0 : 1'b0;
  assign N6 = T21;
  assign { N56, N55, N54, N53, N52, N51, N50, N49 } = (N6)? T43 : 
                                                      (N150)? io_ar_bits_len : 1'b0;
  assign N60 = (N4)? 1'b1 : 
               (N151)? 1'b1 : 
               (N153)? 1'b1 : 
               (N59)? 1'b0 : 1'b0;
  assign { N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61 } = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                       (N151)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                       (N153)? T48 : 1'b0;
  assign N127 = (N2)? 1'b1 : 
                (N155)? 1'b1 : 
                (N126)? 1'b0 : 1'b0;
  assign { N130, N129, N128 } = (N2)? { 1'b0, 1'b0, 1'b0 } : 
                                (N155)? io_ar_bits_addr[2:0] : 1'b0;
  assign T4 = io_ar_ready & io_ar_valid;
  assign T5 = T19 & T6;
  assign N7 = ~T14;
  assign N8 = ~T9;
  assign T9 = T4 & T10;
  assign T14 = T4 & T15;
  assign T15 = ~T10;
  assign T19 = io_smi_resp_ready & io_smi_resp_valid;
  assign T20[0] = N166;
  assign T21 = io_r_ready & io_r_valid;
  assign T26 = io_smi_req_ready & io_smi_req_valid;
  assign io_smi_req_valid = N170 & T28;
  assign T28 = ~sendDone;
  assign T53 = T19 & T55[0];
  assign N9 = T21 | reset;
  assign N10 = T5 | N9;
  assign N11 = T4 | N10;
  assign N12 = ~N11;
  assign N16 = T21 | reset;
  assign N17 = T19 | N16;
  assign N18 = ~N17;
  assign N21 = T4 | T26;
  assign N22 = ~N21;
  assign N36 = T21 | reset;
  assign N37 = T26 | N36;
  assign N38 = ~N37;
  assign N41 = T21 | reset;
  assign N42 = T26 | N41;
  assign N43 = ~N42;
  assign N46 = T4 | T21;
  assign N47 = ~N46;
  assign N57 = T21 | reset;
  assign N58 = T53 | N57;
  assign N59 = ~N58;
  assign N125 = T9 | T14;
  assign N126 = ~N125;
  assign N131 = ~reset;
  assign N132 = T21 & N131;
  assign N133 = ~T21;
  assign N134 = N131 & N133;
  assign N135 = T5 & N134;
  assign N136 = ~T5;
  assign N137 = N134 & N136;
  assign N138 = T4 & N137;
  assign N139 = T21 & N131;
  assign N140 = N131 & N133;
  assign N141 = T19 & N140;
  assign N142 = ~T26;
  assign N143 = T4 & N142;
  assign N144 = T21 & N131;
  assign N145 = N131 & N133;
  assign N146 = T26 & N145;
  assign N147 = T21 & N131;
  assign N148 = N131 & N133;
  assign N149 = T26 & N148;
  assign N150 = T4 & N133;
  assign N151 = T21 & N131;
  assign N152 = N131 & N133;
  assign N153 = T53 & N152;
  assign N154 = ~T14;
  assign N155 = T9 & N154;
  assign N156 = N8 & N7;
  assign N157 = ~N156;
  assign N158 = T13[2] | T13[1];
  assign N159 = N158 | T13[0];
  assign T12[0] = ~N159;
  assign T55[0] = ~T56;

endmodule