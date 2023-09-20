module SmiIONastiWriteIOConverter_0
(
  clk,
  reset,
  io_aw_ready,
  io_aw_valid,
  io_aw_bits_addr,
  io_aw_bits_len,
  io_aw_bits_size,
  io_aw_bits_burst,
  io_aw_bits_lock,
  io_aw_bits_cache,
  io_aw_bits_prot,
  io_aw_bits_qos,
  io_aw_bits_region,
  io_aw_bits_id,
  io_aw_bits_user,
  io_w_ready,
  io_w_valid,
  io_w_bits_data,
  io_w_bits_last,
  io_w_bits_strb,
  io_w_bits_user,
  io_b_ready,
  io_b_valid,
  io_b_bits_resp,
  io_b_bits_id,
  io_b_bits_user,
  io_smi_req_ready,
  io_smi_req_valid,
  io_smi_req_bits_rw,
  io_smi_req_bits_addr,
  io_smi_req_bits_data,
  io_smi_resp_ready,
  io_smi_resp_valid,
  io_smi_resp_bits
);

  input [31:0] io_aw_bits_addr;
  input [7:0] io_aw_bits_len;
  input [2:0] io_aw_bits_size;
  input [1:0] io_aw_bits_burst;
  input [3:0] io_aw_bits_cache;
  input [2:0] io_aw_bits_prot;
  input [3:0] io_aw_bits_qos;
  input [3:0] io_aw_bits_region;
  input [5:0] io_aw_bits_id;
  input [63:0] io_w_bits_data;
  input [7:0] io_w_bits_strb;
  output [1:0] io_b_bits_resp;
  output [5:0] io_b_bits_id;
  output [11:0] io_smi_req_bits_addr;
  output [63:0] io_smi_req_bits_data;
  input [63:0] io_smi_resp_bits;
  input clk;
  input reset;
  input io_aw_valid;
  input io_aw_bits_lock;
  input io_aw_bits_user;
  input io_w_valid;
  input io_w_bits_last;
  input io_w_bits_user;
  input io_b_ready;
  input io_smi_req_ready;
  input io_smi_resp_valid;
  output io_aw_ready;
  output io_w_ready;
  output io_b_valid;
  output io_b_bits_user;
  output io_smi_req_valid;
  output io_smi_req_bits_rw;
  output io_smi_resp_ready;
  wire [1:0] io_b_bits_resp;
  wire io_aw_ready,io_w_ready,io_b_valid,io_b_bits_user,io_smi_req_valid,
  io_smi_req_bits_rw,io_smi_resp_ready,N0,N1,N2,T35,T34,T16,T12,T11,T28,T29,T32,T30,T31,N3,N4,
  N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,
  N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,
  N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,
  N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,
  N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,
  N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,
  N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N136,N137,
  N138,N140,N141,N142,N143,N144,N145,N147,N148,N149;
  wire [1:1] T13;
  wire [0:0] T22,T23,T24;
  wire [7:0] T25;
  wire [11:0] T42;
  reg [2:0] state,size;
  reg last,strb;
  reg [63:0] io_smi_req_bits_data;
  reg [11:0] io_smi_req_bits_addr;
  reg [5:0] io_b_bits_id;
  assign io_smi_req_bits_rw = 1'b1;
  assign io_b_bits_resp[0] = 1'b0;
  assign io_b_bits_resp[1] = 1'b0;
  assign io_b_bits_user = 1'b0;
  assign T25 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << size;

  always @(posedge clk) begin
    if(N9) begin
      state[2] <= N12;
    end 
  end


  always @(posedge clk) begin
    if(N9) begin
      state[1] <= N11;
    end 
  end


  always @(posedge clk) begin
    if(N9) begin
      state[0] <= N10;
    end 
  end


  always @(posedge clk) begin
    if(N15) begin
      last <= N16;
    end 
  end


  always @(posedge clk) begin
    if(N19) begin
      strb <= N20;
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      size[2] <= io_aw_bits_size[2];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      size[1] <= io_aw_bits_size[1];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      size[0] <= io_aw_bits_size[0];
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[63] <= N87;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[62] <= N86;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[61] <= N85;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[60] <= N84;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[59] <= N83;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[58] <= N82;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[57] <= N81;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[56] <= N80;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[55] <= N79;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[54] <= N78;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[53] <= N77;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[52] <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[51] <= N75;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[50] <= N74;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[49] <= N73;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[48] <= N72;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[47] <= N71;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[46] <= N70;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[45] <= N69;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[44] <= N68;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[43] <= N67;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[42] <= N66;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[41] <= N65;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[40] <= N64;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[39] <= N63;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[38] <= N62;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[37] <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[36] <= N60;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[35] <= N59;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[34] <= N58;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[33] <= N57;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[32] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[31] <= N55;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[30] <= N54;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[29] <= N53;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[28] <= N52;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[27] <= N51;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[26] <= N50;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[25] <= N49;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[24] <= N48;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[23] <= N47;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[22] <= N46;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[21] <= N45;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[20] <= N44;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[19] <= N43;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[18] <= N42;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[17] <= N41;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[16] <= N40;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[15] <= N39;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[14] <= N38;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[13] <= N37;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[12] <= N36;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[11] <= N35;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[10] <= N34;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[9] <= N33;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[8] <= N32;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[7] <= N31;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[6] <= N30;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[5] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[4] <= N28;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[3] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[2] <= N26;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[1] <= N25;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      io_smi_req_bits_data[0] <= N24;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[11] <= N102;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[10] <= N101;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[9] <= N100;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[8] <= N99;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[7] <= N98;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[6] <= N97;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[5] <= N96;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[4] <= N95;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[3] <= N94;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[2] <= N93;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[1] <= N92;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      io_smi_req_bits_addr[0] <= N91;
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[5] <= io_aw_bits_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[4] <= io_aw_bits_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[3] <= io_aw_bits_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[2] <= io_aw_bits_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[1] <= io_aw_bits_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T11) begin
      io_b_bits_id[0] <= io_aw_bits_id[0];
    end 
  end

  assign N122 = ~state[1];
  assign N123 = N122 | state[2];
  assign N124 = state[0] | N123;
  assign N125 = ~N124;
  assign N133 = state[1] | state[2];
  assign N134 = state[0] | N133;
  assign io_aw_ready = ~N134;
  assign N136 = ~state[0];
  assign N137 = state[1] | state[2];
  assign N138 = N136 | N137;
  assign io_w_ready = ~N138;
  assign N140 = N122 | state[2];
  assign N141 = state[0] | N140;
  assign N142 = ~N141;
  assign N143 = ~strb;
  assign N144 = N122 | state[2];
  assign N145 = N136 | N144;
  assign io_smi_resp_ready = ~N145;
  assign N147 = ~state[2];
  assign N148 = state[1] | N147;
  assign N149 = state[0] | N148;
  assign io_b_valid = ~N149;
  assign T42 = io_smi_req_bits_addr + 1'b1;
  assign T23[0] = T24[0] ^ 1'b1;
  assign N9 = (N0)? 1'b1 : 
              (N104)? 1'b1 : 
              (N107)? 1'b1 : 
              (N110)? 1'b1 : 
              (N113)? 1'b1 : 
              (N116)? 1'b1 : 
              (N8)? 1'b0 : 1'b0;
  assign N0 = reset;
  assign { N12, N11, N10 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                             (N104)? { 1'b0, 1'b0, 1'b0 } : 
                             (N107)? { 1'b1, 1'b0, 1'b0 } : 
                             (N110)? { 1'b0, T13[1:1], 1'b1 } : 
                             (N113)? { 1'b0, 1'b1, 1'b0 } : 
                             (N116)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign N15 = (N1)? 1'b1 : 
               (N117)? 1'b1 : 
               (N14)? 1'b0 : 1'b0;
  assign N1 = T12;
  assign N16 = (N1)? io_w_bits_last : 
               (N117)? 1'b0 : 1'b0;
  assign N19 = (N2)? 1'b1 : 
               (N119)? 1'b1 : 
               (N18)? 1'b0 : 1'b0;
  assign N2 = T28;
  assign N20 = (N2)? 1'b0 : 
               (N119)? T22[0] : 1'b0;
  assign N23 = (N2)? 1'b1 : 
               (N120)? 1'b1 : 
               (N22)? 1'b0 : 1'b0;
  assign { N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24 } = (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                              (N120)? io_w_bits_data : 1'b0;
  assign N90 = (N2)? 1'b1 : 
               (N121)? 1'b1 : 
               (N89)? 1'b0 : 1'b0;
  assign { N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91 } = (N2)? T42 : 
                                                                             (N121)? io_aw_bits_addr[14:3] : 1'b0;
  assign T11 = io_aw_ready & io_aw_valid;
  assign T12 = io_w_ready & io_w_valid;
  assign T13[1] = last;
  assign T16 = N142 & N143;
  assign T22[0] = T23[0] & io_w_bits_strb[0];
  assign T28 = N142 & T29;
  assign T29 = T32 & T30;
  assign T30 = io_smi_req_ready | T31;
  assign T31 = ~strb;
  assign T32 = ~N143;
  assign T34 = io_smi_resp_ready & io_smi_resp_valid;
  assign T35 = io_b_ready & io_b_valid;
  assign io_smi_req_valid = N125 & strb;
  assign N3 = T35 | reset;
  assign N4 = T34 | N3;
  assign N5 = T16 | N4;
  assign N6 = T12 | N5;
  assign N7 = T11 | N6;
  assign N8 = ~N7;
  assign N13 = T11 | T12;
  assign N14 = ~N13;
  assign N17 = T12 | T28;
  assign N18 = ~N17;
  assign N21 = T12 | T28;
  assign N22 = ~N21;
  assign N88 = T11 | T28;
  assign N89 = ~N88;
  assign N103 = ~reset;
  assign N104 = T35 & N103;
  assign N105 = ~T35;
  assign N106 = N103 & N105;
  assign N107 = T34 & N106;
  assign N108 = ~T34;
  assign N109 = N106 & N108;
  assign N110 = T16 & N109;
  assign N111 = ~T16;
  assign N112 = N109 & N111;
  assign N113 = T12 & N112;
  assign N114 = ~T12;
  assign N115 = N112 & N114;
  assign N116 = T11 & N115;
  assign N117 = T11 & N114;
  assign N118 = ~T28;
  assign N119 = T12 & N118;
  assign N120 = T12 & N118;
  assign N121 = T11 & N118;
  assign N126 = T25[7] | T25[6];
  assign N127 = N126 | T25[5];
  assign N128 = N127 | T25[4];
  assign N129 = N128 | T25[3];
  assign N130 = N129 | T25[2];
  assign N131 = N130 | T25[1];
  assign N132 = N131 | T25[0];
  assign T24[0] = ~N132;

endmodule