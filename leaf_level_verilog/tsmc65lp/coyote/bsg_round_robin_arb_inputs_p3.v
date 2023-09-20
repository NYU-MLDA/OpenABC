module bsg_round_robin_arb_inputs_p3
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  v_o,
  tag_o,
  yumi_i
);

  input [2:0] reqs_i;
  output [2:0] grants_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [2:0] grants_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75;
  reg [1:0] last_r;
  assign N10 = grants_en_i & N8;
  assign N11 = N9 & N46;
  assign N12 = N10 & N11;
  assign N15 = grants_en_i & N13;
  assign N16 = N14 & reqs_i[1];
  assign N17 = N15 & N16;
  assign N18 = N7 | last_r[1];
  assign N19 = last_r[0] | N8;
  assign N20 = N18 | N19;
  assign N21 = N20 | reqs_i[1];
  assign N23 = N7 | last_r[1];
  assign N24 = last_r[0] | reqs_i[2];
  assign N25 = reqs_i[1] | N46;
  assign N26 = N23 | N24;
  assign N27 = N26 | N25;
  assign N29 = N7 | last_r[1];
  assign N30 = N14 | N8;
  assign N31 = N29 | N30;
  assign N33 = grants_en_i & N13;
  assign N34 = last_r[0] & N8;
  assign N35 = N33 & N34;
  assign N36 = N35 & reqs_i[0];
  assign N37 = N7 | last_r[1];
  assign N38 = N14 | reqs_i[2];
  assign N39 = N9 | reqs_i[0];
  assign N40 = N37 | N38;
  assign N41 = N40 | N39;
  assign N43 = grants_en_i & last_r[1];
  assign N44 = N14 & reqs_i[0];
  assign N45 = N43 & N44;
  assign N47 = grants_en_i & last_r[1];
  assign N48 = N14 & reqs_i[1];
  assign N49 = N47 & N48;
  assign N50 = N49 & N46;
  assign N51 = N7 | N13;
  assign N52 = last_r[0] | N8;
  assign N53 = reqs_i[1] | reqs_i[0];
  assign N54 = N51 | N52;
  assign N55 = N54 | N53;
  assign N57 = grants_en_i & last_r[1];
  assign N58 = last_r[0] & reqs_i[2];
  assign N59 = N57 & N58;
  assign N60 = grants_en_i & last_r[1];
  assign N61 = last_r[0] & reqs_i[0];
  assign N62 = N60 & N61;
  assign N63 = grants_en_i & last_r[1];
  assign N64 = last_r[0] & reqs_i[1];
  assign N65 = N63 & N64;

  always @(posedge clk_i) begin
    if(N72) begin
      last_r[1] <= N70;
    end 
  end


  always @(posedge clk_i) begin
    if(N72) begin
      last_r[0] <= N69;
    end 
  end

  assign grants_o = (N7)? { 1'b0, 1'b0, 1'b0 } : 
                    (N0)? { 1'b0, 1'b0, 1'b0 } : 
                    (N1)? { 1'b0, 1'b1, 1'b0 } : 
                    (N22)? { 1'b1, 1'b0, 1'b0 } : 
                    (N28)? { 1'b0, 1'b0, 1'b1 } : 
                    (N32)? { 1'b1, 1'b0, 1'b0 } : 
                    (N2)? { 1'b0, 1'b0, 1'b1 } : 
                    (N42)? { 1'b0, 1'b1, 1'b0 } : 
                    (N3)? { 1'b0, 1'b0, 1'b1 } : 
                    (N4)? { 1'b0, 1'b1, 1'b0 } : 
                    (N56)? { 1'b1, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N12;
  assign N1 = N17;
  assign N2 = N36;
  assign N3 = N45;
  assign N4 = N50;
  assign tag_o = (N7)? { 1'b0, 1'b0 } : 
                 (N0)? { 1'b0, 1'b0 } : 
                 (N1)? { 1'b0, 1'b1 } : 
                 (N22)? { 1'b1, 1'b0 } : 
                 (N28)? { 1'b0, 1'b0 } : 
                 (N32)? { 1'b1, 1'b0 } : 
                 (N2)? { 1'b0, 1'b0 } : 
                 (N42)? { 1'b0, 1'b1 } : 
                 (N3)? { 1'b0, 1'b0 } : 
                 (N4)? { 1'b0, 1'b1 } : 
                 (N56)? { 1'b1, 1'b0 } : 
                 (N66)? { 1'b0, 1'b0 } : 1'b0;
  assign { N70, N69 } = (N5)? { 1'b0, 1'b0 } : 
                        (N6)? tag_o : 1'b0;
  assign N5 = reset_i;
  assign N6 = N68;
  assign N7 = ~grants_en_i;
  assign N8 = ~reqs_i[2];
  assign N9 = ~reqs_i[1];
  assign N13 = ~last_r[1];
  assign N14 = ~last_r[0];
  assign N22 = ~N21;
  assign N28 = ~N27;
  assign N32 = ~N31;
  assign N42 = ~N41;
  assign N46 = ~reqs_i[0];
  assign N56 = ~N55;
  assign N66 = N59 | N73;
  assign N73 = N62 | N65;
  assign v_o = N75 & grants_en_i;
  assign N75 = N74 | reqs_i[0];
  assign N74 = reqs_i[2] | reqs_i[1];
  assign N67 = ~yumi_i;
  assign N68 = ~reset_i;
  assign N71 = N67 & N68;
  assign N72 = ~N71;

endmodule