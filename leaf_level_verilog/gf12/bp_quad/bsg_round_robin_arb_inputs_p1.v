module bsg_round_robin_arb_inputs_p1
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [0:0] reqs_i;
  output [0:0] grants_o;
  output [0:0] sel_one_hot_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [0:0] grants_o,sel_one_hot_o,tag_o;
  wire v_o,N0,N1,N2;
  assign tag_o[0] = 1'b0;
  assign v_o = reqs_i[0];
  assign N2 = ~reqs_i[0];
  assign sel_one_hot_o[0] = (N0)? 1'b0 : 
                            (N1)? 1'b1 : 1'b0;
  assign N0 = N2;
  assign N1 = reqs_i[0];
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;

endmodule