module INToRecFN_1
(
  io_signedIn,
  io_in,
  io_roundingMode,
  io_out,
  io_exceptionFlags
);

  input [63:0] io_in;
  input [1:0] io_roundingMode;
  output [64:0] io_out;
  output [4:0] io_exceptionFlags;
  input io_signedIn;
  wire [64:0] io_out;
  wire [4:0] io_exceptionFlags,T69,T70,T71,T72,T73,T74,T75,T76,T77,T78,T79,T80,T81,T82,T83,
  T84;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  round,N197,T16_53,T21,T17,N198,T18,T19,T25,T22,T23,T26,T29,N199,N201,N202,N203,N204,
  N205,N206,SV2V_UNCONNECTED_1;
  wire [0:0] T2;
  wire [9:0] T4;
  wire [62:10] normAbsIn;
  wire [5:0] normCount,T37,T38,T39,T40,T41,T42,T43,T44,T45,T46,T47,T48,T49,T50,T51,T52,T53,
  T54,T55,T56,T57,T58,T59,T60,T61,T62,T63,T64,T65,T66,T67,T68,T34;
  wire [3:0] T85,T86,T87,T88,T89,T90,T91,T92;
  wire [2:0] T93,T94,T95,T96;
  wire [1:0] T97,T98;
  wire [63:0] T7,T9;
  wire [53:53] roundedNorm;
  wire [51:0] T16;
  assign io_out[62] = 1'b0;
  assign io_out[61] = 1'b0;
  assign io_out[60] = 1'b0;
  assign io_out[59] = 1'b0;
  assign io_exceptionFlags[1] = 1'b0;
  assign io_exceptionFlags[2] = 1'b0;
  assign io_exceptionFlags[3] = 1'b0;
  assign io_exceptionFlags[4] = 1'b0;
  assign T2[0] = T4 != 1'b0;
  assign T29 = normAbsIn[11:10] == { 1'b1, 1'b1 };
  assign N199 = T2[0] & normAbsIn[10];
  assign io_exceptionFlags[0] = T2[0] | normAbsIn[10];
  assign N201 = io_roundingMode[0] & io_roundingMode[1];
  assign N202 = io_roundingMode[0] | io_roundingMode[1];
  assign N203 = ~N202;
  assign N204 = ~io_roundingMode[1];
  assign N205 = io_roundingMode[0] | N204;
  assign N206 = ~N205;
  assign { io_out[63:63], normAbsIn, T4 } = T7 << normCount;
  assign T9 = 1'b0 - io_in;
  assign { T16_53, SV2V_UNCONNECTED_1, T16 } = { io_out[63:63], normAbsIn[62:11] } + 1'b1;
  assign io_out[58:52] = T34 + roundedNorm[53];
  assign T37 = (N0)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N1)? T38 : 1'b0;
  assign N0 = T7[63];
  assign N1 = N134;
  assign T38 = (N2)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
               (N3)? T39 : 1'b0;
  assign N2 = T7[62];
  assign N3 = N135;
  assign T39 = (N4)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } : 
               (N5)? T40 : 1'b0;
  assign N4 = T7[61];
  assign N5 = N136;
  assign T40 = (N6)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
               (N7)? T41 : 1'b0;
  assign N6 = T7[60];
  assign N7 = N137;
  assign T41 = (N8)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
               (N9)? T42 : 1'b0;
  assign N8 = T7[59];
  assign N9 = N138;
  assign T42 = (N10)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
               (N11)? T43 : 1'b0;
  assign N10 = T7[58];
  assign N11 = N139;
  assign T43 = (N12)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1 } : 
               (N13)? T44 : 1'b0;
  assign N12 = T7[57];
  assign N13 = N140;
  assign T44 = (N14)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
               (N15)? T45 : 1'b0;
  assign N14 = T7[56];
  assign N15 = N141;
  assign T45 = (N16)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
               (N17)? T46 : 1'b0;
  assign N16 = T7[55];
  assign N17 = N142;
  assign T46 = (N18)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 } : 
               (N19)? T47 : 1'b0;
  assign N18 = T7[54];
  assign N19 = N143;
  assign T47 = (N20)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
               (N21)? T48 : 1'b0;
  assign N20 = T7[53];
  assign N21 = N144;
  assign T48 = (N22)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
               (N23)? T49 : 1'b0;
  assign N22 = T7[52];
  assign N23 = N145;
  assign T49 = (N24)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
               (N25)? T50 : 1'b0;
  assign N24 = T7[51];
  assign N25 = N146;
  assign T50 = (N26)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
               (N27)? T51 : 1'b0;
  assign N26 = T7[50];
  assign N27 = N147;
  assign T51 = (N28)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
               (N29)? T52 : 1'b0;
  assign N28 = T7[49];
  assign N29 = N148;
  assign T52 = (N30)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N31)? T53 : 1'b0;
  assign N30 = T7[48];
  assign N31 = N149;
  assign T53 = (N32)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N33)? T54 : 1'b0;
  assign N32 = T7[47];
  assign N33 = N150;
  assign T54 = (N34)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0 } : 
               (N35)? T55 : 1'b0;
  assign N34 = T7[46];
  assign N35 = N151;
  assign T55 = (N36)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1 } : 
               (N37)? T56 : 1'b0;
  assign N36 = T7[45];
  assign N37 = N152;
  assign T56 = (N38)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0 } : 
               (N39)? T57 : 1'b0;
  assign N38 = T7[44];
  assign N39 = N153;
  assign T57 = (N40)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1 } : 
               (N41)? T58 : 1'b0;
  assign N40 = T7[43];
  assign N41 = N154;
  assign T58 = (N42)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0 } : 
               (N43)? T59 : 1'b0;
  assign N42 = T7[42];
  assign N43 = N155;
  assign T59 = (N44)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
               (N45)? T60 : 1'b0;
  assign N44 = T7[41];
  assign N45 = N156;
  assign T60 = (N46)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
               (N47)? T61 : 1'b0;
  assign N46 = T7[40];
  assign N47 = N157;
  assign T61 = (N48)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
               (N49)? T62 : 1'b0;
  assign N48 = T7[39];
  assign N49 = N158;
  assign T62 = (N50)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
               (N51)? T63 : 1'b0;
  assign N50 = T7[38];
  assign N51 = N159;
  assign T63 = (N52)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
               (N53)? T64 : 1'b0;
  assign N52 = T7[37];
  assign N53 = N160;
  assign T64 = (N54)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
               (N55)? T65 : 1'b0;
  assign N54 = T7[36];
  assign N55 = N161;
  assign T65 = (N56)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
               (N57)? T66 : 1'b0;
  assign N56 = T7[35];
  assign N57 = N162;
  assign T66 = (N58)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
               (N59)? T67 : 1'b0;
  assign N58 = T7[34];
  assign N59 = N163;
  assign T67 = (N60)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
               (N61)? T68 : 1'b0;
  assign N60 = T7[33];
  assign N61 = N164;
  assign T68[4:0] = (N62)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N63)? T69 : 1'b0;
  assign N62 = T68[5];
  assign N63 = N165;
  assign T69 = (N64)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N65)? T70 : 1'b0;
  assign N64 = T7[31];
  assign N65 = N166;
  assign T70 = (N66)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
               (N67)? T71 : 1'b0;
  assign N66 = T7[30];
  assign N67 = N167;
  assign T71 = (N68)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } : 
               (N69)? T72 : 1'b0;
  assign N68 = T7[29];
  assign N69 = N168;
  assign T72 = (N70)? { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
               (N71)? T73 : 1'b0;
  assign N70 = T7[28];
  assign N71 = N169;
  assign T73 = (N72)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
               (N73)? T74 : 1'b0;
  assign N72 = T7[27];
  assign N73 = N170;
  assign T74 = (N74)? { 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
               (N75)? T75 : 1'b0;
  assign N74 = T7[26];
  assign N75 = N171;
  assign T75 = (N76)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1 } : 
               (N77)? T76 : 1'b0;
  assign N76 = T7[25];
  assign N77 = N172;
  assign T76 = (N78)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
               (N79)? T77 : 1'b0;
  assign N78 = T7[24];
  assign N79 = N173;
  assign T77 = (N80)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
               (N81)? T78 : 1'b0;
  assign N80 = T7[23];
  assign N81 = N174;
  assign T78 = (N82)? { 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 } : 
               (N83)? T79 : 1'b0;
  assign N82 = T7[22];
  assign N83 = N175;
  assign T79 = (N84)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
               (N85)? T80 : 1'b0;
  assign N84 = T7[21];
  assign N85 = N176;
  assign T80 = (N86)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
               (N87)? T81 : 1'b0;
  assign N86 = T7[20];
  assign N87 = N177;
  assign T81 = (N88)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
               (N89)? T82 : 1'b0;
  assign N88 = T7[19];
  assign N89 = N178;
  assign T82 = (N90)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
               (N91)? T83 : 1'b0;
  assign N90 = T7[18];
  assign N91 = N179;
  assign T83 = (N92)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
               (N93)? T84 : 1'b0;
  assign N92 = T7[17];
  assign N93 = N180;
  assign T84[3:0] = (N94)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N95)? T85 : 1'b0;
  assign N94 = T84[4];
  assign N95 = N181;
  assign T85 = (N96)? { 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N97)? T86 : 1'b0;
  assign N96 = T7[15];
  assign N97 = N182;
  assign T86 = (N98)? { 1'b1, 1'b1, 1'b1, 1'b0 } : 
               (N99)? T87 : 1'b0;
  assign N98 = T7[14];
  assign N99 = N183;
  assign T87 = (N100)? { 1'b1, 1'b1, 1'b0, 1'b1 } : 
               (N101)? T88 : 1'b0;
  assign N100 = T7[13];
  assign N101 = N184;
  assign T88 = (N102)? { 1'b1, 1'b1, 1'b0, 1'b0 } : 
               (N103)? T89 : 1'b0;
  assign N102 = T7[12];
  assign N103 = N185;
  assign T89 = (N104)? { 1'b1, 1'b0, 1'b1, 1'b1 } : 
               (N105)? T90 : 1'b0;
  assign N104 = T7[11];
  assign N105 = N186;
  assign T90 = (N106)? { 1'b1, 1'b0, 1'b1, 1'b0 } : 
               (N107)? T91 : 1'b0;
  assign N106 = T7[10];
  assign N107 = N187;
  assign T91 = (N108)? { 1'b1, 1'b0, 1'b0, 1'b1 } : 
               (N109)? T92 : 1'b0;
  assign N108 = T7[9];
  assign N109 = N188;
  assign T92[2:0] = (N110)? { 1'b0, 1'b0, 1'b0 } : 
                    (N111)? T93 : 1'b0;
  assign N110 = T92[3];
  assign N111 = N189;
  assign T93 = (N112)? { 1'b1, 1'b1, 1'b1 } : 
               (N113)? T94 : 1'b0;
  assign N112 = T7[7];
  assign N113 = N190;
  assign T94 = (N114)? { 1'b1, 1'b1, 1'b0 } : 
               (N115)? T95 : 1'b0;
  assign N114 = T7[6];
  assign N115 = N191;
  assign T95 = (N116)? { 1'b1, 1'b0, 1'b1 } : 
               (N117)? T96 : 1'b0;
  assign N116 = T7[5];
  assign N117 = N192;
  assign T96[1:0] = (N118)? { 1'b0, 1'b0 } : 
                    (N119)? T97 : 1'b0;
  assign N118 = T96[2];
  assign N119 = N193;
  assign T97 = (N120)? { 1'b1, 1'b1 } : 
               (N121)? T98 : 1'b0;
  assign N120 = T7[3];
  assign N121 = N194;
  assign T98[0] = (N122)? 1'b0 : 
                  (N123)? T7[1] : 1'b0;
  assign N122 = T98[1];
  assign N123 = N195;
  assign T7 = (N124)? T9 : 
              (N125)? io_in : 1'b0;
  assign N124 = io_out[64];
  assign N125 = N196;
  assign { roundedNorm[53:53], io_out[51:0] } = (N126)? { T16_53, T16 } : 
                                                (N127)? { 1'b0, normAbsIn[62:11] } : 1'b0;
  assign N126 = round;
  assign N127 = N197;
  assign T17 = (N128)? T18 : 
               (N129)? 1'b0 : 1'b0;
  assign N128 = N201;
  assign N129 = N198;
  assign T22 = (N130)? T23 : 
               (N131)? 1'b0 : 1'b0;
  assign N130 = N206;
  assign N131 = N205;
  assign T25 = (N132)? T26 : 
               (N133)? 1'b0 : 1'b0;
  assign N132 = N203;
  assign N133 = N202;
  assign normCount[5] = ~T37[5];
  assign normCount[4] = ~T37[4];
  assign normCount[3] = ~T37[3];
  assign normCount[2] = ~T37[2];
  assign normCount[1] = ~T37[1];
  assign normCount[0] = ~T37[0];
  assign N134 = ~T7[63];
  assign N135 = ~T7[62];
  assign N136 = ~T7[61];
  assign N137 = ~T7[60];
  assign N138 = ~T7[59];
  assign N139 = ~T7[58];
  assign N140 = ~T7[57];
  assign N141 = ~T7[56];
  assign N142 = ~T7[55];
  assign N143 = ~T7[54];
  assign N144 = ~T7[53];
  assign N145 = ~T7[52];
  assign N146 = ~T7[51];
  assign N147 = ~T7[50];
  assign N148 = ~T7[49];
  assign N149 = ~T7[48];
  assign N150 = ~T7[47];
  assign N151 = ~T7[46];
  assign N152 = ~T7[45];
  assign N153 = ~T7[44];
  assign N154 = ~T7[43];
  assign N155 = ~T7[42];
  assign N156 = ~T7[41];
  assign N157 = ~T7[40];
  assign N158 = ~T7[39];
  assign N159 = ~T7[38];
  assign N160 = ~T7[37];
  assign N161 = ~T7[36];
  assign N162 = ~T7[35];
  assign N163 = ~T7[34];
  assign N164 = ~T7[33];
  assign N165 = ~T7[32];
  assign T68[5] = T7[32];
  assign N166 = ~T7[31];
  assign N167 = ~T7[30];
  assign N168 = ~T7[29];
  assign N169 = ~T7[28];
  assign N170 = ~T7[27];
  assign N171 = ~T7[26];
  assign N172 = ~T7[25];
  assign N173 = ~T7[24];
  assign N174 = ~T7[23];
  assign N175 = ~T7[22];
  assign N176 = ~T7[21];
  assign N177 = ~T7[20];
  assign N178 = ~T7[19];
  assign N179 = ~T7[18];
  assign N180 = ~T7[17];
  assign N181 = ~T7[16];
  assign T84[4] = T7[16];
  assign N182 = ~T7[15];
  assign N183 = ~T7[14];
  assign N184 = ~T7[13];
  assign N185 = ~T7[12];
  assign N186 = ~T7[11];
  assign N187 = ~T7[10];
  assign N188 = ~T7[9];
  assign N189 = ~T7[8];
  assign T92[3] = T7[8];
  assign N190 = ~T7[7];
  assign N191 = ~T7[6];
  assign N192 = ~T7[5];
  assign N193 = ~T7[4];
  assign T96[2] = T7[4];
  assign N194 = ~T7[3];
  assign N195 = ~T7[2];
  assign T98[1] = T7[2];
  assign N196 = ~io_out[64];
  assign io_out[64] = io_signedIn & io_in[63];
  assign N197 = ~round;
  assign round = T21 | T17;
  assign N198 = ~N201;
  assign T18 = T19 & io_exceptionFlags[0];
  assign T19 = ~io_out[64];
  assign T21 = T25 | T22;
  assign T23 = io_out[64] & io_exceptionFlags[0];
  assign T26 = T29 | N199;
  assign T34[5] = ~normCount[5];
  assign T34[4] = ~normCount[4];
  assign T34[3] = ~normCount[3];
  assign T34[2] = ~normCount[2];
  assign T34[1] = ~normCount[1];
  assign T34[0] = ~normCount[0];

endmodule