module bsg_round_robin_arb_inputs_p4
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

  input [3:0] reqs_i;
  output [3:0] grants_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [3:0] grants_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126;
  reg [1:0] last_r;

  always @(posedge clk_i) begin
    if(N123) begin
      last_r[1] <= N121;
    end 
  end


  always @(posedge clk_i) begin
    if(N123) begin
      last_r[0] <= N120;
    end 
  end

  assign N100 = ~grants_en_i;
  assign N101 = grants_en_i & N0 & (N1 & N2) & N3;
  assign N0 = ~reqs_i[0];
  assign N1 = ~reqs_i[1];
  assign N2 = ~reqs_i[2];
  assign N3 = ~reqs_i[3];
  assign N102 = grants_en_i & reqs_i[1] & (N4 & N5);
  assign N4 = ~last_r[0];
  assign N5 = ~last_r[1];
  assign N103 = grants_en_i & N6 & (N7 & reqs_i[2]) & N8;
  assign N6 = ~reqs_i[1];
  assign N7 = ~last_r[0];
  assign N8 = ~last_r[1];
  assign N9 = grants_en_i & N13;
  assign N10 = N9 & N14;
  assign N11 = N10 & N15;
  assign N12 = N11 & N16;
  assign N104 = N12 & reqs_i[3];
  assign N13 = ~reqs_i[1];
  assign N14 = ~last_r[0];
  assign N15 = ~reqs_i[2];
  assign N16 = ~last_r[1];
  assign N17 = grants_en_i & reqs_i[0];
  assign N18 = N17 & N22;
  assign N19 = N18 & N23;
  assign N20 = N19 & N24;
  assign N21 = N20 & N25;
  assign N105 = N21 & N26;
  assign N22 = ~reqs_i[1];
  assign N23 = ~last_r[0];
  assign N24 = ~reqs_i[2];
  assign N25 = ~last_r[1];
  assign N26 = ~reqs_i[3];
  assign N106 = grants_en_i & last_r[0] & (reqs_i[2] & N27);
  assign N27 = ~last_r[1];
  assign N107 = grants_en_i & last_r[0] & (N28 & N29) & reqs_i[3];
  assign N28 = ~reqs_i[2];
  assign N29 = ~last_r[1];
  assign N30 = grants_en_i & reqs_i[0];
  assign N31 = N30 & last_r[0];
  assign N32 = N31 & N34;
  assign N33 = N32 & N35;
  assign N108 = N33 & N36;
  assign N34 = ~reqs_i[2];
  assign N35 = ~last_r[1];
  assign N36 = ~reqs_i[3];
  assign N37 = grants_en_i & N42;
  assign N38 = N37 & reqs_i[1];
  assign N39 = N38 & last_r[0];
  assign N40 = N39 & N43;
  assign N41 = N40 & N44;
  assign N109 = N41 & N45;
  assign N42 = ~reqs_i[0];
  assign N43 = ~reqs_i[2];
  assign N44 = ~last_r[1];
  assign N45 = ~reqs_i[3];
  assign N110 = grants_en_i & N46 & (last_r[1] & reqs_i[3]);
  assign N46 = ~last_r[0];
  assign N111 = grants_en_i & reqs_i[0] & (N47 & last_r[1]) & N48;
  assign N47 = ~last_r[0];
  assign N48 = ~reqs_i[3];
  assign N49 = grants_en_i & N53;
  assign N50 = N49 & reqs_i[1];
  assign N51 = N50 & N54;
  assign N52 = N51 & last_r[1];
  assign N112 = N52 & N55;
  assign N53 = ~reqs_i[0];
  assign N54 = ~last_r[0];
  assign N55 = ~reqs_i[3];
  assign N56 = grants_en_i & N61;
  assign N57 = N56 & N62;
  assign N58 = N57 & N63;
  assign N59 = N58 & reqs_i[2];
  assign N60 = N59 & last_r[1];
  assign N113 = N60 & N64;
  assign N61 = ~reqs_i[0];
  assign N62 = ~reqs_i[1];
  assign N63 = ~last_r[0];
  assign N64 = ~reqs_i[3];
  assign N114 = grants_en_i & reqs_i[0] & (last_r[0] & last_r[1]);
  assign N115 = grants_en_i & N65 & (reqs_i[1] & last_r[0]) & last_r[1];
  assign N65 = ~reqs_i[0];
  assign N66 = grants_en_i & N70;
  assign N67 = N66 & N71;
  assign N68 = N67 & last_r[0];
  assign N69 = N68 & reqs_i[2];
  assign N116 = N69 & last_r[1];
  assign N70 = ~reqs_i[0];
  assign N71 = ~reqs_i[1];
  assign N72 = grants_en_i & N77;
  assign N73 = N72 & N78;
  assign N74 = N73 & last_r[0];
  assign N75 = N74 & N79;
  assign N76 = N75 & last_r[1];
  assign N117 = N76 & reqs_i[3];
  assign N77 = ~reqs_i[0];
  assign N78 = ~reqs_i[1];
  assign N79 = ~reqs_i[2];
  assign grants_o = (N80)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N81)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N82)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N83)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N84)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N85)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N86)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N87)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N88)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N89)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N90)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N91)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N92)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N93)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N94)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N95)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N96)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N97)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N80 = N100;
  assign N81 = N101;
  assign N82 = N102;
  assign N83 = N103;
  assign N84 = N104;
  assign N85 = N105;
  assign N86 = N106;
  assign N87 = N107;
  assign N88 = N108;
  assign N89 = N109;
  assign N90 = N110;
  assign N91 = N111;
  assign N92 = N112;
  assign N93 = N113;
  assign N94 = N114;
  assign N95 = N115;
  assign N96 = N116;
  assign N97 = N117;
  assign tag_o = (N80)? { 1'b0, 1'b0 } : 
                 (N81)? { 1'b0, 1'b0 } : 
                 (N82)? { 1'b0, 1'b1 } : 
                 (N83)? { 1'b1, 1'b0 } : 
                 (N84)? { 1'b1, 1'b1 } : 
                 (N85)? { 1'b0, 1'b0 } : 
                 (N86)? { 1'b1, 1'b0 } : 
                 (N87)? { 1'b1, 1'b1 } : 
                 (N88)? { 1'b0, 1'b0 } : 
                 (N89)? { 1'b0, 1'b1 } : 
                 (N90)? { 1'b1, 1'b1 } : 
                 (N91)? { 1'b0, 1'b0 } : 
                 (N92)? { 1'b0, 1'b1 } : 
                 (N93)? { 1'b1, 1'b0 } : 
                 (N94)? { 1'b0, 1'b0 } : 
                 (N95)? { 1'b0, 1'b1 } : 
                 (N96)? { 1'b1, 1'b0 } : 
                 (N97)? { 1'b1, 1'b1 } : 1'b0;
  assign { N121, N120 } = (N98)? { 1'b0, 1'b0 } : 
                          (N99)? tag_o : 1'b0;
  assign N98 = reset_i;
  assign N99 = N119;
  assign v_o = N126 & grants_en_i;
  assign N126 = N125 | reqs_i[0];
  assign N125 = N124 | reqs_i[1];
  assign N124 = reqs_i[3] | reqs_i[2];
  assign N118 = ~yumi_i;
  assign N119 = ~reset_i;
  assign N122 = N118 & N119;
  assign N123 = ~N122;

endmodule