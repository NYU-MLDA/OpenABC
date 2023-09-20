module Arbiter_9
(
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits,
  io_out_ready,
  io_out_valid,
  io_out_bits,
  io_chosen
);

  input io_in_1_valid;
  input io_in_1_bits;
  input io_in_0_valid;
  input io_in_0_bits;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits;
  output io_chosen;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits,io_chosen,N0,N1,
  io_out_ready,T4;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = ~io_in_0_valid;
  assign io_out_bits = (N0)? io_in_1_bits : 
                       (N1)? io_in_0_bits : 1'b0;
  assign N0 = io_chosen;
  assign N1 = io_in_0_valid;
  assign io_out_valid = (N0)? io_in_1_valid : 
                        (N1)? io_in_0_valid : 1'b0;
  assign io_in_1_ready = T4 & io_out_ready;
  assign T4 = ~io_in_0_valid;

endmodule