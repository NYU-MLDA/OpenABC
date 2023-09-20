module bsg_scan_2_1_1
(
  i,
  o
);

  input [1:0] i;
  output [1:0] o;
  wire [1:0] o;
  assign o[0] = i[0] | 1'b0;
  assign o[1] = i[1] | i[0];

endmodule