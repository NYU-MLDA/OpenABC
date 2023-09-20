module itlb_vaddr_width_p56_paddr_width_p22_eaddr_width_p64_btb_indx_width_p9_bht_indx_width_p5_ras_addr_width_p22_asid_width_p10_ppn_start_bit_p12_tag_width_p10
(
  clk_i,
  reset_i,
  fe_itlb_i,
  fe_itlb_v_i,
  fe_itlb_ready_o,
  pc_gen_itlb_i,
  pc_gen_itlb_v_i,
  pc_gen_itlb_ready_o,
  itlb_icache_o,
  itlb_icache_data_resp_v_o,
  itlb_icache_data_resp_ready_i,
  itlb_fe_o,
  itlb_fe_v_o,
  itlb_fe_ready_i
);

  input [108:0] fe_itlb_i;
  input [63:0] pc_gen_itlb_i;
  output [9:0] itlb_icache_o;
  output [133:0] itlb_fe_o;
  input clk_i;
  input reset_i;
  input fe_itlb_v_i;
  input pc_gen_itlb_v_i;
  input itlb_icache_data_resp_ready_i;
  input itlb_fe_ready_i;
  output fe_itlb_ready_o;
  output pc_gen_itlb_ready_o;
  output itlb_icache_data_resp_v_o;
  output itlb_fe_v_o;
  wire [133:0] itlb_fe_o;
  wire fe_itlb_ready_o,pc_gen_itlb_ready_o,itlb_icache_data_resp_v_o,itlb_fe_v_o;
  reg [9:0] itlb_icache_o;
  assign pc_gen_itlb_ready_o = 1'b1;
  assign itlb_icache_data_resp_v_o = 1'b1;
  assign fe_itlb_ready_o = 1'b0;
  assign itlb_fe_v_o = 1'b0;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { itlb_icache_o[9:0] } <= { pc_gen_itlb_i[21:12] };
    end 
  end


endmodule