module bsg_async_ptr_gray_lg_size_p4
(
  w_clk_i,
  w_reset_i,
  w_inc_i,
  r_clk_i,
  w_ptr_binary_r_o,
  w_ptr_gray_r_o,
  w_ptr_gray_r_rsync_o
);

  output [3:0] w_ptr_binary_r_o;
  output [3:0] w_ptr_gray_r_o;
  output [3:0] w_ptr_gray_r_rsync_o;
  input w_clk_i;
  input w_reset_i;
  input w_inc_i;
  input r_clk_i;
  wire [3:0] w_ptr_binary_r_o,w_ptr_gray_r_o,w_ptr_gray_r_rsync_o,w_ptr_p1_r,w_ptr_p2,
  w_ptr_gray_n;
  wire N0,N1,N2,N3,N4,N5;
  reg w_ptr_p1_r_3_sv2v_reg,w_ptr_p1_r_2_sv2v_reg,w_ptr_p1_r_1_sv2v_reg,
  w_ptr_p1_r_0_sv2v_reg,w_ptr_binary_r_o_3_sv2v_reg,w_ptr_binary_r_o_2_sv2v_reg,
  w_ptr_binary_r_o_1_sv2v_reg,w_ptr_binary_r_o_0_sv2v_reg;
  assign w_ptr_p1_r[3] = w_ptr_p1_r_3_sv2v_reg;
  assign w_ptr_p1_r[2] = w_ptr_p1_r_2_sv2v_reg;
  assign w_ptr_p1_r[1] = w_ptr_p1_r_1_sv2v_reg;
  assign w_ptr_p1_r[0] = w_ptr_p1_r_0_sv2v_reg;
  assign w_ptr_binary_r_o[3] = w_ptr_binary_r_o_3_sv2v_reg;
  assign w_ptr_binary_r_o[2] = w_ptr_binary_r_o_2_sv2v_reg;
  assign w_ptr_binary_r_o[1] = w_ptr_binary_r_o_1_sv2v_reg;
  assign w_ptr_binary_r_o[0] = w_ptr_binary_r_o_0_sv2v_reg;

  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_3_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_3_sv2v_reg <= w_ptr_p2[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_2_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_2_sv2v_reg <= w_ptr_p2[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_1_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_p1_r_1_sv2v_reg <= w_ptr_p2[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_p1_r_0_sv2v_reg <= 1'b1;
    end else if(w_inc_i) begin
      w_ptr_p1_r_0_sv2v_reg <= w_ptr_p2[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_binary_r_o_3_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_binary_r_o_3_sv2v_reg <= w_ptr_p1_r[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_binary_r_o_2_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_binary_r_o_2_sv2v_reg <= w_ptr_p1_r[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_binary_r_o_1_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_binary_r_o_1_sv2v_reg <= w_ptr_p1_r[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(w_reset_i) begin
      w_ptr_binary_r_o_0_sv2v_reg <= 1'b0;
    end else if(w_inc_i) begin
      w_ptr_binary_r_o_0_sv2v_reg <= w_ptr_p1_r[0];
    end 
  end


  bsg_launch_sync_sync_width_p4_use_negedge_for_launch_p0_use_async_reset_p0
  ptr_sync
  (
    .iclk_i(w_clk_i),
    .iclk_reset_i(w_reset_i),
    .oclk_i(r_clk_i),
    .iclk_data_i(w_ptr_gray_n),
    .iclk_data_o(w_ptr_gray_r_o),
    .oclk_data_o(w_ptr_gray_r_rsync_o)
  );

  assign w_ptr_p2 = w_ptr_p1_r + 1'b1;
  assign w_ptr_gray_n = (N0)? { w_ptr_p1_r[3:3], N3, N4, N5 } : 
                        (N1)? w_ptr_gray_r_o : 1'b0;
  assign N0 = w_inc_i;
  assign N1 = N2;
  assign N2 = ~w_inc_i;
  assign N3 = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign N4 = w_ptr_p1_r[2] ^ w_ptr_p1_r[1];
  assign N5 = w_ptr_p1_r[1] ^ w_ptr_p1_r[0];

endmodule