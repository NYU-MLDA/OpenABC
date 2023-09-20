module rvjtag_tap
(
  trst,
  tck,
  tms,
  tdi,
  tdo,
  tdoEnable,
  wr_data,
  wr_addr,
  wr_en,
  rd_en,
  rd_data,
  rd_status,
  dmi_reset,
  dmi_hard_reset,
  idle,
  dmi_stat,
  jtag_id,
  version
);

  output [31:0] wr_data;
  output [6:0] wr_addr;
  input [31:0] rd_data;
  input [1:0] rd_status;
  input [2:0] idle;
  input [1:0] dmi_stat;
  input [31:1] jtag_id;
  input [3:0] version;
  input trst;
  input tck;
  input tms;
  input tdi;
  output tdo;
  output tdoEnable;
  output wr_en;
  output rd_en;
  output dmi_reset;
  output dmi_hard_reset;
  wire tdoEnable,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,
  N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,
  N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,
  N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,
  N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,
  N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,
  N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,
  N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,
  N260,N261,N262,N263,N264,N265,N266,N267,N268;
  wire [3:0] nstate;
  wire [40:0] nsr;
  reg [3:0] state;
  reg [4:0] ir;
  reg [40:0] sr;
  reg tdo,dmi_reset,dmi_hard_reset,wr_en,rd_en;
  reg [6:0] wr_addr;
  reg [31:0] wr_data;
  assign N24 = N222 & N262;
  assign N25 = N227 & N239;
  assign N26 = N24 & N25;
  assign N27 = state[3] | state[2];
  assign N28 = state[1] | N239;
  assign N29 = N27 | N28;
  assign N31 = state[3] | state[2];
  assign N32 = N227 | state[0];
  assign N33 = N31 | N32;
  assign N35 = state[3] | state[2];
  assign N36 = N227 | N239;
  assign N37 = N35 | N36;
  assign N39 = state[3] | N262;
  assign N40 = state[1] | state[0];
  assign N41 = N39 | N40;
  assign N43 = state[3] | N262;
  assign N44 = state[1] | N239;
  assign N45 = N43 | N44;
  assign N47 = state[3] | N262;
  assign N48 = N227 | state[0];
  assign N49 = N47 | N48;
  assign N51 = state[3] | N262;
  assign N52 = N227 | N239;
  assign N53 = N51 | N52;
  assign N55 = N222 | state[2];
  assign N56 = state[1] | state[0];
  assign N57 = N55 | N56;
  assign N59 = N222 | state[2];
  assign N60 = state[1] | N239;
  assign N61 = N59 | N60;
  assign N63 = N222 | state[2];
  assign N64 = N227 | state[0];
  assign N65 = N63 | N64;
  assign N67 = N222 | state[2];
  assign N68 = N227 | N239;
  assign N69 = N67 | N68;
  assign N71 = N222 | N262;
  assign N72 = state[1] | state[0];
  assign N73 = N71 | N72;
  assign N75 = N222 | N262;
  assign N76 = state[1] | N239;
  assign N77 = N75 | N76;
  assign N79 = N222 | N262;
  assign N80 = N227 | state[0];
  assign N81 = N79 | N80;
  assign N83 = state[3] & state[2];
  assign N84 = state[1] & state[0];
  assign N85 = N83 & N84;

  always @(posedge tck or posedge N87) begin
    if(N87) begin
      state[3] <= 1'b0;
    end else if(1'b1) begin
      state[3] <= nstate[3];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      state[2] <= 1'b0;
    end else if(1'b1) begin
      state[2] <= nstate[2];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      state[1] <= 1'b0;
    end else if(1'b1) begin
      state[1] <= nstate[1];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      state[0] <= 1'b0;
    end else if(1'b1) begin
      state[0] <= nstate[0];
    end
  end


  always @(posedge N88 or posedge N87) begin
    if(N87) begin
      ir[4] <= 1'b0;
    end else if(N96) begin
      ir[4] <= N101;
    end
  end


  always @(posedge N88 or posedge N87) begin
    if(N87) begin
      ir[3] <= 1'b0;
    end else if(N96) begin
      ir[3] <= N100;
    end
  end


  always @(posedge N88 or posedge N87) begin
    if(N87) begin
      ir[2] <= 1'b0;
    end else if(N96) begin
      ir[2] <= N99;
    end
  end


  always @(posedge N88 or posedge N87) begin
    if(N87) begin
      ir[1] <= 1'b0;
    end else if(N96) begin
      ir[1] <= N98;
    end
  end


  always @(posedge N88 or posedge N87) begin
    if(N87) begin
      ir[0] <= 1'b1;
    end else if(N96) begin
      ir[0] <= N97;
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[40] <= 1'b0;
    end else if(1'b1) begin
      sr[40] <= nsr[40];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[39] <= 1'b0;
    end else if(1'b1) begin
      sr[39] <= nsr[39];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[38] <= 1'b0;
    end else if(1'b1) begin
      sr[38] <= nsr[38];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[37] <= 1'b0;
    end else if(1'b1) begin
      sr[37] <= nsr[37];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[36] <= 1'b0;
    end else if(1'b1) begin
      sr[36] <= nsr[36];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[35] <= 1'b0;
    end else if(1'b1) begin
      sr[35] <= nsr[35];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[34] <= 1'b0;
    end else if(1'b1) begin
      sr[34] <= nsr[34];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[33] <= 1'b0;
    end else if(1'b1) begin
      sr[33] <= nsr[33];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[32] <= 1'b0;
    end else if(1'b1) begin
      sr[32] <= nsr[32];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[31] <= 1'b0;
    end else if(1'b1) begin
      sr[31] <= nsr[31];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[30] <= 1'b0;
    end else if(1'b1) begin
      sr[30] <= nsr[30];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[29] <= 1'b0;
    end else if(1'b1) begin
      sr[29] <= nsr[29];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[28] <= 1'b0;
    end else if(1'b1) begin
      sr[28] <= nsr[28];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[27] <= 1'b0;
    end else if(1'b1) begin
      sr[27] <= nsr[27];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[26] <= 1'b0;
    end else if(1'b1) begin
      sr[26] <= nsr[26];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[25] <= 1'b0;
    end else if(1'b1) begin
      sr[25] <= nsr[25];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[24] <= 1'b0;
    end else if(1'b1) begin
      sr[24] <= nsr[24];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[23] <= 1'b0;
    end else if(1'b1) begin
      sr[23] <= nsr[23];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[22] <= 1'b0;
    end else if(1'b1) begin
      sr[22] <= nsr[22];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[21] <= 1'b0;
    end else if(1'b1) begin
      sr[21] <= nsr[21];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[20] <= 1'b0;
    end else if(1'b1) begin
      sr[20] <= nsr[20];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[19] <= 1'b0;
    end else if(1'b1) begin
      sr[19] <= nsr[19];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[18] <= 1'b0;
    end else if(1'b1) begin
      sr[18] <= nsr[18];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[17] <= 1'b0;
    end else if(1'b1) begin
      sr[17] <= nsr[17];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[16] <= 1'b0;
    end else if(1'b1) begin
      sr[16] <= nsr[16];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[15] <= 1'b0;
    end else if(1'b1) begin
      sr[15] <= nsr[15];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[14] <= 1'b0;
    end else if(1'b1) begin
      sr[14] <= nsr[14];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[13] <= 1'b0;
    end else if(1'b1) begin
      sr[13] <= nsr[13];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[12] <= 1'b0;
    end else if(1'b1) begin
      sr[12] <= nsr[12];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[11] <= 1'b0;
    end else if(1'b1) begin
      sr[11] <= nsr[11];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[10] <= 1'b0;
    end else if(1'b1) begin
      sr[10] <= nsr[10];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[9] <= 1'b0;
    end else if(1'b1) begin
      sr[9] <= nsr[9];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[8] <= 1'b0;
    end else if(1'b1) begin
      sr[8] <= nsr[8];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[7] <= 1'b0;
    end else if(1'b1) begin
      sr[7] <= nsr[7];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[6] <= 1'b0;
    end else if(1'b1) begin
      sr[6] <= nsr[6];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[5] <= 1'b0;
    end else if(1'b1) begin
      sr[5] <= nsr[5];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[4] <= 1'b0;
    end else if(1'b1) begin
      sr[4] <= nsr[4];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[3] <= 1'b0;
    end else if(1'b1) begin
      sr[3] <= nsr[3];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[2] <= 1'b0;
    end else if(1'b1) begin
      sr[2] <= nsr[2];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[1] <= 1'b0;
    end else if(1'b1) begin
      sr[1] <= nsr[1];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      sr[0] <= 1'b0;
    end else if(1'b1) begin
      sr[0] <= nsr[0];
    end
  end


  always @(posedge N88) begin
    if(1'b1) begin
      tdo <= sr[0];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      dmi_reset <= 1'b0;
    end else if(1'b1) begin
      dmi_reset <= N212;
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      dmi_hard_reset <= 1'b0;
    end else if(1'b1) begin
      dmi_hard_reset <= N211;
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[6] <= 1'b0;
    end else if(N213) begin
      wr_addr[6] <= sr[40];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[5] <= 1'b0;
    end else if(N213) begin
      wr_addr[5] <= sr[39];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[4] <= 1'b0;
    end else if(N213) begin
      wr_addr[4] <= sr[38];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[3] <= 1'b0;
    end else if(N213) begin
      wr_addr[3] <= sr[37];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[2] <= 1'b0;
    end else if(N213) begin
      wr_addr[2] <= sr[36];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[1] <= 1'b0;
    end else if(N213) begin
      wr_addr[1] <= sr[35];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_addr[0] <= 1'b0;
    end else if(N213) begin
      wr_addr[0] <= sr[34];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[31] <= 1'b0;
    end else if(N213) begin
      wr_data[31] <= sr[33];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[30] <= 1'b0;
    end else if(N213) begin
      wr_data[30] <= sr[32];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[29] <= 1'b0;
    end else if(N213) begin
      wr_data[29] <= sr[31];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[28] <= 1'b0;
    end else if(N213) begin
      wr_data[28] <= sr[30];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[27] <= 1'b0;
    end else if(N213) begin
      wr_data[27] <= sr[29];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[26] <= 1'b0;
    end else if(N213) begin
      wr_data[26] <= sr[28];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[25] <= 1'b0;
    end else if(N213) begin
      wr_data[25] <= sr[27];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[24] <= 1'b0;
    end else if(N213) begin
      wr_data[24] <= sr[26];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[23] <= 1'b0;
    end else if(N213) begin
      wr_data[23] <= sr[25];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[22] <= 1'b0;
    end else if(N213) begin
      wr_data[22] <= sr[24];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[21] <= 1'b0;
    end else if(N213) begin
      wr_data[21] <= sr[23];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[20] <= 1'b0;
    end else if(N213) begin
      wr_data[20] <= sr[22];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[19] <= 1'b0;
    end else if(N213) begin
      wr_data[19] <= sr[21];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[18] <= 1'b0;
    end else if(N213) begin
      wr_data[18] <= sr[20];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[17] <= 1'b0;
    end else if(N213) begin
      wr_data[17] <= sr[19];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[16] <= 1'b0;
    end else if(N213) begin
      wr_data[16] <= sr[18];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[15] <= 1'b0;
    end else if(N213) begin
      wr_data[15] <= sr[17];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[14] <= 1'b0;
    end else if(N213) begin
      wr_data[14] <= sr[16];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[13] <= 1'b0;
    end else if(N213) begin
      wr_data[13] <= sr[15];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[12] <= 1'b0;
    end else if(N213) begin
      wr_data[12] <= sr[14];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[11] <= 1'b0;
    end else if(N213) begin
      wr_data[11] <= sr[13];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[10] <= 1'b0;
    end else if(N213) begin
      wr_data[10] <= sr[12];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[9] <= 1'b0;
    end else if(N213) begin
      wr_data[9] <= sr[11];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[8] <= 1'b0;
    end else if(N213) begin
      wr_data[8] <= sr[10];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[7] <= 1'b0;
    end else if(N213) begin
      wr_data[7] <= sr[9];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[6] <= 1'b0;
    end else if(N213) begin
      wr_data[6] <= sr[8];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[5] <= 1'b0;
    end else if(N213) begin
      wr_data[5] <= sr[7];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[4] <= 1'b0;
    end else if(N213) begin
      wr_data[4] <= sr[6];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[3] <= 1'b0;
    end else if(N213) begin
      wr_data[3] <= sr[5];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[2] <= 1'b0;
    end else if(N213) begin
      wr_data[2] <= sr[4];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[1] <= 1'b0;
    end else if(N213) begin
      wr_data[1] <= sr[3];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_data[0] <= 1'b0;
    end else if(N213) begin
      wr_data[0] <= sr[2];
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      wr_en <= 1'b0;
    end else if(1'b1) begin
      wr_en <= N216;
    end
  end


  always @(posedge tck or posedge N87) begin
    if(N87) begin
      rd_en <= 1'b0;
    end else if(1'b1) begin
      rd_en <= N215;
    end
  end

  assign N217 = sr[3] | sr[4];
  assign N218 = sr[2] | N217;
  assign N219 = sr[1] | N218;
  assign N220 = sr[0] | N219;
  assign N221 = ~N220;
  assign N222 = ~state[3];
  assign N223 = state[2] | N222;
  assign N224 = state[1] | N223;
  assign N225 = state[0] | N224;
  assign N226 = ~N225;
  assign N227 = ~state[1];
  assign N228 = state[2] | N222;
  assign N229 = N227 | N228;
  assign N230 = state[0] | N229;
  assign N231 = ~ir[0];
  assign N232 = ir[3] | ir[4];
  assign N233 = ir[2] | N232;
  assign N234 = ir[1] | N233;
  assign N235 = N231 | N234;
  assign N236 = state[2] & state[3];
  assign N237 = state[1] & N236;
  assign N238 = state[0] & N237;
  assign N239 = ~state[0];
  assign N240 = state[2] | N222;
  assign N241 = N227 | N240;
  assign N242 = N239 | N241;
  assign N243 = ~N242;
  assign N244 = state[2] | state[3];
  assign N245 = state[1] | N244;
  assign N246 = state[0] | N245;
  assign N247 = ~N246;
  assign N248 = ~ir[4];
  assign N249 = ir[3] | N248;
  assign N250 = ir[2] | N249;
  assign N251 = ir[1] | N250;
  assign N252 = N231 | N251;
  assign N253 = ~N252;
  assign N254 = ir[3] | N248;
  assign N255 = ir[2] | N254;
  assign N256 = ir[1] | N255;
  assign N257 = ir[0] | N256;
  assign N258 = ~N257;
  assign N259 = state[2] | state[3];
  assign N260 = N227 | N259;
  assign N261 = N239 | N260;
  assign N262 = ~state[2];
  assign N263 = N262 | state[3];
  assign N264 = state[1] | N263;
  assign N265 = state[0] | N264;
  assign N266 = ~N265;
  assign nstate = (N0)? { 1'b0, 1'b0, 1'b0, N86 } :
                  (N1)? { 1'b0, 1'b0, tms, N86 } :
                  (N2)? { tms, 1'b0, N86, 1'b1 } :
                  (N3)? { 1'b0, 1'b1, 1'b0, tms } :
                  (N4)? { 1'b0, 1'b1, 1'b0, tms } :
                  (N5)? { tms, N86, N86, 1'b0 } :
                  (N6)? { 1'b0, 1'b1, 1'b1, tms } :
                  (N7)? { tms, N86, 1'b0, 1'b0 } :
                  (N8)? { 1'b0, 1'b0, tms, N86 } :
                  (N9)? { N86, 1'b0, N86, 1'b0 } :
                  (N10)? { 1'b1, tms, N86, N86 } :
                  (N11)? { 1'b1, tms, N86, N86 } :
                  (N12)? { 1'b1, 1'b1, tms, 1'b1 } :
                  (N13)? { 1'b1, 1'b1, tms, N86 } :
                  (N14)? { 1'b1, tms, 1'b1, 1'b1 } :
                  (N15)? { 1'b0, 1'b0, tms, N86 } : 1'b0;
  assign N0 = N26;
  assign N1 = N30;
  assign N2 = N34;
  assign N3 = N38;
  assign N4 = N42;
  assign N5 = N46;
  assign N6 = N50;
  assign N7 = N54;
  assign N8 = N58;
  assign N9 = N62;
  assign N10 = N66;
  assign N11 = N70;
  assign N12 = N74;
  assign N13 = N78;
  assign N14 = N82;
  assign N15 = N85;
  assign { N95, N94, N93, N92, N91 } = (N16)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } :
                                       (N17)? sr[4:0] : 1'b0;
  assign N16 = N221;
  assign N17 = N220;
  assign N96 = (N18)? 1'b1 :
               (N102)? 1'b1 :
               (N90)? 1'b0 : 1'b0;
  assign N18 = N247;
  assign { N101, N100, N99, N98, N97 } = (N18)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } :
                                         (N102)? { N95, N94, N93, N92, N91 } : 1'b0;
  assign { N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111 } = (N19)? { tdi, sr[40:1] } :
                                                                                                                                                                                                                                                                    (N205)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tdi, sr[31:1] } :
                                                                                                                                                                                                                                                                    (N110)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tdi } : 1'b0;
  assign N19 = N107;
  assign { N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155 } = (N20)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, idle, dmi_stat, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, version } :
                                                                                                                                                                                                                                                                    (N206)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, rd_data, rd_status } :
                                                                                                                                                                                                                                                                    (N208)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, jtag_id, 1'b1 } :
                                                                                                                                                                                                                                                                    (N154)? sr : 1'b0;
  assign N20 = N267;
  assign nsr = (N21)? { N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111 } :
               (N200)? { N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155 } :
               (N202)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, tdi, sr[4:1] } :
               (N204)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } :
               (N199)? sr : 1'b0;
  assign N21 = N103;
  assign N211 = (N22)? sr[17] :
                (N210)? 1'b0 : 1'b0;
  assign N22 = N209;
  assign N212 = (N22)? sr[16] :
                (N210)? 1'b0 : 1'b0;
  assign { N216, N215 } = (N23)? sr[1:0] :
                          (N214)? { 1'b0, 1'b0 } : 1'b0;
  assign N23 = N213;
  assign N30 = ~N29;
  assign N34 = ~N33;
  assign N38 = ~N37;
  assign N42 = ~N41;
  assign N46 = ~N45;
  assign N50 = ~N49;
  assign N54 = ~N53;
  assign N58 = ~N57;
  assign N62 = ~N61;
  assign N66 = ~N65;
  assign N70 = ~N69;
  assign N74 = ~N73;
  assign N78 = ~N77;
  assign N82 = ~N81;
  assign N86 = ~tms;
  assign N87 = ~trst;
  assign tdoEnable = N266 | N243;
  assign N88 = ~tck;
  assign N89 = N238 | N247;
  assign N90 = ~N89;
  assign N102 = N238 & N246;
  assign N103 = ~N265;
  assign N104 = ~N261;
  assign N105 = ~N242;
  assign N106 = ~N230;
  assign N107 = ~N252;
  assign N108 = N267 | N268;
  assign N267 = ~N257;
  assign N268 = ~N235;
  assign N109 = N108 | N107;
  assign N110 = ~N109;
  assign N152 = N206 | N267;
  assign N153 = N208 | N152;
  assign N154 = ~N153;
  assign N196 = N200 | N103;
  assign N197 = N202 | N196;
  assign N198 = N204 | N197;
  assign N199 = ~N198;
  assign N200 = N104 & N265;
  assign N201 = N265 & N261;
  assign N202 = N105 & N201;
  assign N203 = N201 & N242;
  assign N204 = N106 & N203;
  assign N205 = N108 & N252;
  assign N206 = N107 & N257;
  assign N207 = N257 & N252;
  assign N208 = N268 & N207;
  assign N209 = N226 & N258;
  assign N210 = ~N209;
  assign N213 = N226 & N253;
  assign N214 = ~N213;

endmodule