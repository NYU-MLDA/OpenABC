module bsg_unconcentrate_static_05
(
  i,
  o
);

  input [1:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire o_2_,o_0_;
  assign o[4] = 1'b0;
  assign o[3] = 1'b0;
  assign o[1] = 1'b0;
  assign o_2_ = i[1];
  assign o[2] = o_2_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule