module multiplier
(
  clk_i,
  rst_ni,
  trans_id_i,
  mult_valid_i,
  operator_i,
  operand_a_i,
  operand_b_i,
  result_o,
  mult_valid_o,
  mult_ready_o,
  mult_trans_id_o
);

  input [2:0] trans_id_i;
  input [6:0] operator_i;
  input [63:0] operand_a_i;
  input [63:0] operand_b_i;
  output [63:0] result_o;
  output [2:0] mult_trans_id_o;
  input clk_i;
  input rst_ni;
  input mult_valid_i;
  output mult_valid_o;
  output mult_ready_o;
  wire [63:0] result_o;
  wire mult_ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,mult_valid,sign_b,N24,N25,sign_a,N26,N27,N28,N29,N30,N31,N32,
  N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,
  N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,
  N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,
  N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,
  N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,
  N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,
  N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,
  N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,
  N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,
  N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,
  N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,
  N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,
  N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,
  N254,N255;
  wire [127:0] mult_result_d;
  reg [127:0] mult_result_q;
  reg mult_valid_o;
  reg [2:0] mult_trans_id_o;
  reg [6:0] operator_q;
  assign mult_ready_o = 1'b1;
  assign N8 = N233 | operator_i[5];
  assign N9 = operator_i[4] | operator_i[3];
  assign N10 = N8 | N9;
  assign N13 = operator_i[2] | N235;
  assign N14 = N13 | N12;
  assign N15 = N234 | operator_i[1];
  assign N16 = N15 | operator_i[0];
  assign N17 = N15 | N12;
  assign N18 = N234 | N235;
  assign N19 = N18 | operator_i[0];
  assign N20 = operator_i[2] & operator_i[1];
  assign N21 = N20 & operator_i[0];
  assign N156 = N154 | operator_q[5];
  assign N157 = operator_q[4] | operator_q[3];
  assign N158 = N156 | N157;
  assign N159 = N158 | N155;
  assign N163 = N161 & N162;
  assign N164 = operator_q[1] | N162;
  assign N165 = N161 | operator_q[0];
  assign N167 = operator_q[1] & operator_q[0];

  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[127] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[127] <= mult_result_d[127];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[126] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[126] <= mult_result_d[126];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[125] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[125] <= mult_result_d[125];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[124] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[124] <= mult_result_d[124];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[123] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[123] <= mult_result_d[123];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[122] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[122] <= mult_result_d[122];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[121] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[121] <= mult_result_d[121];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[120] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[120] <= mult_result_d[120];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[119] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[119] <= mult_result_d[119];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[118] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[118] <= mult_result_d[118];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[117] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[117] <= mult_result_d[117];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[116] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[116] <= mult_result_d[116];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[115] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[115] <= mult_result_d[115];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[114] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[114] <= mult_result_d[114];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[113] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[113] <= mult_result_d[113];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[112] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[112] <= mult_result_d[112];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[111] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[111] <= mult_result_d[111];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[110] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[110] <= mult_result_d[110];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[109] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[109] <= mult_result_d[109];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[108] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[108] <= mult_result_d[108];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[107] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[107] <= mult_result_d[107];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[106] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[106] <= mult_result_d[106];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[105] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[105] <= mult_result_d[105];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[104] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[104] <= mult_result_d[104];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[103] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[103] <= mult_result_d[103];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[102] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[102] <= mult_result_d[102];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[101] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[101] <= mult_result_d[101];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[100] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[100] <= mult_result_d[100];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[99] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[99] <= mult_result_d[99];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[98] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[98] <= mult_result_d[98];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[97] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[97] <= mult_result_d[97];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[96] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[96] <= mult_result_d[96];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[95] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[95] <= mult_result_d[95];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[94] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[94] <= mult_result_d[94];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[93] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[93] <= mult_result_d[93];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[92] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[92] <= mult_result_d[92];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[91] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[91] <= mult_result_d[91];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[90] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[90] <= mult_result_d[90];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[89] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[89] <= mult_result_d[89];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[88] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[88] <= mult_result_d[88];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[87] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[87] <= mult_result_d[87];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[86] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[86] <= mult_result_d[86];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[85] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[85] <= mult_result_d[85];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[84] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[84] <= mult_result_d[84];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[83] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[83] <= mult_result_d[83];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[82] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[82] <= mult_result_d[82];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[81] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[81] <= mult_result_d[81];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[80] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[80] <= mult_result_d[80];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[79] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[79] <= mult_result_d[79];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[78] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[78] <= mult_result_d[78];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[77] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[77] <= mult_result_d[77];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[76] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[76] <= mult_result_d[76];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[75] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[75] <= mult_result_d[75];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[74] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[74] <= mult_result_d[74];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[73] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[73] <= mult_result_d[73];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[72] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[72] <= mult_result_d[72];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[71] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[71] <= mult_result_d[71];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[70] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[70] <= mult_result_d[70];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[69] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[69] <= mult_result_d[69];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[68] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[68] <= mult_result_d[68];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[67] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[67] <= mult_result_d[67];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[66] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[66] <= mult_result_d[66];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[65] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[65] <= mult_result_d[65];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[64] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[64] <= mult_result_d[64];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[63] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[63] <= mult_result_d[63];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[62] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[62] <= mult_result_d[62];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[61] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[61] <= mult_result_d[61];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[60] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[60] <= mult_result_d[60];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[59] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[59] <= mult_result_d[59];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[58] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[58] <= mult_result_d[58];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[57] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[57] <= mult_result_d[57];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[56] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[56] <= mult_result_d[56];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[55] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[55] <= mult_result_d[55];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[54] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[54] <= mult_result_d[54];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[53] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[53] <= mult_result_d[53];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[52] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[52] <= mult_result_d[52];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[51] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[51] <= mult_result_d[51];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[50] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[50] <= mult_result_d[50];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[49] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[49] <= mult_result_d[49];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[48] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[48] <= mult_result_d[48];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[47] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[47] <= mult_result_d[47];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[46] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[46] <= mult_result_d[46];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[45] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[45] <= mult_result_d[45];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[44] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[44] <= mult_result_d[44];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[43] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[43] <= mult_result_d[43];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[42] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[42] <= mult_result_d[42];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[41] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[41] <= mult_result_d[41];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[40] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[40] <= mult_result_d[40];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[39] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[39] <= mult_result_d[39];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[38] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[38] <= mult_result_d[38];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[37] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[37] <= mult_result_d[37];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[36] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[36] <= mult_result_d[36];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[35] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[35] <= mult_result_d[35];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[34] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[34] <= mult_result_d[34];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[33] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[33] <= mult_result_d[33];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[32] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[32] <= mult_result_d[32];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[31] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[31] <= mult_result_d[31];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[30] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[30] <= mult_result_d[30];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[29] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[29] <= mult_result_d[29];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[28] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[28] <= mult_result_d[28];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[27] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[27] <= mult_result_d[27];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[26] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[26] <= mult_result_d[26];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[25] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[25] <= mult_result_d[25];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[24] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[24] <= mult_result_d[24];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[23] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[23] <= mult_result_d[23];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[22] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[22] <= mult_result_d[22];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[21] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[21] <= mult_result_d[21];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[20] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[20] <= mult_result_d[20];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[19] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[19] <= mult_result_d[19];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[18] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[18] <= mult_result_d[18];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[17] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[17] <= mult_result_d[17];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[16] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[16] <= mult_result_d[16];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[15] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[15] <= mult_result_d[15];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[14] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[14] <= mult_result_d[14];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[13] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[13] <= mult_result_d[13];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[12] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[12] <= mult_result_d[12];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[11] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[11] <= mult_result_d[11];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[10] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[10] <= mult_result_d[10];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[9] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[9] <= mult_result_d[9];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[8] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[8] <= mult_result_d[8];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[7] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[7] <= mult_result_d[7];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[6] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[6] <= mult_result_d[6];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[5] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[5] <= mult_result_d[5];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[4] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[4] <= mult_result_d[4];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[3] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[3] <= mult_result_d[3];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[2] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[2] <= mult_result_d[2];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[1] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[1] <= mult_result_d[1];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_result_q[0] <= 1'b0;
    end else if(1'b1) begin
      mult_result_q[0] <= mult_result_d[0];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_valid_o <= 1'b0;
    end else if(1'b1) begin
      mult_valid_o <= mult_valid;
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_trans_id_o[2] <= 1'b0;
    end else if(1'b1) begin
      mult_trans_id_o[2] <= trans_id_i[2];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_trans_id_o[1] <= 1'b0;
    end else if(1'b1) begin
      mult_trans_id_o[1] <= trans_id_i[1];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      mult_trans_id_o[0] <= 1'b0;
    end else if(1'b1) begin
      mult_trans_id_o[0] <= trans_id_i[0];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[6] <= 1'b1;
    end else if(1'b1) begin
      operator_q[6] <= operator_i[6];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[5] <= 1'b0;
    end else if(1'b1) begin
      operator_q[5] <= operator_i[5];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[4] <= 1'b0;
    end else if(1'b1) begin
      operator_q[4] <= operator_i[4];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[3] <= 1'b0;
    end else if(1'b1) begin
      operator_q[3] <= operator_i[3];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[2] <= 1'b0;
    end else if(1'b1) begin
      operator_q[2] <= operator_i[2];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[1] <= 1'b1;
    end else if(1'b1) begin
      operator_q[1] <= operator_i[1];
    end 
  end


  always @(posedge clk_i or posedge N232) begin
    if(N232) begin
      operator_q[0] <= 1'b1;
    end else if(1'b1) begin
      operator_q[0] <= operator_i[0];
    end 
  end

  assign N233 = ~operator_i[6];
  assign N234 = ~operator_i[2];
  assign N235 = ~operator_i[1];
  assign N236 = operator_i[5] | N233;
  assign N237 = operator_i[4] | N236;
  assign N238 = operator_i[3] | N237;
  assign N239 = N234 | N238;
  assign N240 = N235 | N239;
  assign N241 = operator_i[0] | N240;
  assign N242 = ~N241;
  assign N243 = operator_i[1] | N239;
  assign N244 = operator_i[0] | N243;
  assign N245 = ~N244;
  assign mult_result_d = $signed({ N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, operand_a_i }) * $signed({ N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, operand_b_i });
  assign N23 = (N0)? N22 : 
               (N1)? 1'b0 : 1'b0;
  assign N0 = N11;
  assign N1 = N10;
  assign sign_a = (N2)? 1'b1 : 
                  (N3)? 1'b1 : 
                  (N25)? 1'b0 : 1'b0;
  assign N2 = N245;
  assign N3 = N242;
  assign sign_b = (N2)? 1'b1 : 
                  (N3)? 1'b0 : 
                  (N25)? 1'b0 : 1'b0;
  assign { N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168 } = (N4)? mult_result_q[127:64] : 
                                                                                                                                                                                                                                                                                                                                                                                                              (N5)? { mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:31], mult_result_q[31:0] } : 1'b0;
  assign N4 = N166;
  assign N5 = N167;
  assign result_o = (N6)? { N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168 } : 
                    (N7)? mult_result_q[63:0] : 1'b0;
  assign N6 = N160;
  assign N7 = N159;
  assign N11 = ~N10;
  assign N12 = ~operator_i[0];
  assign N22 = N252 | N21;
  assign N252 = N250 | N251;
  assign N250 = N248 | N249;
  assign N248 = N246 | N247;
  assign N246 = ~N14;
  assign N247 = ~N16;
  assign N249 = ~N17;
  assign N251 = ~N19;
  assign mult_valid = mult_valid_i & N23;
  assign N24 = N242 | N245;
  assign N25 = ~N24;
  assign N26 = operand_a_i[63] & sign_a;
  assign N27 = operand_a_i[63] & sign_a;
  assign N28 = operand_a_i[63] & sign_a;
  assign N29 = operand_a_i[63] & sign_a;
  assign N30 = operand_a_i[63] & sign_a;
  assign N31 = operand_a_i[63] & sign_a;
  assign N32 = operand_a_i[63] & sign_a;
  assign N33 = operand_a_i[63] & sign_a;
  assign N34 = operand_a_i[63] & sign_a;
  assign N35 = operand_a_i[63] & sign_a;
  assign N36 = operand_a_i[63] & sign_a;
  assign N37 = operand_a_i[63] & sign_a;
  assign N38 = operand_a_i[63] & sign_a;
  assign N39 = operand_a_i[63] & sign_a;
  assign N40 = operand_a_i[63] & sign_a;
  assign N41 = operand_a_i[63] & sign_a;
  assign N42 = operand_a_i[63] & sign_a;
  assign N43 = operand_a_i[63] & sign_a;
  assign N44 = operand_a_i[63] & sign_a;
  assign N45 = operand_a_i[63] & sign_a;
  assign N46 = operand_a_i[63] & sign_a;
  assign N47 = operand_a_i[63] & sign_a;
  assign N48 = operand_a_i[63] & sign_a;
  assign N49 = operand_a_i[63] & sign_a;
  assign N50 = operand_a_i[63] & sign_a;
  assign N51 = operand_a_i[63] & sign_a;
  assign N52 = operand_a_i[63] & sign_a;
  assign N53 = operand_a_i[63] & sign_a;
  assign N54 = operand_a_i[63] & sign_a;
  assign N55 = operand_a_i[63] & sign_a;
  assign N56 = operand_a_i[63] & sign_a;
  assign N57 = operand_a_i[63] & sign_a;
  assign N58 = operand_a_i[63] & sign_a;
  assign N59 = operand_a_i[63] & sign_a;
  assign N60 = operand_a_i[63] & sign_a;
  assign N61 = operand_a_i[63] & sign_a;
  assign N62 = operand_a_i[63] & sign_a;
  assign N63 = operand_a_i[63] & sign_a;
  assign N64 = operand_a_i[63] & sign_a;
  assign N65 = operand_a_i[63] & sign_a;
  assign N66 = operand_a_i[63] & sign_a;
  assign N67 = operand_a_i[63] & sign_a;
  assign N68 = operand_a_i[63] & sign_a;
  assign N69 = operand_a_i[63] & sign_a;
  assign N70 = operand_a_i[63] & sign_a;
  assign N71 = operand_a_i[63] & sign_a;
  assign N72 = operand_a_i[63] & sign_a;
  assign N73 = operand_a_i[63] & sign_a;
  assign N74 = operand_a_i[63] & sign_a;
  assign N75 = operand_a_i[63] & sign_a;
  assign N76 = operand_a_i[63] & sign_a;
  assign N77 = operand_a_i[63] & sign_a;
  assign N78 = operand_a_i[63] & sign_a;
  assign N79 = operand_a_i[63] & sign_a;
  assign N80 = operand_a_i[63] & sign_a;
  assign N81 = operand_a_i[63] & sign_a;
  assign N82 = operand_a_i[63] & sign_a;
  assign N83 = operand_a_i[63] & sign_a;
  assign N84 = operand_a_i[63] & sign_a;
  assign N85 = operand_a_i[63] & sign_a;
  assign N86 = operand_a_i[63] & sign_a;
  assign N87 = operand_a_i[63] & sign_a;
  assign N88 = operand_a_i[63] & sign_a;
  assign N89 = operand_a_i[63] & sign_a;
  assign N90 = operand_b_i[63] & sign_b;
  assign N91 = operand_b_i[63] & sign_b;
  assign N92 = operand_b_i[63] & sign_b;
  assign N93 = operand_b_i[63] & sign_b;
  assign N94 = operand_b_i[63] & sign_b;
  assign N95 = operand_b_i[63] & sign_b;
  assign N96 = operand_b_i[63] & sign_b;
  assign N97 = operand_b_i[63] & sign_b;
  assign N98 = operand_b_i[63] & sign_b;
  assign N99 = operand_b_i[63] & sign_b;
  assign N100 = operand_b_i[63] & sign_b;
  assign N101 = operand_b_i[63] & sign_b;
  assign N102 = operand_b_i[63] & sign_b;
  assign N103 = operand_b_i[63] & sign_b;
  assign N104 = operand_b_i[63] & sign_b;
  assign N105 = operand_b_i[63] & sign_b;
  assign N106 = operand_b_i[63] & sign_b;
  assign N107 = operand_b_i[63] & sign_b;
  assign N108 = operand_b_i[63] & sign_b;
  assign N109 = operand_b_i[63] & sign_b;
  assign N110 = operand_b_i[63] & sign_b;
  assign N111 = operand_b_i[63] & sign_b;
  assign N112 = operand_b_i[63] & sign_b;
  assign N113 = operand_b_i[63] & sign_b;
  assign N114 = operand_b_i[63] & sign_b;
  assign N115 = operand_b_i[63] & sign_b;
  assign N116 = operand_b_i[63] & sign_b;
  assign N117 = operand_b_i[63] & sign_b;
  assign N118 = operand_b_i[63] & sign_b;
  assign N119 = operand_b_i[63] & sign_b;
  assign N120 = operand_b_i[63] & sign_b;
  assign N121 = operand_b_i[63] & sign_b;
  assign N122 = operand_b_i[63] & sign_b;
  assign N123 = operand_b_i[63] & sign_b;
  assign N124 = operand_b_i[63] & sign_b;
  assign N125 = operand_b_i[63] & sign_b;
  assign N126 = operand_b_i[63] & sign_b;
  assign N127 = operand_b_i[63] & sign_b;
  assign N128 = operand_b_i[63] & sign_b;
  assign N129 = operand_b_i[63] & sign_b;
  assign N130 = operand_b_i[63] & sign_b;
  assign N131 = operand_b_i[63] & sign_b;
  assign N132 = operand_b_i[63] & sign_b;
  assign N133 = operand_b_i[63] & sign_b;
  assign N134 = operand_b_i[63] & sign_b;
  assign N135 = operand_b_i[63] & sign_b;
  assign N136 = operand_b_i[63] & sign_b;
  assign N137 = operand_b_i[63] & sign_b;
  assign N138 = operand_b_i[63] & sign_b;
  assign N139 = operand_b_i[63] & sign_b;
  assign N140 = operand_b_i[63] & sign_b;
  assign N141 = operand_b_i[63] & sign_b;
  assign N142 = operand_b_i[63] & sign_b;
  assign N143 = operand_b_i[63] & sign_b;
  assign N144 = operand_b_i[63] & sign_b;
  assign N145 = operand_b_i[63] & sign_b;
  assign N146 = operand_b_i[63] & sign_b;
  assign N147 = operand_b_i[63] & sign_b;
  assign N148 = operand_b_i[63] & sign_b;
  assign N149 = operand_b_i[63] & sign_b;
  assign N150 = operand_b_i[63] & sign_b;
  assign N151 = operand_b_i[63] & sign_b;
  assign N152 = operand_b_i[63] & sign_b;
  assign N153 = operand_b_i[63] & sign_b;
  assign N154 = ~operator_q[6];
  assign N155 = ~operator_q[2];
  assign N160 = ~N159;
  assign N161 = ~operator_q[1];
  assign N162 = ~operator_q[0];
  assign N166 = N254 | N255;
  assign N254 = N163 | N253;
  assign N253 = ~N164;
  assign N255 = ~N165;
  assign N232 = ~rst_ni;

endmodule