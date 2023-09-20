module MulAddRecFN_preMul_0
(
  io_op,
  io_a,
  io_b,
  io_c,
  io_roundingMode,
  io_mulAddA,
  io_mulAddB,
  io_mulAddC,
  io_toPostMul_highExpA,
  io_toPostMul_isNaN_isQuietNaNA,
  io_toPostMul_highExpB,
  io_toPostMul_isNaN_isQuietNaNB,
  io_toPostMul_signProd,
  io_toPostMul_isZeroProd,
  io_toPostMul_opSignC,
  io_toPostMul_highExpC,
  io_toPostMul_isNaN_isQuietNaNC,
  io_toPostMul_isCDominant,
  io_toPostMul_CAlignDist_0,
  io_toPostMul_CAlignDist,
  io_toPostMul_bit0AlignedNegSigC,
  io_toPostMul_highAlignedNegSigC,
  io_toPostMul_sExpSum,
  io_toPostMul_roundingMode
);

  input [1:0] io_op;
  input [32:0] io_a;
  input [32:0] io_b;
  input [32:0] io_c;
  input [1:0] io_roundingMode;
  output [23:0] io_mulAddA;
  output [23:0] io_mulAddB;
  output [47:0] io_mulAddC;
  output [2:0] io_toPostMul_highExpA;
  output [2:0] io_toPostMul_highExpB;
  output [2:0] io_toPostMul_highExpC;
  output [6:0] io_toPostMul_CAlignDist;
  output [25:0] io_toPostMul_highAlignedNegSigC;
  output [10:0] io_toPostMul_sExpSum;
  output [1:0] io_toPostMul_roundingMode;
  output io_toPostMul_isNaN_isQuietNaNA;
  output io_toPostMul_isNaN_isQuietNaNB;
  output io_toPostMul_signProd;
  output io_toPostMul_isZeroProd;
  output io_toPostMul_opSignC;
  output io_toPostMul_isNaN_isQuietNaNC;
  output io_toPostMul_isCDominant;
  output io_toPostMul_CAlignDist_0;
  output io_toPostMul_bit0AlignedNegSigC;
  wire [23:0] io_mulAddA,io_mulAddB,T17,CExtraMask,T75;
  wire [47:0] io_mulAddC;
  wire [2:0] io_toPostMul_highExpA,io_toPostMul_highExpB,io_toPostMul_highExpC;
  wire [6:0] io_toPostMul_CAlignDist,T33;
  wire [25:0] io_toPostMul_highAlignedNegSigC;
  wire [10:0] io_toPostMul_sExpSum,sExpAlignedProd,T0,sNatCAlignDist;
  wire [1:0] io_toPostMul_roundingMode;
  wire io_toPostMul_isNaN_isQuietNaNA,io_toPostMul_isNaN_isQuietNaNB,
  io_toPostMul_signProd,io_toPostMul_isZeroProd,io_toPostMul_opSignC,io_toPostMul_isNaN_isQuietNaNC,
  io_toPostMul_isCDominant,io_toPostMul_CAlignDist_0,
  io_toPostMul_bit0AlignedNegSigC,N0,N1,N2,N3,N4,N5,CAlignDist_floor,N6,T1_8,T15,T19_5,T19_3,T19_1,T20_4,T20_2,
  T23_3,T23_2,T35,N7,T44_13,T44_11,T44_9,T44_7,T44_5,T44_3,T44_1,T45_12,T45_10,
  T45_8,T45_6,T45_4,T45_2,T48_11,T48_10,T48_7,T48_6,T48_3,T48_2,T49_9,T49_8,T49_5,
  T49_4,T52_7,T52_6,T52_5,T52_4,T71_0,N8,T77,T82,T79,T80,N9,N10,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,SV2V_UNCONNECTED_1,SV2V_UNCONNECTED_2,
  SV2V_UNCONNECTED_3,SV2V_UNCONNECTED_4,SV2V_UNCONNECTED_5,SV2V_UNCONNECTED_6,
  SV2V_UNCONNECTED_7,SV2V_UNCONNECTED_8,SV2V_UNCONNECTED_9,
  SV2V_UNCONNECTED_10,SV2V_UNCONNECTED_11,SV2V_UNCONNECTED_12,
  SV2V_UNCONNECTED_13,SV2V_UNCONNECTED_14,SV2V_UNCONNECTED_15,SV2V_UNCONNECTED_16,
  SV2V_UNCONNECTED_17,SV2V_UNCONNECTED_18,SV2V_UNCONNECTED_19,
  SV2V_UNCONNECTED_20,SV2V_UNCONNECTED_21,SV2V_UNCONNECTED_22,
  SV2V_UNCONNECTED_23,SV2V_UNCONNECTED_24,SV2V_UNCONNECTED_25,SV2V_UNCONNECTED_26,
  SV2V_UNCONNECTED_27,SV2V_UNCONNECTED_28,SV2V_UNCONNECTED_29,
  SV2V_UNCONNECTED_30,SV2V_UNCONNECTED_31,SV2V_UNCONNECTED_32,
  SV2V_UNCONNECTED_33,SV2V_UNCONNECTED_34,SV2V_UNCONNECTED_35,SV2V_UNCONNECTED_36,
  SV2V_UNCONNECTED_37,SV2V_UNCONNECTED_38,SV2V_UNCONNECTED_39,
  SV2V_UNCONNECTED_40,SV2V_UNCONNECTED_41,SV2V_UNCONNECTED_42,
  SV2V_UNCONNECTED_43,SV2V_UNCONNECTED_44,SV2V_UNCONNECTED_45,SV2V_UNCONNECTED_46,
  SV2V_UNCONNECTED_47,SV2V_UNCONNECTED_48,SV2V_UNCONNECTED_49,
  SV2V_UNCONNECTED_50,SV2V_UNCONNECTED_51,SV2V_UNCONNECTED_52;
  wire [10:10] T1;
  wire [0:0] T92;
  wire [23:23] sigC;
  wire [7:7] T19,T22;
  wire [6:6] T20;
  wire [7:6] T23,T26;
  wire [5:4] T24;
  wire [7:4] T27,T30;
  wire [15:0] T31;
  wire [15:15] T44,T47;
  wire [14:14] T45;
  wire [15:14] T48,T51;
  wire [13:12] T49;
  wire [15:12] T52,T55;
  wire [11:8] T53;
  wire [74:49] T71;
  assign io_toPostMul_highExpA[2] = io_a[31];
  assign io_toPostMul_highExpA[1] = io_a[30];
  assign io_toPostMul_highExpA[0] = io_a[29];
  assign io_toPostMul_isNaN_isQuietNaNA = io_a[22];
  assign io_mulAddA[22] = io_a[22];
  assign io_mulAddA[21] = io_a[21];
  assign io_mulAddA[20] = io_a[20];
  assign io_mulAddA[19] = io_a[19];
  assign io_mulAddA[18] = io_a[18];
  assign io_mulAddA[17] = io_a[17];
  assign io_mulAddA[16] = io_a[16];
  assign io_mulAddA[15] = io_a[15];
  assign io_mulAddA[14] = io_a[14];
  assign io_mulAddA[13] = io_a[13];
  assign io_mulAddA[12] = io_a[12];
  assign io_mulAddA[11] = io_a[11];
  assign io_mulAddA[10] = io_a[10];
  assign io_mulAddA[9] = io_a[9];
  assign io_mulAddA[8] = io_a[8];
  assign io_mulAddA[7] = io_a[7];
  assign io_mulAddA[6] = io_a[6];
  assign io_mulAddA[5] = io_a[5];
  assign io_mulAddA[4] = io_a[4];
  assign io_mulAddA[3] = io_a[3];
  assign io_mulAddA[2] = io_a[2];
  assign io_mulAddA[1] = io_a[1];
  assign io_mulAddA[0] = io_a[0];
  assign io_toPostMul_highExpB[2] = io_b[31];
  assign io_toPostMul_highExpB[1] = io_b[30];
  assign io_toPostMul_highExpB[0] = io_b[29];
  assign io_toPostMul_isNaN_isQuietNaNB = io_b[22];
  assign io_mulAddB[22] = io_b[22];
  assign io_mulAddB[21] = io_b[21];
  assign io_mulAddB[20] = io_b[20];
  assign io_mulAddB[19] = io_b[19];
  assign io_mulAddB[18] = io_b[18];
  assign io_mulAddB[17] = io_b[17];
  assign io_mulAddB[16] = io_b[16];
  assign io_mulAddB[15] = io_b[15];
  assign io_mulAddB[14] = io_b[14];
  assign io_mulAddB[13] = io_b[13];
  assign io_mulAddB[12] = io_b[12];
  assign io_mulAddB[11] = io_b[11];
  assign io_mulAddB[10] = io_b[10];
  assign io_mulAddB[9] = io_b[9];
  assign io_mulAddB[8] = io_b[8];
  assign io_mulAddB[7] = io_b[7];
  assign io_mulAddB[6] = io_b[6];
  assign io_mulAddB[5] = io_b[5];
  assign io_mulAddB[4] = io_b[4];
  assign io_mulAddB[3] = io_b[3];
  assign io_mulAddB[2] = io_b[2];
  assign io_mulAddB[1] = io_b[1];
  assign io_mulAddB[0] = io_b[0];
  assign io_toPostMul_highExpC[2] = io_c[31];
  assign io_toPostMul_highExpC[1] = io_c[30];
  assign io_toPostMul_highExpC[0] = io_c[29];
  assign io_toPostMul_isNaN_isQuietNaNC = io_c[22];
  assign io_toPostMul_roundingMode[1] = io_roundingMode[1];
  assign io_toPostMul_roundingMode[0] = io_roundingMode[0];
  assign T35 = sNatCAlignDist[9:0] < { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0 };
  assign { SV2V_UNCONNECTED_1, io_toPostMul_highAlignedNegSigC, io_mulAddC } = $signed({ T71, T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71[49:49], T71_0 }) >>> io_toPostMul_CAlignDist;
  assign T77 = sNatCAlignDist[9:0] == 1'b0;
  assign T80 = sNatCAlignDist[9:0] < { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1 };
  assign N9 = T17[22] | T17[23];
  assign N10 = T17[21] | N9;
  assign N11 = T17[20] | N10;
  assign N12 = T17[19] | N11;
  assign N13 = T17[18] | N12;
  assign N14 = T17[17] | N13;
  assign N15 = T17[16] | N14;
  assign N16 = T17[15] | N15;
  assign N17 = T17[14] | N16;
  assign N18 = T17[13] | N17;
  assign N19 = T17[12] | N18;
  assign N20 = T17[11] | N19;
  assign N21 = T17[10] | N20;
  assign N22 = T17[9] | N21;
  assign N23 = T17[8] | N22;
  assign N24 = T17[7] | N23;
  assign N25 = T17[6] | N24;
  assign N26 = T17[5] | N25;
  assign N27 = T17[4] | N26;
  assign N28 = T17[3] | N27;
  assign N29 = T17[2] | N28;
  assign N30 = T17[1] | N29;
  assign N31 = T17[0] | N30;
  assign N32 = io_c[30] | io_c[31];
  assign N33 = io_c[29] | N32;
  assign N34 = ~N33;
  assign { SV2V_UNCONNECTED_2, SV2V_UNCONNECTED_3, SV2V_UNCONNECTED_4, SV2V_UNCONNECTED_5, SV2V_UNCONNECTED_6, SV2V_UNCONNECTED_7, SV2V_UNCONNECTED_8, SV2V_UNCONNECTED_9, SV2V_UNCONNECTED_10, SV2V_UNCONNECTED_11, SV2V_UNCONNECTED_12, SV2V_UNCONNECTED_13, SV2V_UNCONNECTED_14, SV2V_UNCONNECTED_15, SV2V_UNCONNECTED_16, SV2V_UNCONNECTED_17, SV2V_UNCONNECTED_18, SV2V_UNCONNECTED_19, SV2V_UNCONNECTED_20, SV2V_UNCONNECTED_21, SV2V_UNCONNECTED_22, SV2V_UNCONNECTED_23, SV2V_UNCONNECTED_24, SV2V_UNCONNECTED_25, SV2V_UNCONNECTED_26, SV2V_UNCONNECTED_27, SV2V_UNCONNECTED_28, SV2V_UNCONNECTED_29, SV2V_UNCONNECTED_30, SV2V_UNCONNECTED_31, SV2V_UNCONNECTED_32, SV2V_UNCONNECTED_33, SV2V_UNCONNECTED_34, SV2V_UNCONNECTED_35, SV2V_UNCONNECTED_36, SV2V_UNCONNECTED_37, SV2V_UNCONNECTED_38, SV2V_UNCONNECTED_39, SV2V_UNCONNECTED_40, SV2V_UNCONNECTED_41, SV2V_UNCONNECTED_42, SV2V_UNCONNECTED_43, SV2V_UNCONNECTED_44, SV2V_UNCONNECTED_45, SV2V_UNCONNECTED_46, SV2V_UNCONNECTED_47, SV2V_UNCONNECTED_48, SV2V_UNCONNECTED_49, SV2V_UNCONNECTED_50, SV2V_UNCONNECTED_51, SV2V_UNCONNECTED_52, T30, T27, T31 } = $signed({ 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }) >>> io_toPostMul_CAlignDist;
  assign N35 = io_a[30] | io_a[31];
  assign N36 = io_a[29] | N35;
  assign N37 = ~N36;
  assign N38 = io_b[30] | io_b[31];
  assign N39 = io_b[29] | N38;
  assign N40 = ~N39;
  assign { T1[10:10], T1_8 } = 1'b0 - T92[0];
  assign T0 = io_a[31:23] + { T1[10:10], T1[10:10], T1_8, io_b[30:23] };
  assign { T71[49:49], T71_0 } = 1'b0 - T71[74];
  assign sExpAlignedProd = T0 + { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 };
  assign sNatCAlignDist = sExpAlignedProd - io_c[31:23];
  assign io_toPostMul_sExpSum = (N0)? { 1'b0, 1'b0, io_c[31:23] } : 
                                (N1)? sExpAlignedProd : 1'b0;
  assign N0 = CAlignDist_floor;
  assign N1 = N6;
  assign io_toPostMul_CAlignDist = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                   (N1)? T33 : 1'b0;
  assign T33 = (N2)? sNatCAlignDist[6:0] : 
               (N3)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0 } : 1'b0;
  assign N2 = T35;
  assign N3 = N7;
  assign T71[73:50] = (N4)? T75 : 
                      (N5)? { sigC[23:23], io_c[22:0] } : 1'b0;
  assign N4 = T71[74];
  assign N5 = N8;
  assign N6 = ~CAlignDist_floor;
  assign T92[0] = ~io_b[31];
  assign CAlignDist_floor = io_toPostMul_isZeroProd | sNatCAlignDist[10];
  assign io_toPostMul_isZeroProd = N37 | N40;
  assign io_toPostMul_bit0AlignedNegSigC = N31 ^ T71[74];
  assign T71[74] = io_toPostMul_signProd ^ io_toPostMul_opSignC;
  assign io_toPostMul_opSignC = io_c[32] ^ io_op[0];
  assign io_toPostMul_signProd = T15 ^ io_op[1];
  assign T15 = io_a[32] ^ io_b[32];
  assign T17[23] = sigC[23] & CExtraMask[23];
  assign T17[22] = io_c[22] & CExtraMask[22];
  assign T17[21] = io_c[21] & CExtraMask[21];
  assign T17[20] = io_c[20] & CExtraMask[20];
  assign T17[19] = io_c[19] & CExtraMask[19];
  assign T17[18] = io_c[18] & CExtraMask[18];
  assign T17[17] = io_c[17] & CExtraMask[17];
  assign T17[16] = io_c[16] & CExtraMask[16];
  assign T17[15] = io_c[15] & CExtraMask[15];
  assign T17[14] = io_c[14] & CExtraMask[14];
  assign T17[13] = io_c[13] & CExtraMask[13];
  assign T17[12] = io_c[12] & CExtraMask[12];
  assign T17[11] = io_c[11] & CExtraMask[11];
  assign T17[10] = io_c[10] & CExtraMask[10];
  assign T17[9] = io_c[9] & CExtraMask[9];
  assign T17[8] = io_c[8] & CExtraMask[8];
  assign T17[7] = io_c[7] & CExtraMask[7];
  assign T17[6] = io_c[6] & CExtraMask[6];
  assign T17[5] = io_c[5] & CExtraMask[5];
  assign T17[4] = io_c[4] & CExtraMask[4];
  assign T17[3] = io_c[3] & CExtraMask[3];
  assign T17[2] = io_c[2] & CExtraMask[2];
  assign T17[1] = io_c[1] & CExtraMask[1];
  assign T17[0] = io_c[0] & CExtraMask[0];
  assign CExtraMask[7] = 1'b0 | T19[7];
  assign CExtraMask[6] = T22[7] | 1'b0;
  assign CExtraMask[5] = 1'b0 | T19_5;
  assign CExtraMask[4] = T20[6] | 1'b0;
  assign CExtraMask[3] = 1'b0 | T19_3;
  assign CExtraMask[2] = T20_4 | 1'b0;
  assign CExtraMask[1] = 1'b0 | T19_1;
  assign CExtraMask[0] = T20_2 | 1'b0;
  assign T22[7] = 1'b0 | T23[7];
  assign T19[7] = 1'b0 | T23[6];
  assign T20[6] = T26[7] | 1'b0;
  assign T19_5 = T26[6] | 1'b0;
  assign T20_4 = 1'b0 | T23_3;
  assign T19_3 = 1'b0 | T23_2;
  assign T20_2 = T24[5] | 1'b0;
  assign T19_1 = T24[4] | 1'b0;
  assign T26[7] = 1'b0 | T27[7];
  assign T26[6] = 1'b0 | T27[6];
  assign T23[7] = 1'b0 | T27[5];
  assign T23[6] = 1'b0 | T27[4];
  assign T24[5] = T30[7] | 1'b0;
  assign T24[4] = T30[6] | 1'b0;
  assign T23_3 = T30[5] | 1'b0;
  assign T23_2 = T30[4] | 1'b0;
  assign N7 = ~T35;
  assign CExtraMask[23] = 1'b0 | T44[15];
  assign CExtraMask[22] = T47[15] | 1'b0;
  assign CExtraMask[21] = 1'b0 | T44_13;
  assign CExtraMask[20] = T45[14] | 1'b0;
  assign CExtraMask[19] = 1'b0 | T44_11;
  assign CExtraMask[18] = T45_12 | 1'b0;
  assign CExtraMask[17] = 1'b0 | T44_9;
  assign CExtraMask[16] = T45_10 | 1'b0;
  assign CExtraMask[15] = 1'b0 | T44_7;
  assign CExtraMask[14] = T45_8 | 1'b0;
  assign CExtraMask[13] = 1'b0 | T44_5;
  assign CExtraMask[12] = T45_6 | 1'b0;
  assign CExtraMask[11] = 1'b0 | T44_3;
  assign CExtraMask[10] = T45_4 | 1'b0;
  assign CExtraMask[9] = 1'b0 | T44_1;
  assign CExtraMask[8] = T45_2 | 1'b0;
  assign T47[15] = 1'b0 | T48[15];
  assign T44[15] = 1'b0 | T48[14];
  assign T45[14] = T51[15] | 1'b0;
  assign T44_13 = T51[14] | 1'b0;
  assign T45_12 = 1'b0 | T48_11;
  assign T44_11 = 1'b0 | T48_10;
  assign T45_10 = T49[13] | 1'b0;
  assign T44_9 = T49[12] | 1'b0;
  assign T45_8 = 1'b0 | T48_7;
  assign T44_7 = 1'b0 | T48_6;
  assign T45_6 = T49_9 | 1'b0;
  assign T44_5 = T49_8 | 1'b0;
  assign T45_4 = 1'b0 | T48_3;
  assign T44_3 = 1'b0 | T48_2;
  assign T45_2 = T49_5 | 1'b0;
  assign T44_1 = T49_4 | 1'b0;
  assign T51[15] = 1'b0 | T52[15];
  assign T51[14] = 1'b0 | T52[14];
  assign T48[15] = 1'b0 | T52[13];
  assign T48[14] = 1'b0 | T52[12];
  assign T49[13] = T55[15] | 1'b0;
  assign T49[12] = T55[14] | 1'b0;
  assign T48_11 = T55[13] | 1'b0;
  assign T48_10 = T55[12] | 1'b0;
  assign T49_9 = 1'b0 | T52_7;
  assign T49_8 = 1'b0 | T52_6;
  assign T48_7 = 1'b0 | T52_5;
  assign T48_6 = 1'b0 | T52_4;
  assign T49_5 = T53[11] | 1'b0;
  assign T49_4 = T53[10] | 1'b0;
  assign T48_3 = T53[9] | 1'b0;
  assign T48_2 = T53[8] | 1'b0;
  assign T55[15] = 1'b0 | T31[7];
  assign T55[14] = 1'b0 | T31[6];
  assign T55[13] = 1'b0 | T31[5];
  assign T55[12] = 1'b0 | T31[4];
  assign T52[15] = 1'b0 | T31[3];
  assign T52[14] = 1'b0 | T31[2];
  assign T52[13] = 1'b0 | T31[1];
  assign T52[12] = 1'b0 | T31[0];
  assign T53[11] = T31[15] | 1'b0;
  assign T53[10] = T31[14] | 1'b0;
  assign T53[9] = T31[13] | 1'b0;
  assign T53[8] = T31[12] | 1'b0;
  assign T52_7 = T31[11] | 1'b0;
  assign T52_6 = T31[10] | 1'b0;
  assign T52_5 = T31[9] | 1'b0;
  assign T52_4 = T31[8] | 1'b0;
  assign sigC[23] = ~N34;
  assign N8 = ~T71[74];
  assign T75[23] = ~sigC[23];
  assign T75[22] = ~io_c[22];
  assign T75[21] = ~io_c[21];
  assign T75[20] = ~io_c[20];
  assign T75[19] = ~io_c[19];
  assign T75[18] = ~io_c[18];
  assign T75[17] = ~io_c[17];
  assign T75[16] = ~io_c[16];
  assign T75[15] = ~io_c[15];
  assign T75[14] = ~io_c[14];
  assign T75[13] = ~io_c[13];
  assign T75[12] = ~io_c[12];
  assign T75[11] = ~io_c[11];
  assign T75[10] = ~io_c[10];
  assign T75[9] = ~io_c[9];
  assign T75[8] = ~io_c[8];
  assign T75[7] = ~io_c[7];
  assign T75[6] = ~io_c[6];
  assign T75[5] = ~io_c[5];
  assign T75[4] = ~io_c[4];
  assign T75[3] = ~io_c[3];
  assign T75[2] = ~io_c[2];
  assign T75[1] = ~io_c[1];
  assign T75[0] = ~io_c[0];
  assign io_toPostMul_CAlignDist_0 = CAlignDist_floor | T77;
  assign io_toPostMul_isCDominant = T82 & T79;
  assign T79 = CAlignDist_floor | T80;
  assign T82 = ~N34;
  assign io_mulAddB[23] = ~N40;
  assign io_mulAddA[23] = ~N37;

endmodule