module bsg_round_robin_arb_inputs_p3
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

  input [2:0] reqs_i;
  output [2:0] grants_o;
  output [2:0] sel_one_hot_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [2:0] grants_o,sel_one_hot_o;
  wire [1:0] tag_o,last_r;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59;
  reg last_r_1_sv2v_reg,last_r_0_sv2v_reg;
  assign last_r[1] = last_r_1_sv2v_reg;
  assign last_r[0] = last_r_0_sv2v_reg;
  assign N10 = N7 & N8;
  assign N11 = N10 & N9;
  assign N14 = N12 & N13;
  assign N15 = N14 & reqs_i[1];
  assign N16 = last_r[1] | last_r[0];
  assign N17 = N7 | reqs_i[1];
  assign N18 = N16 | N17;
  assign N20 = last_r[1] | last_r[0];
  assign N21 = reqs_i[2] | reqs_i[1];
  assign N22 = N20 | N21;
  assign N23 = N22 | N9;
  assign N25 = last_r[1] | N13;
  assign N26 = N25 | N7;
  assign N28 = N12 & last_r[0];
  assign N29 = N7 & reqs_i[0];
  assign N30 = N28 & N29;
  assign N31 = last_r[1] | N13;
  assign N32 = reqs_i[2] | N8;
  assign N33 = N31 | N32;
  assign N34 = N33 | reqs_i[0];
  assign N36 = last_r[1] & N13;
  assign N37 = N36 & reqs_i[0];
  assign N38 = last_r[1] & N13;
  assign N39 = reqs_i[1] & N9;
  assign N40 = N38 & N39;
  assign N41 = N12 | last_r[0];
  assign N42 = N41 | N17;
  assign N43 = N42 | reqs_i[0];
  assign N45 = last_r[1] & last_r[0];
  assign N46 = N45 & reqs_i[2];
  assign N47 = last_r[1] & last_r[0];
  assign N48 = N47 & reqs_i[0];
  assign N49 = last_r[1] & last_r[0];
  assign N50 = N49 & reqs_i[1];

  always @(posedge clk_i) begin
    if(N57) begin
      last_r_1_sv2v_reg <= N55;
    end 
  end


  always @(posedge clk_i) begin
    if(N57) begin
      last_r_0_sv2v_reg <= N54;
    end 
  end

  assign sel_one_hot_o = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                         (N1)? { 1'b0, 1'b1, 1'b0 } : 
                         (N19)? { 1'b1, 1'b0, 1'b0 } : 
                         (N24)? { 1'b0, 1'b0, 1'b1 } : 
                         (N27)? { 1'b1, 1'b0, 1'b0 } : 
                         (N2)? { 1'b0, 1'b0, 1'b1 } : 
                         (N35)? { 1'b0, 1'b1, 1'b0 } : 
                         (N3)? { 1'b0, 1'b0, 1'b1 } : 
                         (N4)? { 1'b0, 1'b1, 1'b0 } : 
                         (N44)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N11;
  assign N1 = N15;
  assign N2 = N30;
  assign N3 = N37;
  assign N4 = N40;
  assign tag_o = (N0)? { 1'b0, 1'b0 } : 
                 (N1)? { 1'b0, 1'b1 } : 
                 (N19)? { 1'b1, 1'b0 } : 
                 (N24)? { 1'b0, 1'b0 } : 
                 (N27)? { 1'b1, 1'b0 } : 
                 (N2)? { 1'b0, 1'b0 } : 
                 (N35)? { 1'b0, 1'b1 } : 
                 (N3)? { 1'b0, 1'b0 } : 
                 (N4)? { 1'b0, 1'b1 } : 
                 (N44)? { 1'b1, 1'b0 } : 
                 (N51)? { 1'b0, 1'b0 } : 1'b0;
  assign { N55, N54 } = (N5)? { 1'b0, 1'b0 } : 
                        (N6)? tag_o : 1'b0;
  assign N5 = reset_i;
  assign N6 = N53;
  assign N7 = ~reqs_i[2];
  assign N8 = ~reqs_i[1];
  assign N9 = ~reqs_i[0];
  assign N12 = ~last_r[1];
  assign N13 = ~last_r[0];
  assign N19 = ~N18;
  assign N24 = ~N23;
  assign N27 = ~N26;
  assign N35 = ~N34;
  assign N44 = ~N43;
  assign N51 = N46 | N58;
  assign N58 = N48 | N50;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N59 | reqs_i[0];
  assign N59 = reqs_i[2] | reqs_i[1];
  assign N52 = ~yumi_i;
  assign N53 = ~reset_i;
  assign N56 = N52 & N53;
  assign N57 = ~N56;

endmodule