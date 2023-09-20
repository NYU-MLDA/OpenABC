module bsg_scan_width_p5_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [4:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__4_ = i[0] | 1'b0;
  assign t_1__3_ = i[1] | i[0];
  assign t_1__2_ = i[2] | i[1];
  assign t_1__1_ = i[3] | i[2];
  assign t_1__0_ = i[4] | i[3];
  assign t_2__4_ = t_1__4_ | 1'b0;
  assign t_2__3_ = t_1__3_ | 1'b0;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign o[0] = t_2__4_ | 1'b0;
  assign o[1] = t_2__3_ | 1'b0;
  assign o[2] = t_2__2_ | 1'b0;
  assign o[3] = t_2__1_ | 1'b0;
  assign o[4] = t_2__0_ | t_2__4_;

endmodule