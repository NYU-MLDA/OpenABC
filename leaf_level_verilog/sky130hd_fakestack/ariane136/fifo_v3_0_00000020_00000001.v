module fifo_v3_0_00000020_00000001
(
  clk_i,
  rst_ni,
  flush_i,
  testmode_i,
  full_o,
  empty_o,
  usage_o,
  data_i,
  push_i,
  data_o,
  pop_i
);

  output [0:0] usage_o;
  input [133:0] data_i;
  output [133:0] data_o;
  input clk_i;
  input rst_ni;
  input flush_i;
  input testmode_i;
  input push_i;
  input pop_i;
  output full_o;
  output empty_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,gate_clock,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,
  N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,
  N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,
  N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,
  N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N174,N175,N177,
  N178;
  wire [133:0] mem_n;
  reg [1:1] status_cnt_q;
  reg [0:0] usage_o,write_pointer_q;
  reg [133:0] data_o;

  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      status_cnt_q[1] <= 1'b0;
    end else if(N168) begin
      status_cnt_q[1] <= N161;
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      usage_o[0] <= 1'b0;
    end else if(N168) begin
      usage_o[0] <= N160;
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      write_pointer_q[0] <= 1'b0;
    end else if(N170) begin
      write_pointer_q[0] <= N159;
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[133] <= 1'b0;
    end else if(N162) begin
      data_o[133] <= mem_n[133];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[132] <= 1'b0;
    end else if(N162) begin
      data_o[132] <= mem_n[132];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[131] <= 1'b0;
    end else if(N162) begin
      data_o[131] <= mem_n[131];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[130] <= 1'b0;
    end else if(N162) begin
      data_o[130] <= mem_n[130];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[129] <= 1'b0;
    end else if(N162) begin
      data_o[129] <= mem_n[129];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[128] <= 1'b0;
    end else if(N162) begin
      data_o[128] <= mem_n[128];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[127] <= 1'b0;
    end else if(N162) begin
      data_o[127] <= mem_n[127];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[126] <= 1'b0;
    end else if(N162) begin
      data_o[126] <= mem_n[126];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[125] <= 1'b0;
    end else if(N162) begin
      data_o[125] <= mem_n[125];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[124] <= 1'b0;
    end else if(N162) begin
      data_o[124] <= mem_n[124];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[123] <= 1'b0;
    end else if(N162) begin
      data_o[123] <= mem_n[123];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[122] <= 1'b0;
    end else if(N162) begin
      data_o[122] <= mem_n[122];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[121] <= 1'b0;
    end else if(N162) begin
      data_o[121] <= mem_n[121];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[120] <= 1'b0;
    end else if(N162) begin
      data_o[120] <= mem_n[120];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[119] <= 1'b0;
    end else if(N162) begin
      data_o[119] <= mem_n[119];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[118] <= 1'b0;
    end else if(N162) begin
      data_o[118] <= mem_n[118];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[117] <= 1'b0;
    end else if(N162) begin
      data_o[117] <= mem_n[117];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[116] <= 1'b0;
    end else if(N162) begin
      data_o[116] <= mem_n[116];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[115] <= 1'b0;
    end else if(N162) begin
      data_o[115] <= mem_n[115];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[114] <= 1'b0;
    end else if(N162) begin
      data_o[114] <= mem_n[114];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[113] <= 1'b0;
    end else if(N162) begin
      data_o[113] <= mem_n[113];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[112] <= 1'b0;
    end else if(N162) begin
      data_o[112] <= mem_n[112];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[111] <= 1'b0;
    end else if(N162) begin
      data_o[111] <= mem_n[111];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[110] <= 1'b0;
    end else if(N162) begin
      data_o[110] <= mem_n[110];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[109] <= 1'b0;
    end else if(N162) begin
      data_o[109] <= mem_n[109];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[108] <= 1'b0;
    end else if(N162) begin
      data_o[108] <= mem_n[108];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[107] <= 1'b0;
    end else if(N162) begin
      data_o[107] <= mem_n[107];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[106] <= 1'b0;
    end else if(N162) begin
      data_o[106] <= mem_n[106];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[105] <= 1'b0;
    end else if(N162) begin
      data_o[105] <= mem_n[105];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[104] <= 1'b0;
    end else if(N162) begin
      data_o[104] <= mem_n[104];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[103] <= 1'b0;
    end else if(N162) begin
      data_o[103] <= mem_n[103];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[102] <= 1'b0;
    end else if(N162) begin
      data_o[102] <= mem_n[102];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[101] <= 1'b0;
    end else if(N162) begin
      data_o[101] <= mem_n[101];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[100] <= 1'b0;
    end else if(N162) begin
      data_o[100] <= mem_n[100];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[99] <= 1'b0;
    end else if(N162) begin
      data_o[99] <= mem_n[99];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[98] <= 1'b0;
    end else if(N162) begin
      data_o[98] <= mem_n[98];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[97] <= 1'b0;
    end else if(N162) begin
      data_o[97] <= mem_n[97];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[96] <= 1'b0;
    end else if(N162) begin
      data_o[96] <= mem_n[96];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[95] <= 1'b0;
    end else if(N162) begin
      data_o[95] <= mem_n[95];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[94] <= 1'b0;
    end else if(N162) begin
      data_o[94] <= mem_n[94];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[93] <= 1'b0;
    end else if(N162) begin
      data_o[93] <= mem_n[93];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[92] <= 1'b0;
    end else if(N162) begin
      data_o[92] <= mem_n[92];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[91] <= 1'b0;
    end else if(N162) begin
      data_o[91] <= mem_n[91];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[90] <= 1'b0;
    end else if(N162) begin
      data_o[90] <= mem_n[90];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[89] <= 1'b0;
    end else if(N162) begin
      data_o[89] <= mem_n[89];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[88] <= 1'b0;
    end else if(N162) begin
      data_o[88] <= mem_n[88];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[87] <= 1'b0;
    end else if(N162) begin
      data_o[87] <= mem_n[87];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[86] <= 1'b0;
    end else if(N162) begin
      data_o[86] <= mem_n[86];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[85] <= 1'b0;
    end else if(N162) begin
      data_o[85] <= mem_n[85];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[84] <= 1'b0;
    end else if(N162) begin
      data_o[84] <= mem_n[84];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[83] <= 1'b0;
    end else if(N162) begin
      data_o[83] <= mem_n[83];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[82] <= 1'b0;
    end else if(N162) begin
      data_o[82] <= mem_n[82];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[81] <= 1'b0;
    end else if(N162) begin
      data_o[81] <= mem_n[81];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[80] <= 1'b0;
    end else if(N162) begin
      data_o[80] <= mem_n[80];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[79] <= 1'b0;
    end else if(N162) begin
      data_o[79] <= mem_n[79];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[78] <= 1'b0;
    end else if(N162) begin
      data_o[78] <= mem_n[78];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[77] <= 1'b0;
    end else if(N162) begin
      data_o[77] <= mem_n[77];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[76] <= 1'b0;
    end else if(N162) begin
      data_o[76] <= mem_n[76];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[75] <= 1'b0;
    end else if(N162) begin
      data_o[75] <= mem_n[75];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[74] <= 1'b0;
    end else if(N162) begin
      data_o[74] <= mem_n[74];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[73] <= 1'b0;
    end else if(N162) begin
      data_o[73] <= mem_n[73];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[72] <= 1'b0;
    end else if(N162) begin
      data_o[72] <= mem_n[72];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[71] <= 1'b0;
    end else if(N162) begin
      data_o[71] <= mem_n[71];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[70] <= 1'b0;
    end else if(N162) begin
      data_o[70] <= mem_n[70];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[69] <= 1'b0;
    end else if(N162) begin
      data_o[69] <= mem_n[69];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[68] <= 1'b0;
    end else if(N162) begin
      data_o[68] <= mem_n[68];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[67] <= 1'b0;
    end else if(N162) begin
      data_o[67] <= mem_n[67];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[66] <= 1'b0;
    end else if(N162) begin
      data_o[66] <= mem_n[66];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[65] <= 1'b0;
    end else if(N162) begin
      data_o[65] <= mem_n[65];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[64] <= 1'b0;
    end else if(N162) begin
      data_o[64] <= mem_n[64];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[63] <= 1'b0;
    end else if(N162) begin
      data_o[63] <= mem_n[63];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[62] <= 1'b0;
    end else if(N162) begin
      data_o[62] <= mem_n[62];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[61] <= 1'b0;
    end else if(N162) begin
      data_o[61] <= mem_n[61];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[60] <= 1'b0;
    end else if(N162) begin
      data_o[60] <= mem_n[60];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[59] <= 1'b0;
    end else if(N162) begin
      data_o[59] <= mem_n[59];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[58] <= 1'b0;
    end else if(N162) begin
      data_o[58] <= mem_n[58];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[57] <= 1'b0;
    end else if(N162) begin
      data_o[57] <= mem_n[57];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[56] <= 1'b0;
    end else if(N162) begin
      data_o[56] <= mem_n[56];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[55] <= 1'b0;
    end else if(N162) begin
      data_o[55] <= mem_n[55];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[54] <= 1'b0;
    end else if(N162) begin
      data_o[54] <= mem_n[54];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[53] <= 1'b0;
    end else if(N162) begin
      data_o[53] <= mem_n[53];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[52] <= 1'b0;
    end else if(N162) begin
      data_o[52] <= mem_n[52];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[51] <= 1'b0;
    end else if(N162) begin
      data_o[51] <= mem_n[51];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[50] <= 1'b0;
    end else if(N162) begin
      data_o[50] <= mem_n[50];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[49] <= 1'b0;
    end else if(N162) begin
      data_o[49] <= mem_n[49];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[48] <= 1'b0;
    end else if(N162) begin
      data_o[48] <= mem_n[48];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[47] <= 1'b0;
    end else if(N162) begin
      data_o[47] <= mem_n[47];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[46] <= 1'b0;
    end else if(N162) begin
      data_o[46] <= mem_n[46];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[45] <= 1'b0;
    end else if(N162) begin
      data_o[45] <= mem_n[45];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[44] <= 1'b0;
    end else if(N162) begin
      data_o[44] <= mem_n[44];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[43] <= 1'b0;
    end else if(N162) begin
      data_o[43] <= mem_n[43];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[42] <= 1'b0;
    end else if(N162) begin
      data_o[42] <= mem_n[42];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[41] <= 1'b0;
    end else if(N162) begin
      data_o[41] <= mem_n[41];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[40] <= 1'b0;
    end else if(N162) begin
      data_o[40] <= mem_n[40];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[39] <= 1'b0;
    end else if(N162) begin
      data_o[39] <= mem_n[39];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[38] <= 1'b0;
    end else if(N162) begin
      data_o[38] <= mem_n[38];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[37] <= 1'b0;
    end else if(N162) begin
      data_o[37] <= mem_n[37];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[36] <= 1'b0;
    end else if(N162) begin
      data_o[36] <= mem_n[36];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[35] <= 1'b0;
    end else if(N162) begin
      data_o[35] <= mem_n[35];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[34] <= 1'b0;
    end else if(N162) begin
      data_o[34] <= mem_n[34];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[33] <= 1'b0;
    end else if(N162) begin
      data_o[33] <= mem_n[33];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[32] <= 1'b0;
    end else if(N162) begin
      data_o[32] <= mem_n[32];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[31] <= 1'b0;
    end else if(N162) begin
      data_o[31] <= mem_n[31];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[30] <= 1'b0;
    end else if(N162) begin
      data_o[30] <= mem_n[30];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[29] <= 1'b0;
    end else if(N162) begin
      data_o[29] <= mem_n[29];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[28] <= 1'b0;
    end else if(N162) begin
      data_o[28] <= mem_n[28];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[27] <= 1'b0;
    end else if(N162) begin
      data_o[27] <= mem_n[27];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[26] <= 1'b0;
    end else if(N162) begin
      data_o[26] <= mem_n[26];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[25] <= 1'b0;
    end else if(N162) begin
      data_o[25] <= mem_n[25];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[24] <= 1'b0;
    end else if(N162) begin
      data_o[24] <= mem_n[24];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[23] <= 1'b0;
    end else if(N162) begin
      data_o[23] <= mem_n[23];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[22] <= 1'b0;
    end else if(N162) begin
      data_o[22] <= mem_n[22];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[21] <= 1'b0;
    end else if(N162) begin
      data_o[21] <= mem_n[21];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[20] <= 1'b0;
    end else if(N162) begin
      data_o[20] <= mem_n[20];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[19] <= 1'b0;
    end else if(N162) begin
      data_o[19] <= mem_n[19];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[18] <= 1'b0;
    end else if(N162) begin
      data_o[18] <= mem_n[18];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[17] <= 1'b0;
    end else if(N162) begin
      data_o[17] <= mem_n[17];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[16] <= 1'b0;
    end else if(N162) begin
      data_o[16] <= mem_n[16];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[15] <= 1'b0;
    end else if(N162) begin
      data_o[15] <= mem_n[15];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[14] <= 1'b0;
    end else if(N162) begin
      data_o[14] <= mem_n[14];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[13] <= 1'b0;
    end else if(N162) begin
      data_o[13] <= mem_n[13];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[12] <= 1'b0;
    end else if(N162) begin
      data_o[12] <= mem_n[12];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[11] <= 1'b0;
    end else if(N162) begin
      data_o[11] <= mem_n[11];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[10] <= 1'b0;
    end else if(N162) begin
      data_o[10] <= mem_n[10];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[9] <= 1'b0;
    end else if(N162) begin
      data_o[9] <= mem_n[9];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[8] <= 1'b0;
    end else if(N162) begin
      data_o[8] <= mem_n[8];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[7] <= 1'b0;
    end else if(N162) begin
      data_o[7] <= mem_n[7];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[6] <= 1'b0;
    end else if(N162) begin
      data_o[6] <= mem_n[6];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[5] <= 1'b0;
    end else if(N162) begin
      data_o[5] <= mem_n[5];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[4] <= 1'b0;
    end else if(N162) begin
      data_o[4] <= mem_n[4];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[3] <= 1'b0;
    end else if(N162) begin
      data_o[3] <= mem_n[3];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[2] <= 1'b0;
    end else if(N162) begin
      data_o[2] <= mem_n[2];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[1] <= 1'b0;
    end else if(N162) begin
      data_o[1] <= mem_n[1];
    end 
  end


  always @(posedge clk_i or posedge N157) begin
    if(N157) begin
      data_o[0] <= 1'b0;
    end else if(N162) begin
      data_o[0] <= mem_n[0];
    end 
  end

  assign N171 = ~write_pointer_q[0];
  assign N172 = usage_o[0] | status_cnt_q[1];
  assign empty_o = ~N172;
  assign N174 = ~usage_o[0];
  assign N175 = N174 | status_cnt_q[1];
  assign full_o = ~N175;
  assign { N152, N151 } = { status_cnt_q[1:1], usage_o[0:0] } - 1'b1;
  assign { N148, N147 } = { status_cnt_q[1:1], usage_o[0:0] } + 1'b1;
  assign N145 = write_pointer_q[0] ^ 1'b1;
  assign N9 = 1'b1 & N171;
  assign { N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11 } = (N0)? { data_i[0:0], data_i[1:1], data_i[2:2], data_i[3:3], data_i[4:4], data_i[5:5], data_i[6:6], data_i[7:7], data_i[8:8], data_i[9:9], data_i[10:10], data_i[11:11], data_i[12:12], data_i[13:13], data_i[14:14], data_i[15:15], data_i[16:16], data_i[17:17], data_i[18:18], data_i[19:19], data_i[20:20], data_i[21:21], data_i[22:22], data_i[23:23], data_i[24:24], data_i[25:25], data_i[26:26], data_i[27:27], data_i[28:28], data_i[29:29], data_i[30:30], data_i[31:31], data_i[32:32], data_i[33:33], data_i[34:34], data_i[35:35], data_i[36:36], data_i[37:37], data_i[38:38], data_i[39:39], data_i[40:40], data_i[41:41], data_i[42:42], data_i[43:43], data_i[44:44], data_i[45:45], data_i[46:46], data_i[47:47], data_i[48:48], data_i[49:49], data_i[50:50], data_i[51:51], data_i[52:52], data_i[53:53], data_i[54:54], data_i[55:55], data_i[56:56], data_i[57:57], data_i[58:58], data_i[59:59], data_i[60:60], data_i[61:61], data_i[62:62], data_i[63:63], data_i[64:64], data_i[65:65], data_i[66:66], data_i[67:67], data_i[68:68], data_i[69:69], data_i[70:70], data_i[71:71], data_i[72:72], data_i[73:73], data_i[74:74], data_i[75:75], data_i[76:76], data_i[77:77], data_i[78:78], data_i[79:79], data_i[80:80], data_i[81:81], data_i[82:82], data_i[83:83], data_i[84:84], data_i[85:85], data_i[86:86], data_i[87:87], data_i[88:88], data_i[89:89], data_i[90:90], data_i[91:91], data_i[92:92], data_i[93:93], data_i[94:94], data_i[95:95], data_i[96:96], data_i[97:97], data_i[98:98], data_i[99:99], data_i[100:100], data_i[101:101], data_i[102:102], data_i[103:103], data_i[104:104], data_i[105:105], data_i[106:106], data_i[107:107], data_i[108:108], data_i[109:109], data_i[110:110], data_i[111:111], data_i[112:112], data_i[113:113], data_i[114:114], data_i[115:115], data_i[116:116], data_i[117:117], data_i[118:118], data_i[119:119], data_i[120:120], data_i[121:121], data_i[122:122], data_i[123:123], data_i[124:124], data_i[125:125], data_i[126:126], data_i[127:127], data_i[128:128], data_i[129:129], data_i[130:130], data_i[131:131], data_i[132:132], data_i[133:133] } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         (N10)? { data_o[0:0], data_o[1:1], data_o[2:2], data_o[3:3], data_o[4:4], data_o[5:5], data_o[6:6], data_o[7:7], data_o[8:8], data_o[9:9], data_o[10:10], data_o[11:11], data_o[12:12], data_o[13:13], data_o[14:14], data_o[15:15], data_o[16:16], data_o[17:17], data_o[18:18], data_o[19:19], data_o[20:20], data_o[21:21], data_o[22:22], data_o[23:23], data_o[24:24], data_o[25:25], data_o[26:26], data_o[27:27], data_o[28:28], data_o[29:29], data_o[30:30], data_o[31:31], data_o[32:32], data_o[33:33], data_o[34:34], data_o[35:35], data_o[36:36], data_o[37:37], data_o[38:38], data_o[39:39], data_o[40:40], data_o[41:41], data_o[42:42], data_o[43:43], data_o[44:44], data_o[45:45], data_o[46:46], data_o[47:47], data_o[48:48], data_o[49:49], data_o[50:50], data_o[51:51], data_o[52:52], data_o[53:53], data_o[54:54], data_o[55:55], data_o[56:56], data_o[57:57], data_o[58:58], data_o[59:59], data_o[60:60], data_o[61:61], data_o[62:62], data_o[63:63], data_o[64:64], data_o[65:65], data_o[66:66], data_o[67:67], data_o[68:68], data_o[69:69], data_o[70:70], data_o[71:71], data_o[72:72], data_o[73:73], data_o[74:74], data_o[75:75], data_o[76:76], data_o[77:77], data_o[78:78], data_o[79:79], data_o[80:80], data_o[81:81], data_o[82:82], data_o[83:83], data_o[84:84], data_o[85:85], data_o[86:86], data_o[87:87], data_o[88:88], data_o[89:89], data_o[90:90], data_o[91:91], data_o[92:92], data_o[93:93], data_o[94:94], data_o[95:95], data_o[96:96], data_o[97:97], data_o[98:98], data_o[99:99], data_o[100:100], data_o[101:101], data_o[102:102], data_o[103:103], data_o[104:104], data_o[105:105], data_o[106:106], data_o[107:107], data_o[108:108], data_o[109:109], data_o[110:110], data_o[111:111], data_o[112:112], data_o[113:113], data_o[114:114], data_o[115:115], data_o[116:116], data_o[117:117], data_o[118:118], data_o[119:119], data_o[120:120], data_o[121:121], data_o[122:122], data_o[123:123], data_o[124:124], data_o[125:125], data_o[126:126], data_o[127:127], data_o[128:128], data_o[129:129], data_o[130:130], data_o[131:131], data_o[132:132], data_o[133:133] } : 1'b0;
  assign N0 = N9;
  assign N146 = (N1)? 1'b0 : 
                (N2)? N145 : 1'b0;
  assign N1 = N171;
  assign N2 = write_pointer_q[0];
  assign mem_n = (N3)? { N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144 } : 
                 (N8)? data_o : 1'b0;
  assign N3 = N7;
  assign gate_clock = ~N7;
  assign { N154, N153 } = (N4)? { N152, N151 } : 
                          (N150)? { N148, N147 } : 1'b0;
  assign N4 = N149;
  assign N159 = (N5)? 1'b0 : 
                (N6)? N146 : 1'b0;
  assign N5 = flush_i;
  assign N6 = N158;
  assign { N161, N160 } = (N5)? { 1'b0, 1'b0 } : 
                          (N6)? { N154, N153 } : 1'b0;
  assign N7 = push_i & N175;
  assign N8 = ~N7;
  assign N10 = ~N9;
  assign N149 = pop_i & N172;
  assign N150 = ~N149;
  assign N155 = N178 & N172;
  assign N178 = N177 & N175;
  assign N177 = push_i & pop_i;
  assign N156 = ~N155;
  assign N157 = ~rst_ni;
  assign N158 = ~flush_i;
  assign N162 = ~gate_clock;
  assign N163 = N155 & N158;
  assign N164 = N156 & N158;
  assign N165 = N150 & N164;
  assign N166 = N8 & N165;
  assign N167 = N163 | N166;
  assign N168 = ~N167;
  assign N169 = N8 & N158;
  assign N170 = ~N169;

endmodule