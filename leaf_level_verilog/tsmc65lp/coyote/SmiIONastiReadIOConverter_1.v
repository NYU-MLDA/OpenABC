module SmiIONastiReadIOConverter_1
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
  output [5:0] io_smi_req_bits_addr;
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
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N162,N163,N164,N165,
  N167,N168,N170;
  wire [0:0] T20,T7,T11,T12,T55;
  wire [2:0] T13;
  wire [5:0] T25;
  wire [7:0] T43;
  wire [63:0] T48;
  reg [1:0] state;
  reg nWords,T56,sendDone,sendInd;
  reg [5:0] io_smi_req_bits_addr,io_r_bits_id;
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
    if(N151) begin
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
    if(N33) begin
      sendDone <= N34;
    end 
  end


  always @(posedge clk) begin
    if(N38) begin
      sendInd <= N39;
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
    if(N42) begin
      nBeats[7] <= N50;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[6] <= N49;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[5] <= N48;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[4] <= N47;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[3] <= N46;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[2] <= N45;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[1] <= N44;
    end 
  end


  always @(posedge clk) begin
    if(N42) begin
      nBeats[0] <= N43;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[63] <= N118;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[62] <= N117;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[61] <= N116;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[60] <= N115;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[59] <= N114;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[58] <= N113;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[57] <= N112;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[56] <= N111;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[55] <= N110;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[54] <= N109;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[53] <= N108;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[52] <= N107;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[51] <= N106;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[50] <= N105;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[49] <= N104;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[48] <= N103;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[47] <= N102;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[46] <= N101;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[45] <= N100;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[44] <= N99;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[43] <= N98;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[42] <= N97;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[41] <= N96;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[40] <= N95;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[39] <= N94;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[38] <= N93;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[37] <= N92;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[36] <= N91;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[35] <= N90;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[34] <= N89;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[33] <= N88;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[32] <= N87;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[31] <= N86;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[30] <= N85;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[29] <= N84;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[28] <= N83;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[27] <= N82;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[26] <= N81;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[25] <= N80;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[24] <= N79;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[23] <= N78;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[22] <= N77;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[21] <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[20] <= N75;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[19] <= N74;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[18] <= N73;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[17] <= N72;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[16] <= N71;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[15] <= N70;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[14] <= N69;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[13] <= N68;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[12] <= N67;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[11] <= N66;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[10] <= N65;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[9] <= N64;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[8] <= N63;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[7] <= N62;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[6] <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[5] <= N60;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[4] <= N59;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[3] <= N58;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[2] <= N57;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[1] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(N54) begin
      io_r_bits_data[0] <= N55;
    end 
  end


  always @(posedge clk) begin
    if(N121) begin
      T49[5] <= N124;
    end 
  end


  always @(posedge clk) begin
    if(N121) begin
      T49[4] <= N123;
    end 
  end


  always @(posedge clk) begin
    if(N121) begin
      T49[3] <= N122;
    end 
  end

  assign N154 = nBeats[6] | nBeats[7];
  assign N155 = nBeats[5] | N154;
  assign N156 = nBeats[4] | N155;
  assign N157 = nBeats[3] | N156;
  assign N158 = nBeats[2] | N157;
  assign N159 = nBeats[1] | N158;
  assign N160 = nBeats[0] | N159;
  assign io_r_bits_last = ~N160;
  assign N162 = ~state[0];
  assign N163 = N162 | state[1];
  assign N164 = ~N163;
  assign N165 = state[0] | state[1];
  assign io_ar_ready = ~N165;
  assign N167 = ~state[1];
  assign N168 = state[0] | N167;
  assign io_r_valid = ~N168;
  assign N170 = N162 | state[1];
  assign io_smi_resp_ready = ~N170;
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
               (N126)? 1'b1 : 
               (N129)? 1'b1 : 
               (N132)? 1'b1 : 
               (N12)? 1'b0 : 1'b0;
  assign N4 = reset;
  assign { N15, N14 } = (N4)? { 1'b0, 1'b0 } : 
                        (N126)? { 1'b0, T20[0:0] } : 
                        (N129)? { 1'b1, 1'b0 } : 
                        (N132)? { 1'b0, 1'b1 } : 1'b0;
  assign N19 = (N4)? 1'b1 : 
               (N133)? 1'b1 : 
               (N135)? 1'b1 : 
               (N18)? 1'b0 : 1'b0;
  assign N20 = (N4)? 1'b0 : 
               (N133)? 1'b0 : 
               (N135)? T18 : 1'b0;
  assign N23 = (N5)? 1'b1 : 
               (N137)? 1'b1 : 
               (N22)? 1'b0 : 1'b0;
  assign N5 = T26;
  assign { N29, N28, N27, N26, N25, N24 } = (N5)? T25 : 
                                            (N137)? io_ar_bits_addr[8:3] : 1'b0;
  assign N33 = (N4)? 1'b1 : 
               (N138)? 1'b1 : 
               (N140)? 1'b1 : 
               (N32)? 1'b0 : 1'b0;
  assign N34 = (N4)? 1'b0 : 
               (N138)? 1'b0 : 
               (N140)? T31 : 1'b0;
  assign N38 = (N4)? 1'b1 : 
               (N141)? 1'b1 : 
               (N143)? 1'b1 : 
               (N37)? 1'b0 : 1'b0;
  assign N39 = (N4)? 1'b0 : 
               (N141)? 1'b0 : 
               (N143)? T34 : 1'b0;
  assign N42 = (N6)? 1'b1 : 
               (N144)? 1'b1 : 
               (N41)? 1'b0 : 1'b0;
  assign N6 = T21;
  assign { N50, N49, N48, N47, N46, N45, N44, N43 } = (N6)? T43 : 
                                                      (N144)? io_ar_bits_len : 1'b0;
  assign N54 = (N4)? 1'b1 : 
               (N145)? 1'b1 : 
               (N147)? 1'b1 : 
               (N53)? 1'b0 : 1'b0;
  assign { N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55 } = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                 (N145)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                 (N147)? T48 : 1'b0;
  assign N121 = (N2)? 1'b1 : 
                (N149)? 1'b1 : 
                (N120)? 1'b0 : 1'b0;
  assign { N124, N123, N122 } = (N2)? { 1'b0, 1'b0, 1'b0 } : 
                                (N149)? io_ar_bits_addr[2:0] : 1'b0;
  assign T4 = io_ar_ready & io_ar_valid;
  assign T5 = T19 & T6;
  assign N7 = ~T14;
  assign N8 = ~T9;
  assign T9 = T4 & T10;
  assign T14 = T4 & T15;
  assign T15 = ~T10;
  assign T19 = io_smi_resp_ready & io_smi_resp_valid;
  assign T20[0] = N160;
  assign T21 = io_r_ready & io_r_valid;
  assign T26 = io_smi_req_ready & io_smi_req_valid;
  assign io_smi_req_valid = N164 & T28;
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
  assign N30 = T21 | reset;
  assign N31 = T26 | N30;
  assign N32 = ~N31;
  assign N35 = T21 | reset;
  assign N36 = T26 | N35;
  assign N37 = ~N36;
  assign N40 = T4 | T21;
  assign N41 = ~N40;
  assign N51 = T21 | reset;
  assign N52 = T53 | N51;
  assign N53 = ~N52;
  assign N119 = T9 | T14;
  assign N120 = ~N119;
  assign N125 = ~reset;
  assign N126 = T21 & N125;
  assign N127 = ~T21;
  assign N128 = N125 & N127;
  assign N129 = T5 & N128;
  assign N130 = ~T5;
  assign N131 = N128 & N130;
  assign N132 = T4 & N131;
  assign N133 = T21 & N125;
  assign N134 = N125 & N127;
  assign N135 = T19 & N134;
  assign N136 = ~T26;
  assign N137 = T4 & N136;
  assign N138 = T21 & N125;
  assign N139 = N125 & N127;
  assign N140 = T26 & N139;
  assign N141 = T21 & N125;
  assign N142 = N125 & N127;
  assign N143 = T26 & N142;
  assign N144 = T4 & N127;
  assign N145 = T21 & N125;
  assign N146 = N125 & N127;
  assign N147 = T53 & N146;
  assign N148 = ~T14;
  assign N149 = T9 & N148;
  assign N150 = N8 & N7;
  assign N151 = ~N150;
  assign N152 = T13[2] | T13[1];
  assign N153 = N152 | T13[0];
  assign T12[0] = ~N153;
  assign T55[0] = ~T56;

endmodule