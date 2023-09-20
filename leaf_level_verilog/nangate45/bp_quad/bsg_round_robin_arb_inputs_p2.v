module bsg_round_robin_arb_inputs_p2
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

  input [1:0] reqs_i;
  output [1:0] grants_o;
  output [1:0] sel_one_hot_o;
  output [0:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [1:0] grants_o,sel_one_hot_o;
  wire [0:0] tag_o,last_r;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22;
  reg last_r_0_sv2v_reg;
  assign last_r[0] = last_r_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(N22) begin
      last_r_0_sv2v_reg <= N20;
    end 
  end

  assign N13 = N0 & N1;
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[0];
  assign N14 = reqs_i[1] & N2;
  assign N2 = ~last_r[0];
  assign N15 = N3 & reqs_i[0] & N4;
  assign N3 = ~reqs_i[1];
  assign N4 = ~last_r[0];
  assign N16 = reqs_i[0] & last_r[0];
  assign N17 = reqs_i[1] & N5 & last_r[0];
  assign N5 = ~reqs_i[0];
  assign sel_one_hot_o = (N6)? { 1'b0, 1'b0 } : 
                         (N7)? { 1'b1, 1'b0 } : 
                         (N8)? { 1'b0, 1'b1 } : 
                         (N9)? { 1'b0, 1'b1 } : 
                         (N10)? { 1'b1, 1'b0 } : 1'b0;
  assign N6 = N13;
  assign N7 = N14;
  assign N8 = N15;
  assign N9 = N16;
  assign N10 = N17;
  assign tag_o[0] = (N6)? 1'b0 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b0 : 
                    (N9)? 1'b0 : 
                    (N10)? 1'b1 : 1'b0;
  assign N20 = (N11)? 1'b0 : 
               (N12)? tag_o[0] : 1'b0;
  assign N11 = reset_i;
  assign N12 = N19;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = reqs_i[1] | reqs_i[0];
  assign N18 = ~yumi_i;
  assign N19 = ~reset_i;
  assign N21 = N18 & N19;
  assign N22 = ~N21;

endmodule