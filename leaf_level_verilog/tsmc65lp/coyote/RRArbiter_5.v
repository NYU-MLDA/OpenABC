module RRArbiter_5
(
  clk,
  reset,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr,
  io_in_1_bits_len,
  io_in_1_bits_size,
  io_in_1_bits_burst,
  io_in_1_bits_lock,
  io_in_1_bits_cache,
  io_in_1_bits_prot,
  io_in_1_bits_qos,
  io_in_1_bits_region,
  io_in_1_bits_id,
  io_in_1_bits_user,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr,
  io_in_0_bits_len,
  io_in_0_bits_size,
  io_in_0_bits_burst,
  io_in_0_bits_lock,
  io_in_0_bits_cache,
  io_in_0_bits_prot,
  io_in_0_bits_qos,
  io_in_0_bits_region,
  io_in_0_bits_id,
  io_in_0_bits_user,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr,
  io_out_bits_len,
  io_out_bits_size,
  io_out_bits_burst,
  io_out_bits_lock,
  io_out_bits_cache,
  io_out_bits_prot,
  io_out_bits_qos,
  io_out_bits_region,
  io_out_bits_id,
  io_out_bits_user,
  io_chosen
);

  input [31:0] io_in_1_bits_addr;
  input [7:0] io_in_1_bits_len;
  input [2:0] io_in_1_bits_size;
  input [1:0] io_in_1_bits_burst;
  input [3:0] io_in_1_bits_cache;
  input [2:0] io_in_1_bits_prot;
  input [3:0] io_in_1_bits_qos;
  input [3:0] io_in_1_bits_region;
  input [5:0] io_in_1_bits_id;
  input [31:0] io_in_0_bits_addr;
  input [7:0] io_in_0_bits_len;
  input [2:0] io_in_0_bits_size;
  input [1:0] io_in_0_bits_burst;
  input [3:0] io_in_0_bits_cache;
  input [2:0] io_in_0_bits_prot;
  input [3:0] io_in_0_bits_qos;
  input [3:0] io_in_0_bits_region;
  input [5:0] io_in_0_bits_id;
  output [31:0] io_out_bits_addr;
  output [7:0] io_out_bits_len;
  output [2:0] io_out_bits_size;
  output [1:0] io_out_bits_burst;
  output [3:0] io_out_bits_cache;
  output [2:0] io_out_bits_prot;
  output [3:0] io_out_bits_qos;
  output [3:0] io_out_bits_region;
  output [5:0] io_out_bits_id;
  input clk;
  input reset;
  input io_in_1_valid;
  input io_in_1_bits_lock;
  input io_in_1_bits_user;
  input io_in_0_valid;
  input io_in_0_bits_lock;
  input io_in_0_bits_user;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_lock;
  output io_out_bits_user;
  output io_chosen;
  wire [31:0] io_out_bits_addr;
  wire [7:0] io_out_bits_len;
  wire [2:0] io_out_bits_size,io_out_bits_prot;
  wire [1:0] io_out_bits_burst;
  wire [3:0] io_out_bits_cache,io_out_bits_qos,io_out_bits_region;
  wire [5:0] io_out_bits_id;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_lock,io_out_bits_user,
  io_chosen,N0,N1,N2,N3,N4,N5,N6,T1,N7,T2,T4,N8,T19,T26,T20,T21,T24,T22,T23,T25,T28,
  T32,T29,T30,T31,T34,T33,N9,N10,N11,N12,N13,N14,N15;
  reg last_grant;
  assign T25 = N0 & 1'b0;
  assign N0 = ~last_grant;
  assign T26 = N1 & 1'b0;
  assign N1 = ~last_grant;

  always @(posedge clk) begin
    if(N11) begin
      last_grant <= N12;
    end 
  end

  assign N15 = ~io_in_0_valid;
  assign io_chosen = (N2)? 1'b1 : 
                     (N3)? N15 : 1'b0;
  assign N2 = T1;
  assign N3 = N7;
  assign io_out_bits_user = (N4)? io_in_1_bits_user : 
                            (N5)? io_in_0_bits_user : 1'b0;
  assign N4 = io_chosen;
  assign N5 = N8;
  assign io_out_bits_id = (N4)? io_in_1_bits_id : 
                          (N5)? io_in_0_bits_id : 1'b0;
  assign io_out_bits_region = (N4)? io_in_1_bits_region : 
                              (N5)? io_in_0_bits_region : 1'b0;
  assign io_out_bits_qos = (N4)? io_in_1_bits_qos : 
                           (N5)? io_in_0_bits_qos : 1'b0;
  assign io_out_bits_prot = (N4)? io_in_1_bits_prot : 
                            (N5)? io_in_0_bits_prot : 1'b0;
  assign io_out_bits_cache = (N4)? io_in_1_bits_cache : 
                             (N5)? io_in_0_bits_cache : 1'b0;
  assign io_out_bits_lock = (N4)? io_in_1_bits_lock : 
                            (N5)? io_in_0_bits_lock : 1'b0;
  assign io_out_bits_burst = (N4)? io_in_1_bits_burst : 
                             (N5)? io_in_0_bits_burst : 1'b0;
  assign io_out_bits_size = (N4)? io_in_1_bits_size : 
                            (N5)? io_in_0_bits_size : 1'b0;
  assign io_out_bits_len = (N4)? io_in_1_bits_len : 
                           (N5)? io_in_0_bits_len : 1'b0;
  assign io_out_bits_addr = (N4)? io_in_1_bits_addr : 
                            (N5)? io_in_0_bits_addr : 1'b0;
  assign io_out_valid = (N4)? io_in_1_valid : 
                        (N5)? io_in_0_valid : 1'b0;
  assign N11 = (N6)? 1'b1 : 
               (N14)? 1'b1 : 
               (N10)? 1'b0 : 1'b0;
  assign N6 = reset;
  assign N12 = (N6)? 1'b0 : 
               (N14)? io_chosen : 1'b0;
  assign N7 = ~T1;
  assign T1 = io_in_1_valid & T2;
  assign T2 = ~last_grant;
  assign T4 = io_out_ready & io_out_valid;
  assign N8 = ~io_chosen;
  assign io_in_0_ready = T19 & io_out_ready;
  assign T19 = T26 | T20;
  assign T20 = ~T21;
  assign T21 = T24 | T22;
  assign T22 = io_in_1_valid & T23;
  assign T23 = ~last_grant;
  assign T24 = io_in_0_valid & T25;
  assign io_in_1_ready = T28 & io_out_ready;
  assign T28 = T32 | T29;
  assign T29 = ~T30;
  assign T30 = T31 | io_in_0_valid;
  assign T31 = T24 | T22;
  assign T32 = T34 & T33;
  assign T33 = ~last_grant;
  assign T34 = ~T24;
  assign N9 = T4 | reset;
  assign N10 = ~N9;
  assign N13 = ~reset;
  assign N14 = T4 & N13;

endmodule