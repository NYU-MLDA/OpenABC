module bsg_decode_num_out_p4
(
  i,
  o
);

  input [1:0] i;
  output [3:0] o;
  wire [3:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule