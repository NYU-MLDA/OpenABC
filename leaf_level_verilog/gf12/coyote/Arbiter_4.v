module Arbiter_4
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_beat,
  io_in_1_bits_addr_block,
  io_in_1_bits_client_xact_id,
  io_in_1_bits_voluntary,
  io_in_1_bits_r_type,
  io_in_1_bits_data,
  io_in_1_bits_way_en,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_beat,
  io_in_0_bits_addr_block,
  io_in_0_bits_client_xact_id,
  io_in_0_bits_voluntary,
  io_in_0_bits_r_type,
  io_in_0_bits_data,
  io_in_0_bits_way_en,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_beat,
  io_out_bits_addr_block,
  io_out_bits_client_xact_id,
  io_out_bits_voluntary,
  io_out_bits_r_type,
  io_out_bits_data,
  io_out_bits_way_en,
  io_chosen
);

  input [1:0] io_in_1_bits_addr_beat;
  input [25:0] io_in_1_bits_addr_block;
  input [5:0] io_in_1_bits_client_xact_id;
  input [2:0] io_in_1_bits_r_type;
  input [127:0] io_in_1_bits_data;
  input [3:0] io_in_1_bits_way_en;
  input [1:0] io_in_0_bits_addr_beat;
  input [25:0] io_in_0_bits_addr_block;
  input [5:0] io_in_0_bits_client_xact_id;
  input [2:0] io_in_0_bits_r_type;
  input [127:0] io_in_0_bits_data;
  input [3:0] io_in_0_bits_way_en;
  output [1:0] io_out_bits_addr_beat;
  output [25:0] io_out_bits_addr_block;
  output [5:0] io_out_bits_client_xact_id;
  output [2:0] io_out_bits_r_type;
  output [127:0] io_out_bits_data;
  output [3:0] io_out_bits_way_en;
  input io_in_1_valid;
  input io_in_1_bits_voluntary;
  input io_in_0_valid;
  input io_in_0_bits_voluntary;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_voluntary;
  output io_chosen;
  wire [1:0] io_out_bits_addr_beat;
  wire [25:0] io_out_bits_addr_block;
  wire [5:0] io_out_bits_client_xact_id;
  wire [2:0] io_out_bits_r_type;
  wire [127:0] io_out_bits_data;
  wire [3:0] io_out_bits_way_en;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_voluntary,io_chosen,N0,N1,
  io_out_ready,T10;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_way_en = (N0)? io_in_1_bits_way_en : 
                              (N1)? io_in_0_bits_way_en : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_data = (N0)? io_in_1_bits_data : 
                            (N1)? io_in_0_bits_data : 1'b0;
  assign io_out_bits_r_type = (N0)? io_in_1_bits_r_type : 
                              (N1)? io_in_0_bits_r_type : 1'b0;
  assign io_out_bits_voluntary = (N0)? io_in_1_bits_voluntary : 
                                 (N1)? io_in_0_bits_voluntary : 1'b0;
  assign io_out_bits_client_xact_id = (N0)? io_in_1_bits_client_xact_id : 
                                      (N1)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N0)? io_in_1_bits_addr_block : 
                                  (N1)? io_in_0_bits_addr_block : 1'b0;
  assign io_out_bits_addr_beat = (N0)? io_in_1_bits_addr_beat : 
                                 (N1)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T10 & io_out_ready;
  assign T10 = ~io_in_0_valid;

endmodule