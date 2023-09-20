module bsg_launch_sync_sync_posedge_4_unit
(
  iclk_i,
  iclk_reset_i,
  oclk_i,
  iclk_data_i,
  iclk_data_o,
  oclk_data_o
);

  input [3:0] iclk_data_i;
  output [3:0] iclk_data_o;
  output [3:0] oclk_data_o;
  input iclk_i;
  input iclk_reset_i;
  input oclk_i;
  wire [3:0] iclk_data_o,oclk_data_o,bsg_SYNC_1_r;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg iclk_data_o_3_sv2v_reg,iclk_data_o_2_sv2v_reg,iclk_data_o_1_sv2v_reg,
  iclk_data_o_0_sv2v_reg,bsg_SYNC_1_r_3_sv2v_reg,bsg_SYNC_1_r_2_sv2v_reg,
  bsg_SYNC_1_r_1_sv2v_reg,bsg_SYNC_1_r_0_sv2v_reg,oclk_data_o_3_sv2v_reg,oclk_data_o_2_sv2v_reg,
  oclk_data_o_1_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign iclk_data_o[3] = iclk_data_o_3_sv2v_reg;
  assign iclk_data_o[2] = iclk_data_o_2_sv2v_reg;
  assign iclk_data_o[1] = iclk_data_o_1_sv2v_reg;
  assign iclk_data_o[0] = iclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[3] = bsg_SYNC_1_r_3_sv2v_reg;
  assign bsg_SYNC_1_r[2] = bsg_SYNC_1_r_2_sv2v_reg;
  assign bsg_SYNC_1_r[1] = bsg_SYNC_1_r_1_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[3] = oclk_data_o_3_sv2v_reg;
  assign oclk_data_o[2] = oclk_data_o_2_sv2v_reg;
  assign oclk_data_o[1] = oclk_data_o_1_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge iclk_i) begin
    if(1'b1) begin
      iclk_data_o_3_sv2v_reg <= N6;
    end 
  end


  always @(posedge iclk_i) begin
    if(1'b1) begin
      iclk_data_o_2_sv2v_reg <= N5;
    end 
  end


  always @(posedge iclk_i) begin
    if(1'b1) begin
      iclk_data_o_1_sv2v_reg <= N4;
    end 
  end


  always @(posedge iclk_i) begin
    if(1'b1) begin
      iclk_data_o_0_sv2v_reg <= N3;
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_3_sv2v_reg <= iclk_data_o[3];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_2_sv2v_reg <= iclk_data_o[2];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_1_sv2v_reg <= iclk_data_o[1];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_o[0];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      oclk_data_o_3_sv2v_reg <= bsg_SYNC_1_r[3];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      oclk_data_o_2_sv2v_reg <= bsg_SYNC_1_r[2];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      oclk_data_o_1_sv2v_reg <= bsg_SYNC_1_r[1];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
    end 
  end

  assign { N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N1)? iclk_data_i : 1'b0;
  assign N0 = iclk_reset_i;
  assign N1 = N2;
  assign N2 = ~iclk_reset_i;

endmodule