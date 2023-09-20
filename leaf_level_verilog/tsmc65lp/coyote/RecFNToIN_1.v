module RecFNToIN_1
(
  io_in,
  io_roundingMode,
  io_signedOut,
  io_out,
  io_intExceptionFlags
);

  input [64:0] io_in;
  input [1:0] io_roundingMode;
  output [31:0] io_out;
  output [2:0] io_intExceptionFlags;
  input io_signedOut;
  wire [31:0] io_out,excValue,roundedInt,T62,onesCompUnroundedInt,T61,T66;
  wire [2:0] io_intExceptionFlags;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,T3,T2,roundInexact,T4,T5,N12,
  overflow_signed,overflow_unsigned,T36,T15,roundIncr,T20,T16,T17,T18,T24,T21,T22,
  roundIncr_nearestEven,T30,T25,N13,T33,T43,T37,T40,roundCarryBut2,T38,T44,N14,T45,T50,T46,T47,
  T49,T58,T51,T52,T53,T56,T54,T74,N15,T63,N16,N17,T65,T68,T69,excSign,T70,isNaN,
  T73,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N37,
  N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,
  N58,N59,N60,N61,N62,N63,N64,N65,N66;
  wire [0:0] T8;
  wire [50:0] T10;
  wire [83:51] shiftedSig;
  wire [4:0] T11;
  wire [31:31] T64,T72;
  wire [30:30] T75;
  assign T8[0] = T10 != 1'b0;
  assign { shiftedSig, T10 } = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, io_in[63:63], io_in[51:0] } << T11;
  assign T33 = shiftedSig[52:51] == { 1'b1, 1'b1 };
  assign T38 = shiftedSig[81:52] == { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 };
  assign T54 = shiftedSig[82:52] != 1'b0;
  assign N18 = ~io_in[56];
  assign N19 = ~io_in[55];
  assign N20 = ~io_in[54];
  assign N21 = ~io_in[53];
  assign N22 = ~io_in[52];
  assign N23 = io_in[61] | io_in[62];
  assign N24 = io_in[60] | N23;
  assign N25 = io_in[59] | N24;
  assign N26 = io_in[58] | N25;
  assign N27 = io_in[57] | N26;
  assign N28 = N18 | N27;
  assign N29 = N19 | N28;
  assign N30 = N20 | N29;
  assign N31 = N21 | N30;
  assign N32 = N22 | N31;
  assign N33 = ~N32;
  assign N34 = io_in[52] | N31;
  assign N35 = ~N34;
  assign io_intExceptionFlags[2] = io_in[62] & io_in[63];
  assign N37 = io_roundingMode[0] & io_roundingMode[1];
  assign N38 = io_roundingMode[0] | io_roundingMode[1];
  assign N39 = ~N38;
  assign N40 = ~io_roundingMode[1];
  assign N41 = io_roundingMode[0] | N40;
  assign N42 = ~N41;
  assign N43 = T8[0] & shiftedSig[51];
  assign N44 = T8[0] | shiftedSig[51];
  assign N45 = T8[0] | shiftedSig[51];
  assign N46 = io_in[62] | io_in[63];
  assign N47 = io_in[61] | N46;
  assign N48 = ~N47;
  assign N49 = io_in[61] & io_in[62];
  assign N50 = io_in[60] & N49;
  assign N51 = io_in[59] & N50;
  assign N52 = io_in[58] & N51;
  assign N53 = io_in[57] & N52;
  assign N54 = io_in[56] & N53;
  assign N55 = io_in[55] & N54;
  assign N56 = io_in[54] & N55;
  assign N57 = io_in[53] & N56;
  assign N58 = io_in[52] & N57;
  assign T62 = onesCompUnroundedInt + 1'b1;
  assign roundInexact = (N0)? N45 : 
                        (N1)? T5 : 1'b0;
  assign N0 = io_in[63];
  assign N1 = N14;
  assign T11 = (N0)? io_in[56:52] : 
               (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign io_intExceptionFlags[1] = (N2)? overflow_signed : 
                                   (N3)? overflow_unsigned : 1'b0;
  assign N2 = io_signedOut;
  assign N3 = N12;
  assign overflow_unsigned = (N0)? T36 : 
                             (N1)? T15 : 1'b0;
  assign roundIncr_nearestEven = (N0)? T30 : 
                                 (N1)? T25 : 1'b0;
  assign T25 = (N4)? N44 : 
               (N5)? 1'b0 : 1'b0;
  assign N4 = N58;
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
                                (N11)? shiftedSig[83:52] : 1'b0;
  assign N10 = io_in[64];
  assign N11 = N17;
  assign io_intExceptionFlags[0] = T3 & T2;
  assign T2 = ~io_intExceptionFlags[1];
  assign T3 = roundInexact & T4;
  assign T4 = ~io_intExceptionFlags[2];
  assign T5 = ~N48;
  assign N12 = ~io_signedOut;
  assign T15 = io_in[64] & roundIncr;
  assign roundIncr = T20 | T16;
  assign T16 = N37 & T17;
  assign T17 = T18 & roundInexact;
  assign T18 = ~io_in[64];
  assign T20 = T24 | T21;
  assign T21 = N42 & T22;
  assign T22 = io_in[64] & roundInexact;
  assign T24 = N39 & roundIncr_nearestEven;
  assign N13 = ~N58;
  assign T30 = T33 | N43;
  assign T36 = T43 | T37;
  assign T37 = T40 & roundCarryBut2;
  assign roundCarryBut2 = T38 & roundIncr;
  assign T40 = N33 & shiftedSig[82];
  assign T43 = io_in[64] | T44;
  assign T44 = N62 | io_in[57];
  assign N62 = N61 | io_in[58];
  assign N61 = N60 | io_in[59];
  assign N60 = N59 | io_in[60];
  assign N59 = io_in[62] | io_in[61];
  assign N14 = ~io_in[63];
  assign T45 = T50 | T46;
  assign T46 = T47 & roundCarryBut2;
  assign T47 = T49 & N35;
  assign T49 = ~io_in[64];
  assign T50 = T58 | T51;
  assign T51 = N33 & T52;
  assign T52 = T53 | roundIncr;
  assign T53 = T56 | T54;
  assign T56 = ~io_in[64];
  assign T58 = N66 | io_in[57];
  assign N66 = N65 | io_in[58];
  assign N65 = N64 | io_in[59];
  assign N64 = N63 | io_in[60];
  assign N63 = io_in[62] | io_in[61];
  assign N15 = ~T74;
  assign N16 = ~T63;
  assign N17 = ~io_in[64];
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
  assign excValue[31] = T66[31] | T64[31];
  assign excValue[30] = T66[30] | T64[31];
  assign excValue[29] = T66[29] | T64[31];
  assign excValue[28] = T66[28] | T64[31];
  assign excValue[27] = T66[27] | T64[31];
  assign excValue[26] = T66[26] | T64[31];
  assign excValue[25] = T66[25] | T64[31];
  assign excValue[24] = T66[24] | T64[31];
  assign excValue[23] = T66[23] | T64[31];
  assign excValue[22] = T66[22] | T64[31];
  assign excValue[21] = T66[21] | T64[31];
  assign excValue[20] = T66[20] | T64[31];
  assign excValue[19] = T66[19] | T64[31];
  assign excValue[18] = T66[18] | T64[31];
  assign excValue[17] = T66[17] | T64[31];
  assign excValue[16] = T66[16] | T64[31];
  assign excValue[15] = T66[15] | T64[31];
  assign excValue[14] = T66[14] | T64[31];
  assign excValue[13] = T66[13] | T64[31];
  assign excValue[12] = T66[12] | T64[31];
  assign excValue[11] = T66[11] | T64[31];
  assign excValue[10] = T66[10] | T64[31];
  assign excValue[9] = T66[9] | T64[31];
  assign excValue[8] = T66[8] | T64[31];
  assign excValue[7] = T66[7] | T64[31];
  assign excValue[6] = T66[6] | T64[31];
  assign excValue[5] = T66[5] | T64[31];
  assign excValue[4] = T66[4] | T64[31];
  assign excValue[3] = T66[3] | T64[31];
  assign excValue[2] = T66[2] | T64[31];
  assign excValue[1] = T66[1] | T64[31];
  assign excValue[0] = T66[0] | T64[31];
  assign T64[31] = T65;
  assign T65 = ~io_signedOut;
  assign T66[31] = T72[31] | 1'b0;
  assign T66[30] = 1'b0 | T75[30];
  assign T66[29] = 1'b0 | T75[30];
  assign T66[28] = 1'b0 | T75[30];
  assign T66[27] = 1'b0 | T75[30];
  assign T66[26] = 1'b0 | T75[30];
  assign T66[25] = 1'b0 | T75[30];
  assign T66[24] = 1'b0 | T75[30];
  assign T66[23] = 1'b0 | T75[30];
  assign T66[22] = 1'b0 | T75[30];
  assign T66[21] = 1'b0 | T75[30];
  assign T66[20] = 1'b0 | T75[30];
  assign T66[19] = 1'b0 | T75[30];
  assign T66[18] = 1'b0 | T75[30];
  assign T66[17] = 1'b0 | T75[30];
  assign T66[16] = 1'b0 | T75[30];
  assign T66[15] = 1'b0 | T75[30];
  assign T66[14] = 1'b0 | T75[30];
  assign T66[13] = 1'b0 | T75[30];
  assign T66[12] = 1'b0 | T75[30];
  assign T66[11] = 1'b0 | T75[30];
  assign T66[10] = 1'b0 | T75[30];
  assign T66[9] = 1'b0 | T75[30];
  assign T66[8] = 1'b0 | T75[30];
  assign T66[7] = 1'b0 | T75[30];
  assign T66[6] = 1'b0 | T75[30];
  assign T66[5] = 1'b0 | T75[30];
  assign T66[4] = 1'b0 | T75[30];
  assign T66[3] = 1'b0 | T75[30];
  assign T66[2] = 1'b0 | T75[30];
  assign T66[1] = 1'b0 | T75[30];
  assign T66[0] = 1'b0 | T75[30];
  assign T75[30] = T68;
  assign T68 = io_signedOut & T69;
  assign T69 = ~excSign;
  assign excSign = io_in[64] & T70;
  assign T70 = ~isNaN;
  assign isNaN = io_intExceptionFlags[2] & io_in[61];
  assign T72[31] = T73;
  assign T73 = io_signedOut & excSign;
  assign T74 = io_intExceptionFlags[2] | io_intExceptionFlags[1];

endmodule