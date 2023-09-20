module RRArbiter_2
(
  clk,
  reset,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_rw,
  io_in_1_bits_addr,
  io_in_1_bits_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_rw,
  io_in_0_bits_addr,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_rw,
  io_out_bits_addr,
  io_out_bits_data,
  io_chosen
);

  input [5:0] io_in_1_bits_addr;
  input [63:0] io_in_1_bits_data;
  input [5:0] io_in_0_bits_addr;
  input [63:0] io_in_0_bits_data;
  output [5:0] io_out_bits_addr;
  output [63:0] io_out_bits_data;
  input clk;
  input reset;
  input io_in_1_valid;
  input io_in_1_bits_rw;
  input io_in_0_valid;
  input io_in_0_bits_rw;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_rw;
  output io_chosen;
  wire [5:0] io_out_bits_addr;
  wire [63:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_rw,io_chosen,N0,N1,N2,N3,
  N4,N5,N6,T1,N7,T2,T4,N8,T11,T18,T12,T13,T16,T14,T15,T17,T20,T24,T21,T22,T23,T26,
  T25,N9,N10,N11,N12,N13,N14,N15;
  reg last_grant;
  assign T17 = N0 & 1'b0;
  assign N0 = ~last_grant;
  assign T18 = N1 & 1'b0;
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
  assign io_out_bits_data = (N4)? io_in_1_bits_data : 
                            (N5)? io_in_0_bits_data : 1'b0;
  assign N4 = io_chosen;
  assign N5 = N8;
  assign io_out_bits_addr = (N4)? io_in_1_bits_addr : 
                            (N5)? io_in_0_bits_addr : 1'b0;
  assign io_out_bits_rw = (N4)? io_in_1_bits_rw : 
                          (N5)? io_in_0_bits_rw : 1'b0;
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
  assign io_in_0_ready = T11 & io_out_ready;
  assign T11 = T18 | T12;
  assign T12 = ~T13;
  assign T13 = T16 | T14;
  assign T14 = io_in_1_valid & T15;
  assign T15 = ~last_grant;
  assign T16 = io_in_0_valid & T17;
  assign io_in_1_ready = T20 & io_out_ready;
  assign T20 = T24 | T21;
  assign T21 = ~T22;
  assign T22 = T23 | io_in_0_valid;
  assign T23 = T16 | T14;
  assign T24 = T26 & T25;
  assign T25 = ~last_grant;
  assign T26 = ~T16;
  assign N9 = T4 | reset;
  assign N10 = ~N9;
  assign N13 = ~reset;
  assign N14 = T4 & N13;

endmodule