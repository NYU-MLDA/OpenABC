module bsg_mem_1r1w_synth_width_p9_els_p2_read_write_same_addr_p0_harden_p0
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
  input [8:0] w_data_i;
  input [0:0] r_addr_i;
  output [8:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [8:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [17:0] mem;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[17] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[16] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[15] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[14] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[13] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[12] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[11] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[10] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[9] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[17] <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[16] <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[15] <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[14] <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[13] <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[12] <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[11] <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[10] <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[9] <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[8] <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[7] <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[6] <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[5] <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[4] <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[3] <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[2] <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[1] <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[0] <= w_data_i[0];
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