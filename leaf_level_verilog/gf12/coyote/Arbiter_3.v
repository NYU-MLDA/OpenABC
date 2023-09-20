module Arbiter_3
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_way_en,
  io_in_1_bits_addr,
  io_in_1_bits_wmask,
  io_in_1_bits_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_way_en,
  io_in_0_bits_addr,
  io_in_0_bits_wmask,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_way_en,
  io_out_bits_addr,
  io_out_bits_wmask,
  io_out_bits_data,
  io_chosen
);

  input [3:0] io_in_1_bits_way_en;
  input [11:0] io_in_1_bits_addr;
  input [1:0] io_in_1_bits_wmask;
  input [127:0] io_in_1_bits_data;
  input [3:0] io_in_0_bits_way_en;
  input [11:0] io_in_0_bits_addr;
  input [1:0] io_in_0_bits_wmask;
  input [127:0] io_in_0_bits_data;
  output [3:0] io_out_bits_way_en;
  output [11:0] io_out_bits_addr;
  output [1:0] io_out_bits_wmask;
  output [127:0] io_out_bits_data;
  input io_in_1_valid;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_chosen;
  wire [3:0] io_out_bits_way_en;
  wire [11:0] io_out_bits_addr;
  wire [1:0] io_out_bits_wmask;
  wire [127:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_chosen,N0,N1,io_out_ready,T7;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_data = (N0)? io_in_1_bits_data : 
                            (N1)? io_in_0_bits_data : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_wmask = (N0)? io_in_1_bits_wmask : 
                             (N1)? io_in_0_bits_wmask : 1'b0;
  assign io_out_bits_addr = (N0)? io_in_1_bits_addr : 
                            (N1)? io_in_0_bits_addr : 1'b0;
  assign io_out_bits_way_en = (N0)? io_in_1_bits_way_en : 
                              (N1)? io_in_0_bits_way_en : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T7 & io_out_ready;
  assign T7 = ~io_in_0_valid;

endmodule