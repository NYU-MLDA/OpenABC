module ras_DEPTH2
(
  clk_i,
  rst_ni,
  push_i,
  pop_i,
  data_i,
  data_o
);

  input [63:0] data_i;
  output [64:0] data_o;
  input clk_i;
  input rst_ni;
  input push_i;
  input pop_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  wire [129:0] stack_d;
  reg stack_q_1__valid_,stack_q_1__ra__63_,stack_q_1__ra__62_,stack_q_1__ra__61_,
  stack_q_1__ra__60_,stack_q_1__ra__59_,stack_q_1__ra__58_,stack_q_1__ra__57_,
  stack_q_1__ra__56_,stack_q_1__ra__55_,stack_q_1__ra__54_,stack_q_1__ra__53_,
  stack_q_1__ra__52_,stack_q_1__ra__51_,stack_q_1__ra__50_,stack_q_1__ra__49_,
  stack_q_1__ra__48_,stack_q_1__ra__47_,stack_q_1__ra__46_,stack_q_1__ra__45_,stack_q_1__ra__44_,
  stack_q_1__ra__43_,stack_q_1__ra__42_,stack_q_1__ra__41_,stack_q_1__ra__40_,
  stack_q_1__ra__39_,stack_q_1__ra__38_,stack_q_1__ra__37_,stack_q_1__ra__36_,
  stack_q_1__ra__35_,stack_q_1__ra__34_,stack_q_1__ra__33_,stack_q_1__ra__32_,
  stack_q_1__ra__31_,stack_q_1__ra__30_,stack_q_1__ra__29_,stack_q_1__ra__28_,
  stack_q_1__ra__27_,stack_q_1__ra__26_,stack_q_1__ra__25_,stack_q_1__ra__24_,stack_q_1__ra__23_,
  stack_q_1__ra__22_,stack_q_1__ra__21_,stack_q_1__ra__20_,stack_q_1__ra__19_,
  stack_q_1__ra__18_,stack_q_1__ra__17_,stack_q_1__ra__16_,stack_q_1__ra__15_,
  stack_q_1__ra__14_,stack_q_1__ra__13_,stack_q_1__ra__12_,stack_q_1__ra__11_,
  stack_q_1__ra__10_,stack_q_1__ra__9_,stack_q_1__ra__8_,stack_q_1__ra__7_,stack_q_1__ra__6_,
  stack_q_1__ra__5_,stack_q_1__ra__4_,stack_q_1__ra__3_,stack_q_1__ra__2_,
  stack_q_1__ra__1_,stack_q_1__ra__0_;
  reg [64:0] data_o;

  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__valid_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__valid_ <= stack_d[129];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__63_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__63_ <= stack_d[128];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__62_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__62_ <= stack_d[127];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__61_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__61_ <= stack_d[126];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__60_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__60_ <= stack_d[125];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__59_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__59_ <= stack_d[124];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__58_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__58_ <= stack_d[123];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__57_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__57_ <= stack_d[122];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__56_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__56_ <= stack_d[121];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__55_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__55_ <= stack_d[120];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__54_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__54_ <= stack_d[119];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__53_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__53_ <= stack_d[118];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__52_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__52_ <= stack_d[117];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__51_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__51_ <= stack_d[116];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__50_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__50_ <= stack_d[115];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__49_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__49_ <= stack_d[114];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__48_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__48_ <= stack_d[113];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__47_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__47_ <= stack_d[112];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__46_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__46_ <= stack_d[111];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__45_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__45_ <= stack_d[110];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__44_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__44_ <= stack_d[109];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__43_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__43_ <= stack_d[108];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__42_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__42_ <= stack_d[107];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__41_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__41_ <= stack_d[106];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__40_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__40_ <= stack_d[105];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__39_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__39_ <= stack_d[104];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__38_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__38_ <= stack_d[103];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__37_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__37_ <= stack_d[102];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__36_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__36_ <= stack_d[101];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__35_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__35_ <= stack_d[100];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__34_ <= 1'b0;
    end else if(N8) begin
      stack_q_1__ra__34_ <= stack_d[99];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__33_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__33_ <= stack_d[98];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__32_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__32_ <= stack_d[97];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__31_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__31_ <= stack_d[96];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__30_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__30_ <= stack_d[95];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__29_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__29_ <= stack_d[94];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__28_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__28_ <= stack_d[93];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__27_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__27_ <= stack_d[92];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__26_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__26_ <= stack_d[91];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__25_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__25_ <= stack_d[90];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__24_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__24_ <= stack_d[89];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__23_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__23_ <= stack_d[88];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__22_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__22_ <= stack_d[87];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__21_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__21_ <= stack_d[86];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__20_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__20_ <= stack_d[85];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__19_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__19_ <= stack_d[84];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__18_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__18_ <= stack_d[83];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__17_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__17_ <= stack_d[82];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__16_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__16_ <= stack_d[81];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__15_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__15_ <= stack_d[80];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__14_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__14_ <= stack_d[79];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__13_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__13_ <= stack_d[78];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__12_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__12_ <= stack_d[77];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__11_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__11_ <= stack_d[76];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__10_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__10_ <= stack_d[75];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__9_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__9_ <= stack_d[74];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__8_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__8_ <= stack_d[73];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__7_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__7_ <= stack_d[72];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__6_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__6_ <= stack_d[71];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__5_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__5_ <= stack_d[70];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__4_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__4_ <= stack_d[69];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__3_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__3_ <= stack_d[68];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__2_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__2_ <= stack_d[67];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__1_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__1_ <= stack_d[66];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      stack_q_1__ra__0_ <= 1'b0;
    end else if(N6) begin
      stack_q_1__ra__0_ <= stack_d[65];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[64] <= 1'b0;
    end else if(N6) begin
      data_o[64] <= stack_d[64];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[63] <= 1'b0;
    end else if(N6) begin
      data_o[63] <= stack_d[63];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[62] <= 1'b0;
    end else if(N6) begin
      data_o[62] <= stack_d[62];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[61] <= 1'b0;
    end else if(N6) begin
      data_o[61] <= stack_d[61];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[60] <= 1'b0;
    end else if(N6) begin
      data_o[60] <= stack_d[60];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[59] <= 1'b0;
    end else if(N6) begin
      data_o[59] <= stack_d[59];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[58] <= 1'b0;
    end else if(N6) begin
      data_o[58] <= stack_d[58];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[57] <= 1'b0;
    end else if(N6) begin
      data_o[57] <= stack_d[57];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[56] <= 1'b0;
    end else if(N6) begin
      data_o[56] <= stack_d[56];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[55] <= 1'b0;
    end else if(N6) begin
      data_o[55] <= stack_d[55];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[54] <= 1'b0;
    end else if(N6) begin
      data_o[54] <= stack_d[54];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[53] <= 1'b0;
    end else if(N6) begin
      data_o[53] <= stack_d[53];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[52] <= 1'b0;
    end else if(N6) begin
      data_o[52] <= stack_d[52];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[51] <= 1'b0;
    end else if(N6) begin
      data_o[51] <= stack_d[51];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[50] <= 1'b0;
    end else if(N6) begin
      data_o[50] <= stack_d[50];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[49] <= 1'b0;
    end else if(N6) begin
      data_o[49] <= stack_d[49];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[48] <= 1'b0;
    end else if(N6) begin
      data_o[48] <= stack_d[48];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[47] <= 1'b0;
    end else if(N6) begin
      data_o[47] <= stack_d[47];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[46] <= 1'b0;
    end else if(N6) begin
      data_o[46] <= stack_d[46];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[45] <= 1'b0;
    end else if(N6) begin
      data_o[45] <= stack_d[45];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[44] <= 1'b0;
    end else if(N6) begin
      data_o[44] <= stack_d[44];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[43] <= 1'b0;
    end else if(N6) begin
      data_o[43] <= stack_d[43];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[42] <= 1'b0;
    end else if(N6) begin
      data_o[42] <= stack_d[42];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[41] <= 1'b0;
    end else if(N6) begin
      data_o[41] <= stack_d[41];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[40] <= 1'b0;
    end else if(N6) begin
      data_o[40] <= stack_d[40];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[39] <= 1'b0;
    end else if(N6) begin
      data_o[39] <= stack_d[39];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[38] <= 1'b0;
    end else if(N6) begin
      data_o[38] <= stack_d[38];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[37] <= 1'b0;
    end else if(N6) begin
      data_o[37] <= stack_d[37];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[36] <= 1'b0;
    end else if(N6) begin
      data_o[36] <= stack_d[36];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[35] <= 1'b0;
    end else if(N6) begin
      data_o[35] <= stack_d[35];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[34] <= 1'b0;
    end else if(N6) begin
      data_o[34] <= stack_d[34];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[33] <= 1'b0;
    end else if(N6) begin
      data_o[33] <= stack_d[33];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[32] <= 1'b0;
    end else if(N6) begin
      data_o[32] <= stack_d[32];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[31] <= 1'b0;
    end else if(N6) begin
      data_o[31] <= stack_d[31];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[30] <= 1'b0;
    end else if(N6) begin
      data_o[30] <= stack_d[30];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[29] <= 1'b0;
    end else if(N6) begin
      data_o[29] <= stack_d[29];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[28] <= 1'b0;
    end else if(N6) begin
      data_o[28] <= stack_d[28];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[27] <= 1'b0;
    end else if(N6) begin
      data_o[27] <= stack_d[27];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[26] <= 1'b0;
    end else if(N6) begin
      data_o[26] <= stack_d[26];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[25] <= 1'b0;
    end else if(N6) begin
      data_o[25] <= stack_d[25];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[24] <= 1'b0;
    end else if(N6) begin
      data_o[24] <= stack_d[24];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[23] <= 1'b0;
    end else if(N6) begin
      data_o[23] <= stack_d[23];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[22] <= 1'b0;
    end else if(N6) begin
      data_o[22] <= stack_d[22];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[21] <= 1'b0;
    end else if(N6) begin
      data_o[21] <= stack_d[21];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[20] <= 1'b0;
    end else if(N6) begin
      data_o[20] <= stack_d[20];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[19] <= 1'b0;
    end else if(N6) begin
      data_o[19] <= stack_d[19];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[18] <= 1'b0;
    end else if(N6) begin
      data_o[18] <= stack_d[18];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[17] <= 1'b0;
    end else if(N6) begin
      data_o[17] <= stack_d[17];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[16] <= 1'b0;
    end else if(N6) begin
      data_o[16] <= stack_d[16];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[15] <= 1'b0;
    end else if(N6) begin
      data_o[15] <= stack_d[15];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[14] <= 1'b0;
    end else if(N6) begin
      data_o[14] <= stack_d[14];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[13] <= 1'b0;
    end else if(N6) begin
      data_o[13] <= stack_d[13];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[12] <= 1'b0;
    end else if(N6) begin
      data_o[12] <= stack_d[12];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[11] <= 1'b0;
    end else if(N6) begin
      data_o[11] <= stack_d[11];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[10] <= 1'b0;
    end else if(N6) begin
      data_o[10] <= stack_d[10];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[9] <= 1'b0;
    end else if(N6) begin
      data_o[9] <= stack_d[9];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[8] <= 1'b0;
    end else if(N6) begin
      data_o[8] <= stack_d[8];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[7] <= 1'b0;
    end else if(N6) begin
      data_o[7] <= stack_d[7];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[6] <= 1'b0;
    end else if(N6) begin
      data_o[6] <= stack_d[6];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[5] <= 1'b0;
    end else if(N6) begin
      data_o[5] <= stack_d[5];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[4] <= 1'b0;
    end else if(N6) begin
      data_o[4] <= stack_d[4];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[3] <= 1'b0;
    end else if(N6) begin
      data_o[3] <= stack_d[3];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[2] <= 1'b0;
    end else if(N6) begin
      data_o[2] <= stack_d[2];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[1] <= 1'b0;
    end else if(N6) begin
      data_o[1] <= stack_d[1];
    end 
  end


  always @(posedge clk_i or posedge N4) begin
    if(N4) begin
      data_o[0] <= 1'b0;
    end else if(N6) begin
      data_o[0] <= stack_d[0];
    end 
  end

  assign stack_d = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, stack_q_1__valid_, stack_q_1__ra__63_, stack_q_1__ra__62_, stack_q_1__ra__61_, stack_q_1__ra__60_, stack_q_1__ra__59_, stack_q_1__ra__58_, stack_q_1__ra__57_, stack_q_1__ra__56_, stack_q_1__ra__55_, stack_q_1__ra__54_, stack_q_1__ra__53_, stack_q_1__ra__52_, stack_q_1__ra__51_, stack_q_1__ra__50_, stack_q_1__ra__49_, stack_q_1__ra__48_, stack_q_1__ra__47_, stack_q_1__ra__46_, stack_q_1__ra__45_, stack_q_1__ra__44_, stack_q_1__ra__43_, stack_q_1__ra__42_, stack_q_1__ra__41_, stack_q_1__ra__40_, stack_q_1__ra__39_, stack_q_1__ra__38_, stack_q_1__ra__37_, stack_q_1__ra__36_, stack_q_1__ra__35_, stack_q_1__ra__34_, stack_q_1__ra__33_, stack_q_1__ra__32_, stack_q_1__ra__31_, stack_q_1__ra__30_, stack_q_1__ra__29_, stack_q_1__ra__28_, stack_q_1__ra__27_, stack_q_1__ra__26_, stack_q_1__ra__25_, stack_q_1__ra__24_, stack_q_1__ra__23_, stack_q_1__ra__22_, stack_q_1__ra__21_, stack_q_1__ra__20_, stack_q_1__ra__19_, stack_q_1__ra__18_, stack_q_1__ra__17_, stack_q_1__ra__16_, stack_q_1__ra__15_, stack_q_1__ra__14_, stack_q_1__ra__13_, stack_q_1__ra__12_, stack_q_1__ra__11_, stack_q_1__ra__10_, stack_q_1__ra__9_, stack_q_1__ra__8_, stack_q_1__ra__7_, stack_q_1__ra__6_, stack_q_1__ra__5_, stack_q_1__ra__4_, stack_q_1__ra__3_, stack_q_1__ra__2_, stack_q_1__ra__1_, stack_q_1__ra__0_ } : 
                   (N1)? { data_o, 1'b1, data_i } : 1'b0;
  assign N0 = pop_i;
  assign N1 = N3;
  assign N2 = ~push_i;
  assign N3 = ~pop_i;
  assign N4 = ~rst_ni;
  assign N5 = N2 & N3;
  assign N6 = ~N5;
  assign N7 = N2 & N3;
  assign N8 = ~N7;

endmodule