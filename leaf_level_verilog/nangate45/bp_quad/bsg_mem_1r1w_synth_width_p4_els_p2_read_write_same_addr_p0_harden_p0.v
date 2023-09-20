module bsg_mem_1r1w_synth_width_p4_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [3:0] w_data_i;
  input [0:0] r_addr_i;
  output [3:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [3:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [7:0] mem;
  reg mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,mem_3_sv2v_reg,
  mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[7] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[6] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[5] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[4] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_7_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_6_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_5_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_4_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_3_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_2_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_1_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end

  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

endmodule