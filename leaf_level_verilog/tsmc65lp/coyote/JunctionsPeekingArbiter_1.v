module JunctionsPeekingArbiter_1
(
  clk,
  reset,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_resp,
  io_in_3_bits_data,
  io_in_3_bits_last,
  io_in_3_bits_id,
  io_in_3_bits_user,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_resp,
  io_in_2_bits_data,
  io_in_2_bits_last,
  io_in_2_bits_id,
  io_in_2_bits_user,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_resp,
  io_in_1_bits_data,
  io_in_1_bits_last,
  io_in_1_bits_id,
  io_in_1_bits_user,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_resp,
  io_in_0_bits_data,
  io_in_0_bits_last,
  io_in_0_bits_id,
  io_in_0_bits_user,
  io_out_ready,
  io_out_valid,
  io_out_bits_resp,
  io_out_bits_data,
  io_out_bits_last,
  io_out_bits_id,
  io_out_bits_user
);

  input [1:0] io_in_3_bits_resp;
  input [63:0] io_in_3_bits_data;
  input [5:0] io_in_3_bits_id;
  input [1:0] io_in_2_bits_resp;
  input [63:0] io_in_2_bits_data;
  input [5:0] io_in_2_bits_id;
  input [1:0] io_in_1_bits_resp;
  input [63:0] io_in_1_bits_data;
  input [5:0] io_in_1_bits_id;
  input [1:0] io_in_0_bits_resp;
  input [63:0] io_in_0_bits_data;
  input [5:0] io_in_0_bits_id;
  output [1:0] io_out_bits_resp;
  output [63:0] io_out_bits_data;
  output [5:0] io_out_bits_id;
  input clk;
  input reset;
  input io_in_3_valid;
  input io_in_3_bits_last;
  input io_in_3_bits_user;
  input io_in_2_valid;
  input io_in_2_bits_last;
  input io_in_2_bits_user;
  input io_in_1_valid;
  input io_in_1_bits_last;
  input io_in_1_bits_user;
  input io_in_0_valid;
  input io_in_0_bits_last;
  input io_in_0_bits_user;
  input io_out_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_last;
  output io_out_bits_user;
  wire [1:0] io_out_bits_resp,T3,choice,T63,T4,T39,T5,T14,T6,T11,T7,T9,T12,T17,T15,T16,T18,
  T24,T33,T42,T40,T41,T43,T49,T57,T66,T64,T135,T73,T118,T116;
  wire [63:0] io_out_bits_data,T112,T110;
  wire [5:0] io_out_bits_id,T100,T98;
  wire io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,
  io_out_bits_last,io_out_bits_user,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,
  N76,N77,N78,T94,T1,N79,T69,N80,T45,N81,T20,N82,T13,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N98,N99,T19,N100,N101,N102,N103,N104,N105,N106,N107,
  N108,N109,N110,N111,N112,N113,N114,N115,N116,T38,N117,T30,T21,N118,T27,T22,N119,
  N120,T35,T31,N121,T44,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,T62,N139,T54,T46,N140,T51,T47,N141,N142,T59,T55,N143,
  T68,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,
  T86,N159,T78,T70,N160,T75,T71,N161,T83,T79,T88,T90,T89,T93,T106,T104,T124,T122,
  N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,
  N178,N179,N180,N181,N182,N183,N184,N185,N186,N187;
  reg [1:0] lockIdx;
  reg locked;
  assign N86 = N84 & N85;
  assign N87 = T9[1] | N85;
  assign N89 = N84 | T9[0];
  assign N91 = T9[1] & T9[0];
  assign N94 = N92 & N93;
  assign N95 = T12[1] | N93;
  assign N97 = N92 | T12[0];
  assign N99 = T12[1] & T12[0];
  assign N103 = N101 & N102;
  assign N104 = T16[1] | N102;
  assign N106 = N101 | T16[0];
  assign N108 = T16[1] & T16[0];
  assign N111 = N109 & N110;
  assign N112 = T18[1] | N110;
  assign N114 = N109 | T18[0];
  assign N116 = T18[1] & T18[0];
  assign N125 = N123 & N124;
  assign N126 = T41[1] | N124;
  assign N128 = N123 | T41[0];
  assign N130 = T41[1] & T41[0];
  assign N133 = N131 & N132;
  assign N134 = T43[1] | N132;
  assign N136 = N131 | T43[0];
  assign N138 = T43[1] & T43[0];
  assign T44 = T135 < { 1'b1, 1'b1 };
  assign T62 = T73 < { 1'b1, 1'b1 };
  assign N147 = N145 & N146;
  assign N148 = T135[1] | N146;
  assign N150 = N145 | T135[0];
  assign N152 = T135[1] & T135[0];
  assign N153 = N145 & N146;
  assign N154 = T135[1] | N146;
  assign N156 = N145 | T135[0];
  assign N158 = T135[1] & T135[0];

  always @(posedge clk) begin
    if(N164) begin
      lockIdx[1] <= N166;
    end 
  end


  always @(posedge clk) begin
    if(N164) begin
      lockIdx[0] <= N165;
    end 
  end


  always @(posedge clk) begin
    if(N170) begin
      locked <= N171;
    end 
  end

  assign N178 = T3[0] & T3[1];
  assign N179 = ~T3[1];
  assign N180 = T3[0] | N179;
  assign N181 = ~N180;
  assign N182 = ~T3[0];
  assign N183 = N182 | T3[1];
  assign N184 = ~N183;
  assign N185 = T3[0] | T3[1];
  assign N186 = ~N185;
  assign T135 = lockIdx + 1'b1;
  assign T73 = lockIdx + 1'b1;
  assign T9 = T135 - 1'b1;
  assign T12 = { 1'b1, 1'b1 } + T135;
  assign T16 = T135 - { 1'b1, 1'b0 };
  assign T18 = { 1'b1, 1'b0 } + T135;
  assign T41 = T135 - { 1'b1, 1'b1 };
  assign T43 = 1'b1 + T135;
  assign T24 = T73 - { 1'b1, 1'b0 };
  assign T33 = { 1'b1, 1'b0 } + T73;
  assign T49 = T73 - { 1'b1, 1'b1 };
  assign T57 = 1'b1 + T73;
  assign io_out_bits_user = (N0)? T94 : 
                            (N1)? T1 : 1'b0;
  assign N0 = T3[1];
  assign N1 = N179;
  assign T1 = (N2)? io_in_1_bits_user : 
              (N3)? io_in_0_bits_user : 1'b0;
  assign N2 = T3[0];
  assign N3 = N182;
  assign T3 = (N4)? lockIdx : 
              (N5)? choice : 1'b0;
  assign N4 = locked;
  assign N5 = N79;
  assign choice = (N6)? T63 : 
                  (N7)? T4 : 1'b0;
  assign N6 = T69;
  assign N7 = N80;
  assign T4 = (N8)? T39 : 
              (N9)? T5 : 1'b0;
  assign N8 = T45;
  assign N9 = N81;
  assign T5 = (N10)? T14 : 
              (N11)? T6 : 1'b0;
  assign N10 = T20;
  assign N11 = N82;
  assign T6 = (N12)? T11 : 
              (N13)? T7 : 1'b0;
  assign N12 = T13;
  assign N13 = N83;
  assign T7 = (N14)? { 1'b0, 1'b0 } : 
              (N15)? { 1'b0, 1'b1 } : 
              (N16)? { 1'b1, 1'b0 } : 
              (N17)? { 1'b1, 1'b1 } : 1'b0;
  assign N14 = N86;
  assign N15 = N88;
  assign N16 = N90;
  assign N17 = N91;
  assign T11 = (N18)? { 1'b0, 1'b0 } : 
               (N19)? { 1'b0, 1'b1 } : 
               (N20)? { 1'b1, 1'b0 } : 
               (N21)? { 1'b1, 1'b1 } : 1'b0;
  assign N18 = N94;
  assign N19 = N96;
  assign N20 = N98;
  assign N21 = N99;
  assign T14 = (N22)? T17 : 
               (N23)? T15 : 1'b0;
  assign N22 = T19;
  assign N23 = N100;
  assign T15 = (N24)? { 1'b0, 1'b0 } : 
               (N25)? { 1'b0, 1'b1 } : 
               (N26)? { 1'b1, 1'b0 } : 
               (N27)? { 1'b1, 1'b1 } : 1'b0;
  assign N24 = N103;
  assign N25 = N105;
  assign N26 = N107;
  assign N27 = N108;
  assign T17 = (N28)? { 1'b0, 1'b0 } : 
               (N29)? { 1'b0, 1'b1 } : 
               (N30)? { 1'b1, 1'b0 } : 
               (N31)? { 1'b1, 1'b1 } : 1'b0;
  assign N28 = N111;
  assign N29 = N113;
  assign N30 = N115;
  assign N31 = N116;
  assign T20 = (N32)? T30 : 
               (N33)? T21 : 1'b0;
  assign N32 = T38;
  assign N33 = N117;
  assign T21 = (N34)? T27 : 
               (N35)? T22 : 1'b0;
  assign N34 = T24[1];
  assign N35 = N118;
  assign T22 = (N36)? io_in_1_valid : 
               (N37)? io_in_0_valid : 1'b0;
  assign N36 = T24[0];
  assign N37 = N119;
  assign T27 = (N36)? io_in_3_valid : 
               (N37)? io_in_2_valid : 1'b0;
  assign T30 = (N38)? T35 : 
               (N39)? T31 : 1'b0;
  assign N38 = T33[1];
  assign N39 = N120;
  assign T31 = (N40)? io_in_1_valid : 
               (N41)? io_in_0_valid : 1'b0;
  assign N40 = T33[0];
  assign N41 = N121;
  assign T35 = (N40)? io_in_3_valid : 
               (N41)? io_in_2_valid : 1'b0;
  assign T39 = (N42)? T42 : 
               (N43)? T40 : 1'b0;
  assign N42 = T44;
  assign N43 = N122;
  assign T40 = (N44)? { 1'b0, 1'b0 } : 
               (N45)? { 1'b0, 1'b1 } : 
               (N46)? { 1'b1, 1'b0 } : 
               (N47)? { 1'b1, 1'b1 } : 1'b0;
  assign N44 = N125;
  assign N45 = N127;
  assign N46 = N129;
  assign N47 = N130;
  assign T42 = (N48)? { 1'b0, 1'b0 } : 
               (N49)? { 1'b0, 1'b1 } : 
               (N50)? { 1'b1, 1'b0 } : 
               (N51)? { 1'b1, 1'b1 } : 1'b0;
  assign N48 = N133;
  assign N49 = N135;
  assign N50 = N137;
  assign N51 = N138;
  assign T45 = (N52)? T54 : 
               (N53)? T46 : 1'b0;
  assign N52 = T62;
  assign N53 = N139;
  assign T46 = (N54)? T51 : 
               (N55)? T47 : 1'b0;
  assign N54 = T49[1];
  assign N55 = N140;
  assign T47 = (N56)? io_in_1_valid : 
               (N57)? io_in_0_valid : 1'b0;
  assign N56 = T49[0];
  assign N57 = N141;
  assign T51 = (N56)? io_in_3_valid : 
               (N57)? io_in_2_valid : 1'b0;
  assign T54 = (N58)? T59 : 
               (N59)? T55 : 1'b0;
  assign N58 = T57[1];
  assign N59 = N142;
  assign T55 = (N60)? io_in_1_valid : 
               (N61)? io_in_0_valid : 1'b0;
  assign N60 = T57[0];
  assign N61 = N143;
  assign T59 = (N60)? io_in_3_valid : 
               (N61)? io_in_2_valid : 1'b0;
  assign T63 = (N62)? T66 : 
               (N63)? T64 : 1'b0;
  assign N62 = T68;
  assign N63 = N144;
  assign T64 = (N64)? { 1'b0, 1'b0 } : 
               (N65)? { 1'b0, 1'b1 } : 
               (N66)? { 1'b1, 1'b0 } : 
               (N67)? { 1'b1, 1'b1 } : 1'b0;
  assign N64 = N147;
  assign N65 = N149;
  assign N66 = N151;
  assign N67 = N152;
  assign T66 = (N68)? { 1'b0, 1'b0 } : 
               (N69)? { 1'b0, 1'b1 } : 
               (N70)? { 1'b1, 1'b0 } : 
               (N71)? { 1'b1, 1'b1 } : 1'b0;
  assign N68 = N153;
  assign N69 = N155;
  assign N70 = N157;
  assign N71 = N158;
  assign T69 = (N72)? T78 : 
               (N73)? T70 : 1'b0;
  assign N72 = T86;
  assign N73 = N159;
  assign T70 = (N74)? T75 : 
               (N75)? T71 : 1'b0;
  assign N74 = T73[1];
  assign N75 = N160;
  assign T71 = (N76)? io_in_1_valid : 
               (N77)? io_in_0_valid : 1'b0;
  assign N76 = T73[0];
  assign N77 = N161;
  assign T75 = (N76)? io_in_3_valid : 
               (N77)? io_in_2_valid : 1'b0;
  assign T78 = (N74)? T83 : 
               (N75)? T79 : 1'b0;
  assign T79 = (N76)? io_in_1_valid : 
               (N77)? io_in_0_valid : 1'b0;
  assign T83 = (N76)? io_in_3_valid : 
               (N77)? io_in_2_valid : 1'b0;
  assign T94 = (N2)? io_in_3_bits_user : 
               (N3)? io_in_2_bits_user : 1'b0;
  assign io_out_bits_id = (N0)? T100 : 
                          (N1)? T98 : 1'b0;
  assign T98 = (N2)? io_in_1_bits_id : 
               (N3)? io_in_0_bits_id : 1'b0;
  assign T100 = (N2)? io_in_3_bits_id : 
                (N3)? io_in_2_bits_id : 1'b0;
  assign io_out_bits_last = (N0)? T106 : 
                            (N1)? T104 : 1'b0;
  assign T104 = (N2)? io_in_1_bits_last : 
                (N3)? io_in_0_bits_last : 1'b0;
  assign T106 = (N2)? io_in_3_bits_last : 
                (N3)? io_in_2_bits_last : 1'b0;
  assign io_out_bits_data = (N0)? T112 : 
                            (N1)? T110 : 1'b0;
  assign T110 = (N2)? io_in_1_bits_data : 
                (N3)? io_in_0_bits_data : 1'b0;
  assign T112 = (N2)? io_in_3_bits_data : 
                (N3)? io_in_2_bits_data : 1'b0;
  assign io_out_bits_resp = (N0)? T118 : 
                            (N1)? T116 : 1'b0;
  assign T116 = (N2)? io_in_1_bits_resp : 
                (N3)? io_in_0_bits_resp : 1'b0;
  assign T118 = (N2)? io_in_3_bits_resp : 
                (N3)? io_in_2_bits_resp : 1'b0;
  assign io_out_valid = (N0)? T124 : 
                        (N1)? T122 : 1'b0;
  assign T122 = (N2)? io_in_1_valid : 
                (N3)? io_in_0_valid : 1'b0;
  assign T124 = (N2)? io_in_3_valid : 
                (N3)? io_in_2_valid : 1'b0;
  assign N164 = (N78)? 1'b1 : 
                (N173)? 1'b1 : 
                (N163)? 1'b0 : 1'b0;
  assign N78 = reset;
  assign { N166, N165 } = (N78)? { 1'b0, 1'b0 } : 
                          (N173)? choice : 1'b0;
  assign N170 = (N78)? 1'b1 : 
                (N174)? 1'b1 : 
                (N177)? 1'b1 : 
                (N169)? 1'b0 : 1'b0;
  assign N171 = (N78)? 1'b0 : 
                (N174)? 1'b0 : 
                (N177)? 1'b1 : 1'b0;
  assign N79 = ~locked;
  assign N80 = ~T69;
  assign N81 = ~T45;
  assign N82 = ~T20;
  assign N83 = ~T13;
  assign N84 = ~T9[1];
  assign N85 = ~T9[0];
  assign N88 = ~N87;
  assign N90 = ~N89;
  assign N92 = ~T12[1];
  assign N93 = ~T12[0];
  assign N96 = ~N95;
  assign N98 = ~N97;
  assign T13 = ~N187;
  assign N187 = T135[1] | T135[0];
  assign N100 = ~T19;
  assign N101 = ~T16[1];
  assign N102 = ~T16[0];
  assign N105 = ~N104;
  assign N107 = ~N106;
  assign N109 = ~T18[1];
  assign N110 = ~T18[0];
  assign N113 = ~N112;
  assign N115 = ~N114;
  assign T19 = ~T135[1];
  assign N117 = ~T38;
  assign N118 = ~T24[1];
  assign N119 = ~T24[0];
  assign N120 = ~T33[1];
  assign N121 = ~T33[0];
  assign T38 = ~T73[1];
  assign N122 = ~T44;
  assign N123 = ~T41[1];
  assign N124 = ~T41[0];
  assign N127 = ~N126;
  assign N129 = ~N128;
  assign N131 = ~T43[1];
  assign N132 = ~T43[0];
  assign N135 = ~N134;
  assign N137 = ~N136;
  assign N139 = ~T62;
  assign N140 = ~T49[1];
  assign N141 = ~T49[0];
  assign N142 = ~T57[1];
  assign N143 = ~T57[0];
  assign N144 = ~T68;
  assign N145 = ~T135[1];
  assign N146 = ~T135[0];
  assign N149 = ~N148;
  assign N151 = ~N150;
  assign N155 = ~N154;
  assign N157 = ~N156;
  assign T68 = ~1'b0;
  assign N159 = ~T86;
  assign N160 = ~T73[1];
  assign N161 = ~T73[0];
  assign T86 = ~1'b0;
  assign T88 = T90 & T89;
  assign T89 = ~locked;
  assign T90 = io_out_ready & io_out_valid;
  assign T93 = T90 & io_out_bits_last;
  assign io_in_0_ready = io_out_ready & N186;
  assign io_in_1_ready = io_out_ready & N184;
  assign io_in_2_ready = io_out_ready & N181;
  assign io_in_3_ready = io_out_ready & N178;
  assign N162 = T88 | reset;
  assign N163 = ~N162;
  assign N167 = T93 | reset;
  assign N168 = T88 | N167;
  assign N169 = ~N168;
  assign N172 = ~reset;
  assign N173 = T88 & N172;
  assign N174 = T93 & N172;
  assign N175 = ~T93;
  assign N176 = N172 & N175;
  assign N177 = T88 & N176;

endmodule