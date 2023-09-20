module Arbiter_1
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_idx,
  io_in_1_bits_way_en,
  io_in_1_bits_data_tag,
  io_in_1_bits_data_coh_state,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_idx,
  io_in_0_bits_way_en,
  io_in_0_bits_data_tag,
  io_in_0_bits_data_coh_state,
  io_out_ready,
  io_out_valid,
  io_out_bits_idx,
  io_out_bits_way_en,
  io_out_bits_data_tag,
  io_out_bits_data_coh_state,
  io_chosen
);

  input [5:0] io_in_1_bits_idx;
  input [3:0] io_in_1_bits_way_en;
  input [19:0] io_in_1_bits_data_tag;
  input [1:0] io_in_1_bits_data_coh_state;
  input [5:0] io_in_0_bits_idx;
  input [3:0] io_in_0_bits_way_en;
  input [19:0] io_in_0_bits_data_tag;
  input [1:0] io_in_0_bits_data_coh_state;
  output [5:0] io_out_bits_idx;
  output [3:0] io_out_bits_way_en;
  output [19:0] io_out_bits_data_tag;
  output [1:0] io_out_bits_data_coh_state;
  input io_in_1_valid;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_chosen;
  wire [5:0] io_out_bits_idx;
  wire [3:0] io_out_bits_way_en;
  wire [19:0] io_out_bits_data_tag;
  wire [1:0] io_out_bits_data_coh_state;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_chosen,N0,N1,io_out_ready,T7;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_data_coh_state = (N0)? io_in_1_bits_data_coh_state : 
                                      (N1)? io_in_0_bits_data_coh_state : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_data_tag = (N0)? io_in_1_bits_data_tag : 
                                (N1)? io_in_0_bits_data_tag : 1'b0;
  assign io_out_bits_way_en = (N0)? io_in_1_bits_way_en : 
                              (N1)? io_in_0_bits_way_en : 1'b0;
  assign io_out_bits_idx = (N0)? io_in_1_bits_idx : 
                           (N1)? io_in_0_bits_idx : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T7 & io_out_ready;
  assign T7 = ~io_in_0_valid;

endmodule