module Arbiter_7
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_idx,
  io_in_1_bits_tag,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_idx,
  io_in_0_bits_tag,
  io_out_ready,
  io_out_valid,
  io_out_bits_idx,
  io_out_bits_tag,
  io_chosen
);

  input [5:0] io_in_1_bits_idx;
  input [19:0] io_in_1_bits_tag;
  input [5:0] io_in_0_bits_idx;
  input [19:0] io_in_0_bits_tag;
  output [5:0] io_out_bits_idx;
  output [19:0] io_out_bits_tag;
  input io_in_1_valid;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_chosen;
  wire [5:0] io_out_bits_idx;
  wire [19:0] io_out_bits_tag;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_chosen,N0,N1,io_out_ready,T5;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_tag = (N0)? io_in_1_bits_tag : 
                           (N1)? io_in_0_bits_tag : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_idx = (N0)? io_in_1_bits_idx : 
                           (N1)? io_in_0_bits_idx : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T5 & io_out_ready;
  assign T5 = ~io_in_0_valid;

endmodule