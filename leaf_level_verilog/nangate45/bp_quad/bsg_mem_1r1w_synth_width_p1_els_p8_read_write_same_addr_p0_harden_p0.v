module bsg_mem_1r1w_synth_width_p1_els_p8_read_write_same_addr_p0_harden_p0
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

  input [2:0] w_addr_i;
  input [0:0] w_data_i;
  input [2:0] r_addr_i;
  output [0:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [0:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45;
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
  assign r_data_o[0] = (N17)? mem[0] : 
                       (N19)? mem[1] : 
                       (N21)? mem[2] : 
                       (N23)? mem[3] : 
                       (N18)? mem[4] : 
                       (N20)? mem[5] : 
                       (N22)? mem[6] : 
                       (N24)? mem[7] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_7_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_6_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_5_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_4_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_3_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_2_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_1_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end

  assign N42 = w_addr_i[0] & w_addr_i[1];
  assign N33 = N42 & w_addr_i[2];
  assign N43 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N32 = N43 & w_addr_i[2];
  assign N44 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N31 = N44 & w_addr_i[2];
  assign N45 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign N30 = N45 & w_addr_i[2];
  assign N29 = N42 & N4;
  assign N4 = ~w_addr_i[2];
  assign N28 = N43 & N5;
  assign N5 = ~w_addr_i[2];
  assign N27 = N44 & N6;
  assign N6 = ~w_addr_i[2];
  assign N26 = N45 & N7;
  assign N7 = ~w_addr_i[2];
  assign { N41, N40, N39, N38, N37, N36, N35, N34 } = (N8)? { N33, N32, N31, N30, N29, N28, N27, N26 } : 
                                                      (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N25;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~w_v_i;

endmodule