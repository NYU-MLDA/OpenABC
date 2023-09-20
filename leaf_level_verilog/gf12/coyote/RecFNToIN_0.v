module RecFNToIN_0
(
  io_in,
  io_roundingMode,
  io_signedOut,
  io_out,
  io_intExceptionFlags
);

  input [64:0] io_in;
  input [1:0] io_roundingMode;
  output [63:0] io_out;
  output [2:0] io_intExceptionFlags;
  input io_signedOut;
  wire [63:0] io_out,excValue,roundedInt,T62,onesCompUnroundedInt,T61,T66;
  wire [2:0] io_intExceptionFlags;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,T3,T2,roundInexact,T4,T5,N12,
  overflow_signed,overflow_unsigned,T36,T15,roundIncr,T20,T16,T17,T18,T24,T21,T22,
  roundIncr_nearestEven,T30,T25,N13,T33,T43,T37,T40,roundCarryBut2,T38,T44,N14,T45,T50,T46,T47,
  T49,T58,T51,T52,T53,T56,T54,T74,N15,T63,N16,N17,T65,T68,T69,excSign,T70,isNaN,
  T73,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,
  N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,
  N58,N59,N60,N61,N62,N63,N64,N65;
  wire [0:0] T8;
  wire [50:0] T10;
  wire [115:51] shiftedSig;
  wire [5:0] T11;
  wire [63:63] T64,T72;
  wire [62:62] T75;
  assign T8[0] = T10 != 1'b0;
  assign { shiftedSig, T10 } = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, io_in[63:63], io_in[51:0] } << T11;
  assign T33 = shiftedSig[52:51] == { 1'b1, 1'b1 };
  assign T38 = shiftedSig[113:52] == { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 };
  assign T54 = shiftedSig[114:52] != 1'b0;
  assign N18 = ~io_in[57];
  assign N19 = ~io_in[56];
  assign N20 = ~io_in[55];
  assign N21 = ~io_in[54];
  assign N22 = ~io_in[53];
  assign N23 = ~io_in[52];
  assign N24 = io_in[61] | io_in[62];
  assign N25 = io_in[60] | N24;
  assign N26 = io_in[59] | N25;
  assign N27 = io_in[58] | N26;
  assign N28 = N18 | N27;
  assign N29 = N19 | N28;
  assign N30 = N20 | N29;
  assign N31 = N21 | N30;
  assign N32 = N22 | N31;
  assign N33 = N23 | N32;
  assign N34 = ~N33;
  assign N35 = io_in[52] | N32;
  assign N36 = ~N35;
  assign io_intExceptionFlags[2] = io_in[62] & io_in[63];
  assign N38 = io_roundingMode[0] & io_roundingMode[1];
  assign N39 = io_roundingMode[0] | io_roundingMode[1];
  assign N40 = ~N39;
  assign N41 = ~io_roundingMode[1];
  assign N42 = io_roundingMode[0] | N41;
  assign N43 = ~N42;
  assign N44 = T8[0] & shiftedSig[51];
  assign N45 = T8[0] | shiftedSig[51];
  assign N46 = T8[0] | shiftedSig[51];
  assign N47 = io_in[62] | io_in[63];
  assign N48 = io_in[61] | N47;
  assign N49 = ~N48;
  assign N50 = io_in[61] & io_in[62];
  assign N51 = io_in[60] & N50;
  assign N52 = io_in[59] & N51;
  assign N53 = io_in[58] & N52;
  assign N54 = io_in[57] & N53;
  assign N55 = io_in[56] & N54;
  assign N56 = io_in[55] & N55;
  assign N57 = io_in[54] & N56;
  assign N58 = io_in[53] & N57;
  assign N59 = io_in[52] & N58;
  assign T62 = onesCompUnroundedInt + 1'b1;
  assign roundInexact = (N0)? N46 : 
                        (N1)? T5 : 1'b0;
  assign N0 = io_in[63];
  assign N1 = N14;
  assign T11 = (N0)? io_in[57:52] : 
               (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign io_intExceptionFlags[1] = (N2)? overflow_signed : 
                                   (N3)? overflow_unsigned : 1'b0;
  assign N2 = io_signedOut;
  assign N3 = N12;
  assign overflow_unsigned = (N0)? T36 : 
                             (N1)? T15 : 1'b0;
  assign roundIncr_nearestEven = (N0)? T30 : 
                                 (N1)? T25 : 1'b0;
  assign T25 = (N4)? N45 : 
               (N5)? 1'b0 : 1'b0;
  assign N4 = N59;
  assign N5 = N13;
  assign overflow_signed = (N0)? T45 : 
                           (N1)? 1'b0 : 1'b0;
  assign io_out = (N6)? excValue : 
                  (N7)? roundedInt : 1'b0;
  assign N6 = T74;
  assign N7 = N15;
  assign roundedInt = (N8)? T62 : 
                      (N9)? onesCompUnroundedInt : 1'b0;
  assign N8 = T63;
  assign N9 = N16;
  assign onesCompUnroundedInt = (N10)? T61 : 
                                (N11)? shiftedSig[115:52] : 1'b0;
  assign N10 = io_in[64];
  assign N11 = N17;
  assign io_intExceptionFlags[0] = T3 & T2;
  assign T2 = ~io_intExceptionFlags[1];
  assign T3 = roundInexact & T4;
  assign T4 = ~io_intExceptionFlags[2];
  assign T5 = ~N49;
  assign N12 = ~io_signedOut;
  assign T15 = io_in[64] & roundIncr;
  assign roundIncr = T20 | T16;
  assign T16 = N38 & T17;
  assign T17 = T18 & roundInexact;
  assign T18 = ~io_in[64];
  assign T20 = T24 | T21;
  assign T21 = N43 & T22;
  assign T22 = io_in[64] & roundInexact;
  assign T24 = N40 & roundIncr_nearestEven;
  assign N13 = ~N59;
  assign T30 = T33 | N44;
  assign T36 = T43 | T37;
  assign T37 = T40 & roundCarryBut2;
  assign roundCarryBut2 = T38 & roundIncr;
  assign T40 = N34 & shiftedSig[114];
  assign T43 = io_in[64] | T44;
  assign T44 = N62 | io_in[58];
  assign N62 = N61 | io_in[59];
  assign N61 = N60 | io_in[60];
  assign N60 = io_in[62] | io_in[61];
  assign N14 = ~io_in[63];
  assign T45 = T50 | T46;
  assign T46 = T47 & roundCarryBut2;
  assign T47 = T49 & N36;
  assign T49 = ~io_in[64];
  assign T50 = T58 | T51;
  assign T51 = N34 & T52;
  assign T52 = T53 | roundIncr;
  assign T53 = T56 | T54;
  assign T56 = ~io_in[64];
  assign T58 = N65 | io_in[58];
  assign N65 = N64 | io_in[59];
  assign N64 = N63 | io_in[60];
  assign N63 = io_in[62] | io_in[61];
  assign N15 = ~T74;
  assign N16 = ~T63;
  assign N17 = ~io_in[64];
  assign T61[63] = ~shiftedSig[115];
  assign T61[62] = ~shiftedSig[114];
  assign T61[61] = ~shiftedSig[113];
  assign T61[60] = ~shiftedSig[112];
  assign T61[59] = ~shiftedSig[111];
  assign T61[58] = ~shiftedSig[110];
  assign T61[57] = ~shiftedSig[109];
  assign T61[56] = ~shiftedSig[108];
  assign T61[55] = ~shiftedSig[107];
  assign T61[54] = ~shiftedSig[106];
  assign T61[53] = ~shiftedSig[105];
  assign T61[52] = ~shiftedSig[104];
  assign T61[51] = ~shiftedSig[103];
  assign T61[50] = ~shiftedSig[102];
  assign T61[49] = ~shiftedSig[101];
  assign T61[48] = ~shiftedSig[100];
  assign T61[47] = ~shiftedSig[99];
  assign T61[46] = ~shiftedSig[98];
  assign T61[45] = ~shiftedSig[97];
  assign T61[44] = ~shiftedSig[96];
  assign T61[43] = ~shiftedSig[95];
  assign T61[42] = ~shiftedSig[94];
  assign T61[41] = ~shiftedSig[93];
  assign T61[40] = ~shiftedSig[92];
  assign T61[39] = ~shiftedSig[91];
  assign T61[38] = ~shiftedSig[90];
  assign T61[37] = ~shiftedSig[89];
  assign T61[36] = ~shiftedSig[88];
  assign T61[35] = ~shiftedSig[87];
  assign T61[34] = ~shiftedSig[86];
  assign T61[33] = ~shiftedSig[85];
  assign T61[32] = ~shiftedSig[84];
  assign T61[31] = ~shiftedSig[83];
  assign T61[30] = ~shiftedSig[82];
  assign T61[29] = ~shiftedSig[81];
  assign T61[28] = ~shiftedSig[80];
  assign T61[27] = ~shiftedSig[79];
  assign T61[26] = ~shiftedSig[78];
  assign T61[25] = ~shiftedSig[77];
  assign T61[24] = ~shiftedSig[76];
  assign T61[23] = ~shiftedSig[75];
  assign T61[22] = ~shiftedSig[74];
  assign T61[21] = ~shiftedSig[73];
  assign T61[20] = ~shiftedSig[72];
  assign T61[19] = ~shiftedSig[71];
  assign T61[18] = ~shiftedSig[70];
  assign T61[17] = ~shiftedSig[69];
  assign T61[16] = ~shiftedSig[68];
  assign T61[15] = ~shiftedSig[67];
  assign T61[14] = ~shiftedSig[66];
  assign T61[13] = ~shiftedSig[65];
  assign T61[12] = ~shiftedSig[64];
  assign T61[11] = ~shiftedSig[63];
  assign T61[10] = ~shiftedSig[62];
  assign T61[9] = ~shiftedSig[61];
  assign T61[8] = ~shiftedSig[60];
  assign T61[7] = ~shiftedSig[59];
  assign T61[6] = ~shiftedSig[58];
  assign T61[5] = ~shiftedSig[57];
  assign T61[4] = ~shiftedSig[56];
  assign T61[3] = ~shiftedSig[55];
  assign T61[2] = ~shiftedSig[54];
  assign T61[1] = ~shiftedSig[53];
  assign T61[0] = ~shiftedSig[52];
  assign T63 = roundIncr ^ io_in[64];
  assign excValue[63] = T66[63] | T64[63];
  assign excValue[62] = T66[62] | T64[63];
  assign excValue[61] = T66[61] | T64[63];
  assign excValue[60] = T66[60] | T64[63];
  assign excValue[59] = T66[59] | T64[63];
  assign excValue[58] = T66[58] | T64[63];
  assign excValue[57] = T66[57] | T64[63];
  assign excValue[56] = T66[56] | T64[63];
  assign excValue[55] = T66[55] | T64[63];
  assign excValue[54] = T66[54] | T64[63];
  assign excValue[53] = T66[53] | T64[63];
  assign excValue[52] = T66[52] | T64[63];
  assign excValue[51] = T66[51] | T64[63];
  assign excValue[50] = T66[50] | T64[63];
  assign excValue[49] = T66[49] | T64[63];
  assign excValue[48] = T66[48] | T64[63];
  assign excValue[47] = T66[47] | T64[63];
  assign excValue[46] = T66[46] | T64[63];
  assign excValue[45] = T66[45] | T64[63];
  assign excValue[44] = T66[44] | T64[63];
  assign excValue[43] = T66[43] | T64[63];
  assign excValue[42] = T66[42] | T64[63];
  assign excValue[41] = T66[41] | T64[63];
  assign excValue[40] = T66[40] | T64[63];
  assign excValue[39] = T66[39] | T64[63];
  assign excValue[38] = T66[38] | T64[63];
  assign excValue[37] = T66[37] | T64[63];
  assign excValue[36] = T66[36] | T64[63];
  assign excValue[35] = T66[35] | T64[63];
  assign excValue[34] = T66[34] | T64[63];
  assign excValue[33] = T66[33] | T64[63];
  assign excValue[32] = T66[32] | T64[63];
  assign excValue[31] = T66[31] | T64[63];
  assign excValue[30] = T66[30] | T64[63];
  assign excValue[29] = T66[29] | T64[63];
  assign excValue[28] = T66[28] | T64[63];
  assign excValue[27] = T66[27] | T64[63];
  assign excValue[26] = T66[26] | T64[63];
  assign excValue[25] = T66[25] | T64[63];
  assign excValue[24] = T66[24] | T64[63];
  assign excValue[23] = T66[23] | T64[63];
  assign excValue[22] = T66[22] | T64[63];
  assign excValue[21] = T66[21] | T64[63];
  assign excValue[20] = T66[20] | T64[63];
  assign excValue[19] = T66[19] | T64[63];
  assign excValue[18] = T66[18] | T64[63];
  assign excValue[17] = T66[17] | T64[63];
  assign excValue[16] = T66[16] | T64[63];
  assign excValue[15] = T66[15] | T64[63];
  assign excValue[14] = T66[14] | T64[63];
  assign excValue[13] = T66[13] | T64[63];
  assign excValue[12] = T66[12] | T64[63];
  assign excValue[11] = T66[11] | T64[63];
  assign excValue[10] = T66[10] | T64[63];
  assign excValue[9] = T66[9] | T64[63];
  assign excValue[8] = T66[8] | T64[63];
  assign excValue[7] = T66[7] | T64[63];
  assign excValue[6] = T66[6] | T64[63];
  assign excValue[5] = T66[5] | T64[63];
  assign excValue[4] = T66[4] | T64[63];
  assign excValue[3] = T66[3] | T64[63];
  assign excValue[2] = T66[2] | T64[63];
  assign excValue[1] = T66[1] | T64[63];
  assign excValue[0] = T66[0] | T64[63];
  assign T64[63] = T65;
  assign T65 = ~io_signedOut;
  assign T66[63] = T72[63] | 1'b0;
  assign T66[62] = 1'b0 | T75[62];
  assign T66[61] = 1'b0 | T75[62];
  assign T66[60] = 1'b0 | T75[62];
  assign T66[59] = 1'b0 | T75[62];
  assign T66[58] = 1'b0 | T75[62];
  assign T66[57] = 1'b0 | T75[62];
  assign T66[56] = 1'b0 | T75[62];
  assign T66[55] = 1'b0 | T75[62];
  assign T66[54] = 1'b0 | T75[62];
  assign T66[53] = 1'b0 | T75[62];
  assign T66[52] = 1'b0 | T75[62];
  assign T66[51] = 1'b0 | T75[62];
  assign T66[50] = 1'b0 | T75[62];
  assign T66[49] = 1'b0 | T75[62];
  assign T66[48] = 1'b0 | T75[62];
  assign T66[47] = 1'b0 | T75[62];
  assign T66[46] = 1'b0 | T75[62];
  assign T66[45] = 1'b0 | T75[62];
  assign T66[44] = 1'b0 | T75[62];
  assign T66[43] = 1'b0 | T75[62];
  assign T66[42] = 1'b0 | T75[62];
  assign T66[41] = 1'b0 | T75[62];
  assign T66[40] = 1'b0 | T75[62];
  assign T66[39] = 1'b0 | T75[62];
  assign T66[38] = 1'b0 | T75[62];
  assign T66[37] = 1'b0 | T75[62];
  assign T66[36] = 1'b0 | T75[62];
  assign T66[35] = 1'b0 | T75[62];
  assign T66[34] = 1'b0 | T75[62];
  assign T66[33] = 1'b0 | T75[62];
  assign T66[32] = 1'b0 | T75[62];
  assign T66[31] = 1'b0 | T75[62];
  assign T66[30] = 1'b0 | T75[62];
  assign T66[29] = 1'b0 | T75[62];
  assign T66[28] = 1'b0 | T75[62];
  assign T66[27] = 1'b0 | T75[62];
  assign T66[26] = 1'b0 | T75[62];
  assign T66[25] = 1'b0 | T75[62];
  assign T66[24] = 1'b0 | T75[62];
  assign T66[23] = 1'b0 | T75[62];
  assign T66[22] = 1'b0 | T75[62];
  assign T66[21] = 1'b0 | T75[62];
  assign T66[20] = 1'b0 | T75[62];
  assign T66[19] = 1'b0 | T75[62];
  assign T66[18] = 1'b0 | T75[62];
  assign T66[17] = 1'b0 | T75[62];
  assign T66[16] = 1'b0 | T75[62];
  assign T66[15] = 1'b0 | T75[62];
  assign T66[14] = 1'b0 | T75[62];
  assign T66[13] = 1'b0 | T75[62];
  assign T66[12] = 1'b0 | T75[62];
  assign T66[11] = 1'b0 | T75[62];
  assign T66[10] = 1'b0 | T75[62];
  assign T66[9] = 1'b0 | T75[62];
  assign T66[8] = 1'b0 | T75[62];
  assign T66[7] = 1'b0 | T75[62];
  assign T66[6] = 1'b0 | T75[62];
  assign T66[5] = 1'b0 | T75[62];
  assign T66[4] = 1'b0 | T75[62];
  assign T66[3] = 1'b0 | T75[62];
  assign T66[2] = 1'b0 | T75[62];
  assign T66[1] = 1'b0 | T75[62];
  assign T66[0] = 1'b0 | T75[62];
  assign T75[62] = T68;
  assign T68 = io_signedOut & T69;
  assign T69 = ~excSign;
  assign excSign = io_in[64] & T70;
  assign T70 = ~isNaN;
  assign isNaN = io_intExceptionFlags[2] & io_in[61];
  assign T72[63] = T73;
  assign T73 = io_signedOut & excSign;
  assign T74 = io_intExceptionFlags[2] | io_intExceptionFlags[1];

endmodule