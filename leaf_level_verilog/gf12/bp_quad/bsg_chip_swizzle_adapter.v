module bsg_chip_swizzle_adapter
(
  guts_ci_clk_o,
  guts_ci_v_o,
  guts_ci_data_o,
  guts_ci_tkn_i,
  guts_ci2_clk_o,
  guts_ci2_v_o,
  guts_ci2_data_o,
  guts_ci2_tkn_i,
  guts_co_clk_i,
  guts_co_v_i,
  guts_co_data_i,
  guts_co_tkn_o,
  guts_co2_clk_i,
  guts_co2_v_i,
  guts_co2_data_i,
  guts_co2_tkn_o,
  port_ci_clk_i,
  port_ci_v_i,
  port_ci_data_i,
  port_ci_tkn_o,
  port_co_clk_i,
  port_co_v_i,
  port_co_data_i,
  port_co_tkn_o,
  port_ci2_clk_o,
  port_ci2_v_o,
  port_ci2_data_o,
  port_ci2_tkn_i,
  port_co2_clk_o,
  port_co2_v_o,
  port_co2_data_o,
  port_co2_tkn_i
);

  output [8:0] guts_ci_data_o;
  output [8:0] guts_ci2_data_o;
  input [8:0] guts_co_data_i;
  input [8:0] guts_co2_data_i;
  input [8:0] port_ci_data_i;
  input [8:0] port_co_data_i;
  output [8:0] port_ci2_data_o;
  output [8:0] port_co2_data_o;
  input guts_ci_tkn_i;
  input guts_ci2_tkn_i;
  input guts_co_clk_i;
  input guts_co_v_i;
  input guts_co2_clk_i;
  input guts_co2_v_i;
  input port_ci_clk_i;
  input port_ci_v_i;
  input port_co_clk_i;
  input port_co_v_i;
  input port_ci2_tkn_i;
  input port_co2_tkn_i;
  output guts_ci_clk_o;
  output guts_ci_v_o;
  output guts_ci2_clk_o;
  output guts_ci2_v_o;
  output guts_co_tkn_o;
  output guts_co2_tkn_o;
  output port_ci_tkn_o;
  output port_co_tkn_o;
  output port_ci2_clk_o;
  output port_ci2_v_o;
  output port_co2_clk_o;
  output port_co2_v_o;
  wire [8:0] guts_ci_data_o,guts_ci2_data_o,port_ci2_data_o,port_co2_data_o;
  wire guts_ci_clk_o,guts_ci_v_o,guts_ci2_clk_o,guts_ci2_v_o,guts_co_tkn_o,
  guts_co2_tkn_o,port_ci_tkn_o,port_co_tkn_o,port_ci2_clk_o,port_ci2_v_o,port_co2_clk_o,
  port_co2_v_o,guts_co_data_i_4_,guts_co2_data_i_4_;
  assign guts_ci_clk_o = port_ci_clk_i;
  assign guts_ci_v_o = port_ci_v_i;
  assign guts_ci_data_o[8] = port_ci_data_i[8];
  assign guts_ci_data_o[7] = port_ci_data_i[7];
  assign guts_ci_data_o[6] = port_ci_data_i[6];
  assign guts_ci_data_o[5] = port_ci_data_i[5];
  assign guts_ci_data_o[4] = port_ci_data_i[4];
  assign guts_ci_data_o[3] = port_ci_data_i[3];
  assign guts_ci_data_o[2] = port_ci_data_i[2];
  assign guts_ci_data_o[1] = port_ci_data_i[1];
  assign guts_ci_data_o[0] = port_ci_data_i[0];
  assign guts_ci2_clk_o = port_co_clk_i;
  assign guts_ci2_v_o = port_co_v_i;
  assign guts_ci2_data_o[8] = port_co_data_i[8];
  assign guts_ci2_data_o[7] = port_co_data_i[7];
  assign guts_ci2_data_o[6] = port_co_data_i[6];
  assign guts_ci2_data_o[5] = port_co_data_i[5];
  assign guts_ci2_data_o[4] = port_co_data_i[4];
  assign guts_ci2_data_o[3] = port_co_data_i[3];
  assign guts_ci2_data_o[2] = port_co_data_i[2];
  assign guts_ci2_data_o[1] = port_co_data_i[1];
  assign guts_ci2_data_o[0] = port_co_data_i[0];
  assign guts_co_data_i_4_ = guts_co_data_i[4];
  assign port_ci2_v_o = guts_co_data_i_4_;
  assign guts_co_tkn_o = port_ci2_tkn_i;
  assign guts_co2_data_i_4_ = guts_co2_data_i[4];
  assign port_co2_v_o = guts_co2_data_i_4_;
  assign guts_co2_tkn_o = port_co2_tkn_i;
  assign port_ci_tkn_o = guts_ci_tkn_i;
  assign port_co_tkn_o = guts_ci2_tkn_i;
  assign port_ci2_clk_o = guts_co_clk_i;
  assign port_ci2_data_o[8] = guts_co_data_i[0];
  assign port_ci2_data_o[7] = guts_co_data_i[1];
  assign port_ci2_data_o[6] = guts_co_data_i[2];
  assign port_ci2_data_o[5] = guts_co_v_i;
  assign port_ci2_data_o[4] = guts_co_data_i[3];
  assign port_ci2_data_o[3] = guts_co_data_i[8];
  assign port_ci2_data_o[2] = guts_co_data_i[7];
  assign port_ci2_data_o[1] = guts_co_data_i[5];
  assign port_ci2_data_o[0] = guts_co_data_i[6];
  assign port_co2_clk_o = guts_co2_clk_i;
  assign port_co2_data_o[8] = guts_co2_data_i[0];
  assign port_co2_data_o[7] = guts_co2_data_i[1];
  assign port_co2_data_o[6] = guts_co2_data_i[2];
  assign port_co2_data_o[5] = guts_co2_data_i[3];
  assign port_co2_data_o[4] = guts_co2_data_i[5];
  assign port_co2_data_o[3] = guts_co2_data_i[6];
  assign port_co2_data_o[2] = guts_co2_v_i;
  assign port_co2_data_o[1] = guts_co2_data_i[7];
  assign port_co2_data_o[0] = guts_co2_data_i[8];

endmodule