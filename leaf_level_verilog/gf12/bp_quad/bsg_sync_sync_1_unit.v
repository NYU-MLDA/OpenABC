module bsg_sync_sync_1_unit
(
  oclk_i,
  iclk_data_i,
  oclk_data_o
);

  input [0:0] iclk_data_i;
  output [0:0] oclk_data_o;
  input oclk_i;
  wire [0:0] oclk_data_o,bsg_SYNC_1_r;
  reg bsg_SYNC_1_r_0_sv2v_reg,oclk_data_o_0_sv2v_reg;
  assign bsg_SYNC_1_r[0] = bsg_SYNC_1_r_0_sv2v_reg;
  assign oclk_data_o[0] = oclk_data_o_0_sv2v_reg;

  always @(posedge oclk_i) begin
    if(1'b1) begin
      bsg_SYNC_1_r_0_sv2v_reg <= iclk_data_i[0];
    end 
  end


  always @(posedge oclk_i) begin
    if(1'b1) begin
      oclk_data_o_0_sv2v_reg <= bsg_SYNC_1_r[0];
    end 
  end


endmodule