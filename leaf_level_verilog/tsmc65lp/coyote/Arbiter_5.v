module Arbiter_5
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr,
  io_in_1_bits_tag,
  io_in_1_bits_cmd,
  io_in_1_bits_typ,
  io_in_1_bits_kill,
  io_in_1_bits_phys,
  io_in_1_bits_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr,
  io_in_0_bits_tag,
  io_in_0_bits_cmd,
  io_in_0_bits_typ,
  io_in_0_bits_kill,
  io_in_0_bits_phys,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr,
  io_out_bits_tag,
  io_out_bits_cmd,
  io_out_bits_typ,
  io_out_bits_kill,
  io_out_bits_phys,
  io_out_bits_data,
  io_chosen
);

  input [39:0] io_in_1_bits_addr;
  input [9:0] io_in_1_bits_tag;
  input [4:0] io_in_1_bits_cmd;
  input [2:0] io_in_1_bits_typ;
  input [63:0] io_in_1_bits_data;
  input [39:0] io_in_0_bits_addr;
  input [9:0] io_in_0_bits_tag;
  input [4:0] io_in_0_bits_cmd;
  input [2:0] io_in_0_bits_typ;
  input [63:0] io_in_0_bits_data;
  output [39:0] io_out_bits_addr;
  output [9:0] io_out_bits_tag;
  output [4:0] io_out_bits_cmd;
  output [2:0] io_out_bits_typ;
  output [63:0] io_out_bits_data;
  input io_in_1_valid;
  input io_in_1_bits_kill;
  input io_in_1_bits_phys;
  input io_in_0_valid;
  input io_in_0_bits_kill;
  input io_in_0_bits_phys;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_kill;
  output io_out_bits_phys;
  output io_chosen;
  wire [39:0] io_out_bits_addr;
  wire [9:0] io_out_bits_tag;
  wire [4:0] io_out_bits_cmd;
  wire [2:0] io_out_bits_typ;
  wire [63:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_kill,io_out_bits_phys,
  io_chosen,N0,N1,io_out_ready,T10;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits_data = (N0)? io_in_1_bits_data : 
                            (N1)? io_in_0_bits_data : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_bits_phys = (N0)? io_in_1_bits_phys : 
                            (N1)? io_in_0_bits_phys : 1'b0;
  assign io_out_bits_kill = (N0)? io_in_1_bits_kill : 
                            (N1)? io_in_0_bits_kill : 1'b0;
  assign io_out_bits_typ = (N0)? io_in_1_bits_typ : 
                           (N1)? io_in_0_bits_typ : 1'b0;
  assign io_out_bits_cmd = (N0)? io_in_1_bits_cmd : 
                           (N1)? io_in_0_bits_cmd : 1'b0;
  assign io_out_bits_tag = (N0)? io_in_1_bits_tag : 
                           (N1)? io_in_0_bits_tag : 1'b0;
  assign io_out_bits_addr = (N0)? io_in_1_bits_addr : 
                            (N1)? io_in_0_bits_addr : 1'b0;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T10 & io_out_ready;
  assign T10 = ~io_in_0_valid;

endmodule