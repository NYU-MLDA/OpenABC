module Arbiter_6
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_beat,
  io_in_1_bits_client_xact_id,
  io_in_1_bits_manager_xact_id,
  io_in_1_bits_is_builtin_type,
  io_in_1_bits_g_type,
  io_in_1_bits_data,
  io_in_1_bits_client_id,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_beat,
  io_in_0_bits_client_xact_id,
  io_in_0_bits_manager_xact_id,
  io_in_0_bits_is_builtin_type,
  io_in_0_bits_g_type,
  io_in_0_bits_data,
  io_in_0_bits_client_id,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_beat,
  io_out_bits_client_xact_id,
  io_out_bits_manager_xact_id,
  io_out_bits_is_builtin_type,
  io_out_bits_g_type,
  io_out_bits_data,
  io_out_bits_client_id,
  io_chosen
);

  input [2:0] io_in_1_bits_addr_beat;
  input [3:0] io_in_1_bits_client_xact_id;
  input [3:0] io_in_1_bits_g_type;
  input [63:0] io_in_1_bits_data;
  input [2:0] io_in_0_bits_addr_beat;
  input [3:0] io_in_0_bits_client_xact_id;
  input [3:0] io_in_0_bits_g_type;
  input [63:0] io_in_0_bits_data;
  output [2:0] io_out_bits_addr_beat;
  output [3:0] io_out_bits_client_xact_id;
  output [3:0] io_out_bits_g_type;
  output [63:0] io_out_bits_data;
  input io_in_1_valid;
  input io_in_1_bits_manager_xact_id;
  input io_in_1_bits_is_builtin_type;
  input io_in_1_bits_client_id;
  input io_in_0_valid;
  input io_in_0_bits_manager_xact_id;
  input io_in_0_bits_is_builtin_type;
  input io_in_0_bits_client_id;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_manager_xact_id;
  output io_out_bits_is_builtin_type;
  output io_out_bits_client_id;
  output io_chosen;
  wire [2:0] io_out_bits_addr_beat;
  wire [3:0] io_out_bits_client_xact_id,io_out_bits_g_type;
  wire [63:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_manager_xact_id,
  io_out_bits_is_builtin_type,io_out_bits_client_id,io_chosen,N0,N1,io_out_ready,T10;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_client_id = (N0)? io_in_1_bits_client_id : 
                                 (N1)? io_in_0_bits_client_id : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_data = (N0)? io_in_1_bits_data : 
                            (N1)? io_in_0_bits_data : 1'b0;
  assign io_out_bits_g_type = (N0)? io_in_1_bits_g_type : 
                              (N1)? io_in_0_bits_g_type : 1'b0;
  assign io_out_bits_is_builtin_type = (N0)? io_in_1_bits_is_builtin_type : 
                                       (N1)? io_in_0_bits_is_builtin_type : 1'b0;
  assign io_out_bits_manager_xact_id = (N0)? io_in_1_bits_manager_xact_id : 
                                       (N1)? io_in_0_bits_manager_xact_id : 1'b0;
  assign io_out_bits_client_xact_id = (N0)? io_in_1_bits_client_xact_id : 
                                      (N1)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_beat = (N0)? io_in_1_bits_addr_beat : 
                                 (N1)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T10 & io_out_ready;
  assign T10 = ~io_in_0_valid;

endmodule