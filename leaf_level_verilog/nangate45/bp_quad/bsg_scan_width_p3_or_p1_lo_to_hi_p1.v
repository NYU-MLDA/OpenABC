module bsg_scan_width_p3_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [2:0] i;
  output [2:0] o;
  wire [2:0] o;
  wire t_1__2_,t_1__1_,t_1__0_;
  assign t_1__2_ = i[0] | 1'b0;
  assign t_1__1_ = i[1] | i[0];
  assign t_1__0_ = i[2] | i[1];
  assign o[0] = t_1__2_ | 1'b0;
  assign o[1] = t_1__1_ | 1'b0;
  assign o[2] = t_1__0_ | t_1__2_;

endmodule