module RTC
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
  io_ar_ready,
  io_ar_valid,
  io_r_ready,
  io_r_valid,
  io_r_bits_resp,
  io_r_bits_data,
  io_r_bits_last,
  io_r_bits_id,
  io_r_bits_user
);

  output [31:0] io_aw_bits_addr;
  output [7:0] io_aw_bits_len;
  output [2:0] io_aw_bits_size;
  output [1:0] io_aw_bits_burst;
  output [3:0] io_aw_bits_cache;
  output [2:0] io_aw_bits_prot;
  output [3:0] io_aw_bits_qos;
  output [3:0] io_aw_bits_region;
  output [5:0] io_aw_bits_id;
  output [63:0] io_w_bits_data;
  output [7:0] io_w_bits_strb;
  input [1:0] io_b_bits_resp;
  input [5:0] io_b_bits_id;
  input [1:0] io_r_bits_resp;
  input [63:0] io_r_bits_data;
  input [5:0] io_r_bits_id;
  input clk;
  input reset;
  input io_aw_ready;
  input io_w_ready;
  input io_b_valid;
  input io_b_bits_user;
  input io_ar_ready;
  input io_r_valid;
  input io_r_bits_last;
  input io_r_bits_user;
  output io_aw_valid;
  output io_aw_bits_lock;
  output io_aw_bits_user;
  output io_w_valid;
  output io_w_bits_last;
  output io_w_bits_user;
  output io_b_ready;
  output io_ar_valid;
  output io_r_ready;
  wire [31:0] io_aw_bits_addr;
  wire [7:0] io_aw_bits_len,io_w_bits_strb;
  wire [2:0] io_aw_bits_size,io_aw_bits_prot;
  wire [1:0] io_aw_bits_burst;
  wire [3:0] io_aw_bits_cache,io_aw_bits_qos,io_aw_bits_region;
  wire [5:0] io_aw_bits_id;
  wire io_aw_bits_lock,io_aw_bits_user,io_w_bits_last,io_w_bits_user,io_b_ready,
  io_ar_valid,io_r_ready,N0,T43,T42,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,
  N96,N97,N98,N99,N100,N101,N102,N103,N104;
  wire [6:0] T12;
  wire [63:0] T24;
  reg [6:0] R10;
  reg [63:0] io_w_bits_data;
  reg io_w_valid,io_aw_valid;
  assign io_aw_bits_size[0] = 1'b1;
  assign io_aw_bits_size[1] = 1'b1;
  assign io_aw_bits_burst[0] = 1'b1;
  assign io_w_bits_last = 1'b1;
  assign io_w_bits_strb[0] = 1'b1;
  assign io_w_bits_strb[1] = 1'b1;
  assign io_w_bits_strb[2] = 1'b1;
  assign io_w_bits_strb[3] = 1'b1;
  assign io_w_bits_strb[4] = 1'b1;
  assign io_w_bits_strb[5] = 1'b1;
  assign io_w_bits_strb[6] = 1'b1;
  assign io_w_bits_strb[7] = 1'b1;
  assign io_b_ready = 1'b1;
  assign io_aw_bits_addr[31] = 1'b0;
  assign io_aw_bits_len[0] = 1'b0;
  assign io_aw_bits_len[1] = 1'b0;
  assign io_aw_bits_len[2] = 1'b0;
  assign io_aw_bits_len[3] = 1'b0;
  assign io_aw_bits_len[4] = 1'b0;
  assign io_aw_bits_len[5] = 1'b0;
  assign io_aw_bits_len[6] = 1'b0;
  assign io_aw_bits_len[7] = 1'b0;
  assign io_aw_bits_size[2] = 1'b0;
  assign io_aw_bits_burst[1] = 1'b0;
  assign io_aw_bits_lock = 1'b0;
  assign io_aw_bits_cache[0] = 1'b0;
  assign io_aw_bits_cache[1] = 1'b0;
  assign io_aw_bits_cache[2] = 1'b0;
  assign io_aw_bits_cache[3] = 1'b0;
  assign io_aw_bits_prot[0] = 1'b0;
  assign io_aw_bits_prot[1] = 1'b0;
  assign io_aw_bits_prot[2] = 1'b0;
  assign io_aw_bits_qos[0] = 1'b0;
  assign io_aw_bits_qos[1] = 1'b0;
  assign io_aw_bits_qos[2] = 1'b0;
  assign io_aw_bits_qos[3] = 1'b0;
  assign io_aw_bits_region[0] = 1'b0;
  assign io_aw_bits_region[1] = 1'b0;
  assign io_aw_bits_region[2] = 1'b0;
  assign io_aw_bits_region[3] = 1'b0;
  assign io_aw_bits_id[0] = 1'b0;
  assign io_aw_bits_id[1] = 1'b0;
  assign io_aw_bits_id[2] = 1'b0;
  assign io_aw_bits_id[3] = 1'b0;
  assign io_aw_bits_id[4] = 1'b0;
  assign io_aw_bits_id[5] = 1'b0;
  assign io_aw_bits_user = 1'b0;
  assign io_w_bits_user = 1'b0;
  assign io_ar_valid = 1'b0;
  assign io_r_ready = 1'b0;
  assign io_aw_bits_addr[30] = 1'b1;
  assign io_aw_bits_addr[29] = 1'b0;
  assign io_aw_bits_addr[28] = 1'b0;
  assign io_aw_bits_addr[27] = 1'b0;
  assign io_aw_bits_addr[26] = 1'b0;
  assign io_aw_bits_addr[25] = 1'b0;
  assign io_aw_bits_addr[24] = 1'b0;
  assign io_aw_bits_addr[23] = 1'b0;
  assign io_aw_bits_addr[22] = 1'b0;
  assign io_aw_bits_addr[21] = 1'b0;
  assign io_aw_bits_addr[20] = 1'b0;
  assign io_aw_bits_addr[19] = 1'b0;
  assign io_aw_bits_addr[18] = 1'b0;
  assign io_aw_bits_addr[17] = 1'b0;
  assign io_aw_bits_addr[16] = 1'b0;
  assign io_aw_bits_addr[15] = 1'b1;
  assign io_aw_bits_addr[14] = 1'b0;
  assign io_aw_bits_addr[13] = 1'b1;
  assign io_aw_bits_addr[12] = 1'b1;
  assign io_aw_bits_addr[11] = 1'b1;
  assign io_aw_bits_addr[10] = 1'b0;
  assign io_aw_bits_addr[9] = 1'b0;
  assign io_aw_bits_addr[8] = 1'b0;
  assign io_aw_bits_addr[7] = 1'b0;
  assign io_aw_bits_addr[6] = 1'b0;
  assign io_aw_bits_addr[5] = 1'b0;
  assign io_aw_bits_addr[4] = 1'b0;
  assign io_aw_bits_addr[3] = 1'b1;
  assign io_aw_bits_addr[2] = 1'b0;
  assign io_aw_bits_addr[1] = 1'b0;
  assign io_aw_bits_addr[0] = 1'b0;

  always @(posedge clk) begin
    if(1'b1) begin
      R10[6] <= N9;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[5] <= N8;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[4] <= N7;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[3] <= N6;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[2] <= N5;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      R10[0] <= N3;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[63] <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[62] <= N75;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[61] <= N74;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[60] <= N73;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[59] <= N72;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[58] <= N71;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[57] <= N70;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[56] <= N69;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[55] <= N68;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[54] <= N67;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[53] <= N66;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[52] <= N65;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[51] <= N64;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[50] <= N63;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[49] <= N62;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[48] <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[47] <= N60;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[46] <= N59;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[45] <= N58;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[44] <= N57;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[43] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[42] <= N55;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[41] <= N54;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[40] <= N53;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[39] <= N52;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[38] <= N51;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[37] <= N50;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[36] <= N49;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[35] <= N48;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[34] <= N47;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[33] <= N46;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[32] <= N45;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[31] <= N44;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[30] <= N43;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[29] <= N42;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[28] <= N41;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[27] <= N40;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[26] <= N39;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[25] <= N38;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[24] <= N37;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[23] <= N36;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[22] <= N35;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[21] <= N34;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[20] <= N33;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[19] <= N32;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[18] <= N31;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[17] <= N30;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[16] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[15] <= N28;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[14] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[13] <= N26;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[12] <= N25;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[11] <= N24;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[10] <= N23;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[9] <= N22;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[8] <= N21;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[7] <= N20;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[6] <= N19;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[5] <= N18;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[4] <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[3] <= N16;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[2] <= N15;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[1] <= N14;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      io_w_bits_data[0] <= N13;
    end 
  end


  always @(posedge clk) begin
    if(N77) begin
      io_w_valid <= N78;
    end 
  end


  always @(posedge clk) begin
    if(N83) begin
      io_aw_valid <= N84;
    end 
  end

  assign N94 = ~R10[6];
  assign N95 = ~R10[5];
  assign N96 = ~R10[1];
  assign N97 = ~R10[0];
  assign N98 = N95 | N94;
  assign N99 = R10[4] | N98;
  assign N100 = R10[3] | N99;
  assign N101 = R10[2] | N100;
  assign N102 = N96 | N101;
  assign N103 = N97 | N102;
  assign N104 = ~N103;
  assign T12 = R10 + 1'b1;
  assign T24 = io_w_bits_data + 1'b1;
  assign { N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                          (N78)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                          (N2)? T12 : 1'b0;
  assign N0 = reset;
  assign N12 = (N0)? 1'b1 : 
               (N86)? 1'b1 : 
               (N11)? 1'b0 : 1'b0;
  assign { N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                              (N86)? T24 : 1'b0;
  assign N77 = (N0)? 1'b1 : 
               (N78)? 1'b1 : 
               (N2)? 1'b0 : 1'b0;
  assign N83 = (N0)? 1'b1 : 
               (N87)? 1'b1 : 
               (N90)? 1'b1 : 
               (N93)? 1'b1 : 
               (N82)? 1'b0 : 1'b0;
  assign N84 = (N0)? 1'b0 : 
               (N87)? 1'b0 : 
               (N90)? 1'b0 : 
               (N93)? 1'b1 : 1'b0;
  assign T42 = io_aw_ready & io_aw_valid;
  assign T43 = io_w_ready & io_w_valid;
  assign N1 = N104 | reset;
  assign N2 = ~N1;
  assign N10 = N104 | reset;
  assign N11 = ~N10;
  assign N79 = T43 | reset;
  assign N80 = T42 | N79;
  assign N81 = N104 | N80;
  assign N82 = ~N81;
  assign N85 = ~reset;
  assign N78 = N104 & N85;
  assign N86 = N104 & N85;
  assign N87 = T43 & N85;
  assign N88 = ~T43;
  assign N89 = N85 & N88;
  assign N90 = T42 & N89;
  assign N91 = ~T42;
  assign N92 = N89 & N91;
  assign N93 = N104 & N92;

endmodule