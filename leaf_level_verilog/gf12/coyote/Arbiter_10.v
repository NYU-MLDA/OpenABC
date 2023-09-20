module Arbiter_10
(
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits,
  io_out_ready,
  io_out_valid,
  io_out_bits,
  io_chosen
);

  input io_in_0_valid;
  input io_in_0_bits;
  input io_out_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits;
  output io_chosen;
  wire io_in_0_ready,io_out_valid,io_out_bits,io_chosen,io_out_ready,io_in_0_valid,
  io_in_0_bits;
  assign io_chosen = 1'b0;
  assign io_in_0_ready = io_out_ready;
  assign io_out_valid = io_in_0_valid;
  assign io_out_bits = io_in_0_bits;

endmodule