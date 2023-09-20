module bsg_decode_num_out_p8
(
  i,
  o
);

  input [2:0] i;
  output [7:0] o;
  wire [7:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule