module bsg_async_credit_counter_4_3_0_2_1_1
(
  w_clk_i,
  w_inc_token_i,
  w_reset_i,
  r_clk_i,
  r_reset_i,
  r_dec_credit_i,
  r_infinite_credits_i,
  r_credits_avail_o
);

  input w_clk_i;
  input w_inc_token_i;
  input w_reset_i;
  input r_clk_i;
  input r_reset_i;
  input r_dec_credit_i;
  input r_infinite_credits_i;
  output r_credits_avail_o;
  wire r_credits_avail_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
  N18,r_counter_r_lo_bits_nonzero,N19,N20,N21,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,
  sv2v_dc_4,sv2v_dc_5;
  wire [7:0] r_counter_r;
  wire [4:0] w_counter_gray_r,w_counter_gray_r_rsync;
  wire [3:0] r_counter_r_hi_bits_gray;
  reg r_counter_r_7_sv2v_reg,r_counter_r_6_sv2v_reg,r_counter_r_5_sv2v_reg,
  r_counter_r_4_sv2v_reg,r_counter_r_3_sv2v_reg,r_counter_r_2_sv2v_reg,
  r_counter_r_1_sv2v_reg,r_counter_r_0_sv2v_reg;
  assign r_counter_r[7] = r_counter_r_7_sv2v_reg;
  assign r_counter_r[6] = r_counter_r_6_sv2v_reg;
  assign r_counter_r[5] = r_counter_r_5_sv2v_reg;
  assign r_counter_r[4] = r_counter_r_4_sv2v_reg;
  assign r_counter_r[3] = r_counter_r_3_sv2v_reg;
  assign r_counter_r[2] = r_counter_r_2_sv2v_reg;
  assign r_counter_r[1] = r_counter_r_1_sv2v_reg;
  assign r_counter_r[0] = r_counter_r_0_sv2v_reg;

  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_7_sv2v_reg <= N18;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_6_sv2v_reg <= N17;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_5_sv2v_reg <= N16;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_4_sv2v_reg <= N15;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_3_sv2v_reg <= N14;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_2_sv2v_reg <= N13;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_1_sv2v_reg <= N12;
    end 
  end


  always @(posedge r_clk_i) begin
    if(1'b1) begin
      r_counter_r_0_sv2v_reg <= N11;
    end 
  end


  bsg_async_ptr_gray_5_0_1
  bapg
  (
    .w_clk_i(w_clk_i),
    .w_reset_i(w_reset_i),
    .w_inc_i(w_inc_token_i),
    .r_clk_i(r_clk_i),
    .w_ptr_binary_r_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5 }),
    .w_ptr_gray_r_o(w_counter_gray_r),
    .w_ptr_gray_r_rsync_o(w_counter_gray_r_rsync)
  );

  assign N19 = { r_counter_r[7:7], r_counter_r_hi_bits_gray } != w_counter_gray_r_rsync;
  assign { N10, N9, N8, N7, N6, N5, N4, N3 } = r_counter_r + r_dec_credit_i;
  assign { N18, N17, N16, N15, N14, N13, N12, N11 } = (N0)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                      (N1)? { N10, N9, N8, N7, N6, N5, N4, N3 } : 1'b0;
  assign N0 = r_reset_i;
  assign N1 = N2;
  assign N2 = ~r_reset_i;
  assign r_counter_r_lo_bits_nonzero = N20 | r_counter_r[0];
  assign N20 = r_counter_r[2] | r_counter_r[1];
  assign r_counter_r_hi_bits_gray[3] = r_counter_r[7] ^ r_counter_r[6];
  assign r_counter_r_hi_bits_gray[2] = r_counter_r[6] ^ r_counter_r[5];
  assign r_counter_r_hi_bits_gray[1] = r_counter_r[5] ^ r_counter_r[4];
  assign r_counter_r_hi_bits_gray[0] = r_counter_r[4] ^ r_counter_r[3];
  assign r_credits_avail_o = N21 | N19;
  assign N21 = r_infinite_credits_i | r_counter_r_lo_bits_nonzero;

endmodule