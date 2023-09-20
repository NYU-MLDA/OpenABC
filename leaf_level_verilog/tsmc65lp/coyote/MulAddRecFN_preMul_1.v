module MulAddRecFN_preMul_1
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
  input [64:0] io_a;
  input [64:0] io_b;
  input [64:0] io_c;
  input [1:0] io_roundingMode;
  output [52:0] io_mulAddA;
  output [52:0] io_mulAddB;
  output [105:0] io_mulAddC;
  output [2:0] io_toPostMul_highExpA;
  output [2:0] io_toPostMul_highExpB;
  output [2:0] io_toPostMul_highExpC;
  output [7:0] io_toPostMul_CAlignDist;
  output [54:0] io_toPostMul_highAlignedNegSigC;
  output [13:0] io_toPostMul_sExpSum;
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
  wire [52:0] io_mulAddA,io_mulAddB,T17,T102;
  wire [105:0] io_mulAddC;
  wire [2:0] io_toPostMul_highExpA,io_toPostMul_highExpB,io_toPostMul_highExpC;
  wire [7:0] io_toPostMul_CAlignDist,T25;
  wire [54:0] io_toPostMul_highAlignedNegSigC;
  wire [13:0] io_toPostMul_sExpSum,sExpAlignedProd,T0,sNatCAlignDist;
  wire [1:0] io_toPostMul_roundingMode;
  wire io_toPostMul_isNaN_isQuietNaNA,io_toPostMul_isNaN_isQuietNaNB,
  io_toPostMul_signProd,io_toPostMul_isZeroProd,io_toPostMul_opSignC,io_toPostMul_isNaN_isQuietNaNC,
  io_toPostMul_isCDominant,io_toPostMul_CAlignDist_0,
  io_toPostMul_bit0AlignedNegSigC,N0,N1,N2,N3,N4,N5,CAlignDist_floor,N6,T1_11,T15,CExtraMask_0,T27,N7,T40_13,
  T40_11,T40_9,T40_7,T40_5,T40_3,T40_1,T41_12,T41_10,T41_8,T41_6,T41_4,T41_2,T44_11,
  T44_10,T44_7,T44_6,T44_3,T44_2,T45_9,T45_8,T45_5,T45_4,T48_7,T48_6,T48_5,T48_4,
  T65_29,T65_27,T65_25,T65_23,T65_21,T65_19,T65_17,T65_15,T65_13,T65_11,T65_9,
  T65_7,T65_5,T65_3,T65_1,T66_28,T66_26,T66_24,T66_22,T66_20,T66_18,T66_16,T66_14,
  T66_12,T66_10,T66_8,T66_6,T66_4,T66_2,T69_27,T69_26,T69_23,T69_22,T69_19,T69_18,
  T69_15,T69_14,T69_11,T69_10,T69_7,T69_6,T69_3,T69_2,T70_25,T70_24,T70_21,T70_20,
  T70_17,T70_16,T70_13,T70_12,T70_9,T70_8,T70_5,T70_4,T73_23,T73_22,T73_21,T73_20,
  T73_15,T73_14,T73_13,T73_12,T73_7,T73_6,T73_5,T73_4,T74_19,T74_18,T74_17,T74_16,
  T74_11,T74_10,T74_9,T74_8,T77_15,T77_14,T77_13,T77_12,T77_11,T77_10,T77_9,T77_8,
  T98_0,N8,T104,T109,T106,T107,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,SV2V_UNCONNECTED_1,SV2V_UNCONNECTED_2,
  SV2V_UNCONNECTED_3,SV2V_UNCONNECTED_4,SV2V_UNCONNECTED_5,
  SV2V_UNCONNECTED_6,SV2V_UNCONNECTED_7,SV2V_UNCONNECTED_8,SV2V_UNCONNECTED_9,
  SV2V_UNCONNECTED_10,SV2V_UNCONNECTED_11,SV2V_UNCONNECTED_12,
  SV2V_UNCONNECTED_13,SV2V_UNCONNECTED_14,SV2V_UNCONNECTED_15,
  SV2V_UNCONNECTED_16,SV2V_UNCONNECTED_17,SV2V_UNCONNECTED_18,SV2V_UNCONNECTED_19,
  SV2V_UNCONNECTED_20,SV2V_UNCONNECTED_21,SV2V_UNCONNECTED_22,
  SV2V_UNCONNECTED_23,SV2V_UNCONNECTED_24,SV2V_UNCONNECTED_25,
  SV2V_UNCONNECTED_26,SV2V_UNCONNECTED_27,SV2V_UNCONNECTED_28,SV2V_UNCONNECTED_29,
  SV2V_UNCONNECTED_30,SV2V_UNCONNECTED_31,SV2V_UNCONNECTED_32,
  SV2V_UNCONNECTED_33,SV2V_UNCONNECTED_34,SV2V_UNCONNECTED_35,
  SV2V_UNCONNECTED_36,SV2V_UNCONNECTED_37,SV2V_UNCONNECTED_38,SV2V_UNCONNECTED_39,
  SV2V_UNCONNECTED_40,SV2V_UNCONNECTED_41,SV2V_UNCONNECTED_42,
  SV2V_UNCONNECTED_43,SV2V_UNCONNECTED_44,SV2V_UNCONNECTED_45,
  SV2V_UNCONNECTED_46,SV2V_UNCONNECTED_47,SV2V_UNCONNECTED_48,SV2V_UNCONNECTED_49,
  SV2V_UNCONNECTED_50,SV2V_UNCONNECTED_51,SV2V_UNCONNECTED_52,
  SV2V_UNCONNECTED_53,SV2V_UNCONNECTED_54,SV2V_UNCONNECTED_55,
  SV2V_UNCONNECTED_56,SV2V_UNCONNECTED_57,SV2V_UNCONNECTED_58,SV2V_UNCONNECTED_59,
  SV2V_UNCONNECTED_60,SV2V_UNCONNECTED_61,SV2V_UNCONNECTED_62,
  SV2V_UNCONNECTED_63,SV2V_UNCONNECTED_64,SV2V_UNCONNECTED_65,
  SV2V_UNCONNECTED_66,SV2V_UNCONNECTED_67,SV2V_UNCONNECTED_68,SV2V_UNCONNECTED_69,
  SV2V_UNCONNECTED_70,SV2V_UNCONNECTED_71,SV2V_UNCONNECTED_72,
  SV2V_UNCONNECTED_73,SV2V_UNCONNECTED_74,SV2V_UNCONNECTED_75,
  SV2V_UNCONNECTED_76,SV2V_UNCONNECTED_77,SV2V_UNCONNECTED_78,SV2V_UNCONNECTED_79,
  SV2V_UNCONNECTED_80,SV2V_UNCONNECTED_81,SV2V_UNCONNECTED_82,
  SV2V_UNCONNECTED_83,SV2V_UNCONNECTED_84,SV2V_UNCONNECTED_85,
  SV2V_UNCONNECTED_86,SV2V_UNCONNECTED_87,SV2V_UNCONNECTED_88,SV2V_UNCONNECTED_89,
  SV2V_UNCONNECTED_90,SV2V_UNCONNECTED_91,SV2V_UNCONNECTED_92,
  SV2V_UNCONNECTED_93,SV2V_UNCONNECTED_94,SV2V_UNCONNECTED_95,
  SV2V_UNCONNECTED_96,SV2V_UNCONNECTED_97,SV2V_UNCONNECTED_98,SV2V_UNCONNECTED_99,
  SV2V_UNCONNECTED_100,SV2V_UNCONNECTED_101,SV2V_UNCONNECTED_102,
  SV2V_UNCONNECTED_103,SV2V_UNCONNECTED_104,SV2V_UNCONNECTED_105,
  SV2V_UNCONNECTED_106,SV2V_UNCONNECTED_107,SV2V_UNCONNECTED_108,
  SV2V_UNCONNECTED_109,SV2V_UNCONNECTED_110;
  wire [13:13] T1;
  wire [0:0] T119;
  wire [52:52] sigC;
  wire [52:5] CExtraMask;
  wire [3:0] T21;
  wire [15:0] T22;
  wire [31:0] T23;
  wire [15:15] T40,T43;
  wire [14:14] T41;
  wire [15:14] T44,T47;
  wire [13:12] T45;
  wire [15:12] T48,T51;
  wire [11:8] T49;
  wire [31:31] T65,T68;
  wire [30:30] T66;
  wire [31:30] T69,T72;
  wire [29:28] T70;
  wire [31:28] T73,T76;
  wire [27:24] T74;
  wire [31:24] T77,T80;
  wire [23:16] T78;
  wire [161:107] T98;
  assign io_toPostMul_highExpA[2] = io_a[63];
  assign io_toPostMul_highExpA[1] = io_a[62];
  assign io_toPostMul_highExpA[0] = io_a[61];
  assign io_toPostMul_isNaN_isQuietNaNA = io_a[51];
  assign io_mulAddA[51] = io_a[51];
  assign io_mulAddA[50] = io_a[50];
  assign io_mulAddA[49] = io_a[49];
  assign io_mulAddA[48] = io_a[48];
  assign io_mulAddA[47] = io_a[47];
  assign io_mulAddA[46] = io_a[46];
  assign io_mulAddA[45] = io_a[45];
  assign io_mulAddA[44] = io_a[44];
  assign io_mulAddA[43] = io_a[43];
  assign io_mulAddA[42] = io_a[42];
  assign io_mulAddA[41] = io_a[41];
  assign io_mulAddA[40] = io_a[40];
  assign io_mulAddA[39] = io_a[39];
  assign io_mulAddA[38] = io_a[38];
  assign io_mulAddA[37] = io_a[37];
  assign io_mulAddA[36] = io_a[36];
  assign io_mulAddA[35] = io_a[35];
  assign io_mulAddA[34] = io_a[34];
  assign io_mulAddA[33] = io_a[33];
  assign io_mulAddA[32] = io_a[32];
  assign io_mulAddA[31] = io_a[31];
  assign io_mulAddA[30] = io_a[30];
  assign io_mulAddA[29] = io_a[29];
  assign io_mulAddA[28] = io_a[28];
  assign io_mulAddA[27] = io_a[27];
  assign io_mulAddA[26] = io_a[26];
  assign io_mulAddA[25] = io_a[25];
  assign io_mulAddA[24] = io_a[24];
  assign io_mulAddA[23] = io_a[23];
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
  assign io_toPostMul_highExpB[2] = io_b[63];
  assign io_toPostMul_highExpB[1] = io_b[62];
  assign io_toPostMul_highExpB[0] = io_b[61];
  assign io_toPostMul_isNaN_isQuietNaNB = io_b[51];
  assign io_mulAddB[51] = io_b[51];
  assign io_mulAddB[50] = io_b[50];
  assign io_mulAddB[49] = io_b[49];
  assign io_mulAddB[48] = io_b[48];
  assign io_mulAddB[47] = io_b[47];
  assign io_mulAddB[46] = io_b[46];
  assign io_mulAddB[45] = io_b[45];
  assign io_mulAddB[44] = io_b[44];
  assign io_mulAddB[43] = io_b[43];
  assign io_mulAddB[42] = io_b[42];
  assign io_mulAddB[41] = io_b[41];
  assign io_mulAddB[40] = io_b[40];
  assign io_mulAddB[39] = io_b[39];
  assign io_mulAddB[38] = io_b[38];
  assign io_mulAddB[37] = io_b[37];
  assign io_mulAddB[36] = io_b[36];
  assign io_mulAddB[35] = io_b[35];
  assign io_mulAddB[34] = io_b[34];
  assign io_mulAddB[33] = io_b[33];
  assign io_mulAddB[32] = io_b[32];
  assign io_mulAddB[31] = io_b[31];
  assign io_mulAddB[30] = io_b[30];
  assign io_mulAddB[29] = io_b[29];
  assign io_mulAddB[28] = io_b[28];
  assign io_mulAddB[27] = io_b[27];
  assign io_mulAddB[26] = io_b[26];
  assign io_mulAddB[25] = io_b[25];
  assign io_mulAddB[24] = io_b[24];
  assign io_mulAddB[23] = io_b[23];
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
  assign io_toPostMul_highExpC[2] = io_c[63];
  assign io_toPostMul_highExpC[1] = io_c[62];
  assign io_toPostMul_highExpC[0] = io_c[61];
  assign io_toPostMul_isNaN_isQuietNaNC = io_c[51];
  assign io_toPostMul_roundingMode[1] = io_roundingMode[1];
  assign io_toPostMul_roundingMode[0] = io_roundingMode[0];
  assign T27 = sNatCAlignDist[12:0] < { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 };
  assign { SV2V_UNCONNECTED_1, io_toPostMul_highAlignedNegSigC, io_mulAddC } = $signed({ T98, T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98[107:107], T98_0 }) >>> io_toPostMul_CAlignDist;
  assign T104 = sNatCAlignDist[12:0] == 1'b0;
  assign T107 = sNatCAlignDist[12:0] < { 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 };
  assign N9 = T17[51] | T17[52];
  assign N10 = T17[50] | N9;
  assign N11 = T17[49] | N10;
  assign N12 = T17[48] | N11;
  assign N13 = T17[47] | N12;
  assign N14 = T17[46] | N13;
  assign N15 = T17[45] | N14;
  assign N16 = T17[44] | N15;
  assign N17 = T17[43] | N16;
  assign N18 = T17[42] | N17;
  assign N19 = T17[41] | N18;
  assign N20 = T17[40] | N19;
  assign N21 = T17[39] | N20;
  assign N22 = T17[38] | N21;
  assign N23 = T17[37] | N22;
  assign N24 = T17[36] | N23;
  assign N25 = T17[35] | N24;
  assign N26 = T17[34] | N25;
  assign N27 = T17[33] | N26;
  assign N28 = T17[32] | N27;
  assign N29 = T17[31] | N28;
  assign N30 = T17[30] | N29;
  assign N31 = T17[29] | N30;
  assign N32 = T17[28] | N31;
  assign N33 = T17[27] | N32;
  assign N34 = T17[26] | N33;
  assign N35 = T17[25] | N34;
  assign N36 = T17[24] | N35;
  assign N37 = T17[23] | N36;
  assign N38 = T17[22] | N37;
  assign N39 = T17[21] | N38;
  assign N40 = T17[20] | N39;
  assign N41 = T17[19] | N40;
  assign N42 = T17[18] | N41;
  assign N43 = T17[17] | N42;
  assign N44 = T17[16] | N43;
  assign N45 = T17[15] | N44;
  assign N46 = T17[14] | N45;
  assign N47 = T17[13] | N46;
  assign N48 = T17[12] | N47;
  assign N49 = T17[11] | N48;
  assign N50 = T17[10] | N49;
  assign N51 = T17[9] | N50;
  assign N52 = T17[8] | N51;
  assign N53 = T17[7] | N52;
  assign N54 = T17[6] | N53;
  assign N55 = T17[5] | N54;
  assign N56 = T17[4] | N55;
  assign N57 = T17[3] | N56;
  assign N58 = T17[2] | N57;
  assign N59 = T17[1] | N58;
  assign N60 = T17[0] | N59;
  assign N61 = io_c[62] | io_c[63];
  assign N62 = io_c[61] | N61;
  assign N63 = ~N62;
  assign { SV2V_UNCONNECTED_2, SV2V_UNCONNECTED_3, SV2V_UNCONNECTED_4, SV2V_UNCONNECTED_5, SV2V_UNCONNECTED_6, SV2V_UNCONNECTED_7, SV2V_UNCONNECTED_8, SV2V_UNCONNECTED_9, SV2V_UNCONNECTED_10, SV2V_UNCONNECTED_11, SV2V_UNCONNECTED_12, SV2V_UNCONNECTED_13, SV2V_UNCONNECTED_14, SV2V_UNCONNECTED_15, SV2V_UNCONNECTED_16, SV2V_UNCONNECTED_17, SV2V_UNCONNECTED_18, SV2V_UNCONNECTED_19, SV2V_UNCONNECTED_20, SV2V_UNCONNECTED_21, SV2V_UNCONNECTED_22, SV2V_UNCONNECTED_23, SV2V_UNCONNECTED_24, SV2V_UNCONNECTED_25, SV2V_UNCONNECTED_26, SV2V_UNCONNECTED_27, SV2V_UNCONNECTED_28, SV2V_UNCONNECTED_29, SV2V_UNCONNECTED_30, SV2V_UNCONNECTED_31, SV2V_UNCONNECTED_32, SV2V_UNCONNECTED_33, SV2V_UNCONNECTED_34, SV2V_UNCONNECTED_35, SV2V_UNCONNECTED_36, SV2V_UNCONNECTED_37, SV2V_UNCONNECTED_38, SV2V_UNCONNECTED_39, SV2V_UNCONNECTED_40, SV2V_UNCONNECTED_41, SV2V_UNCONNECTED_42, SV2V_UNCONNECTED_43, SV2V_UNCONNECTED_44, SV2V_UNCONNECTED_45, SV2V_UNCONNECTED_46, SV2V_UNCONNECTED_47, SV2V_UNCONNECTED_48, SV2V_UNCONNECTED_49, SV2V_UNCONNECTED_50, SV2V_UNCONNECTED_51, SV2V_UNCONNECTED_52, SV2V_UNCONNECTED_53, SV2V_UNCONNECTED_54, SV2V_UNCONNECTED_55, SV2V_UNCONNECTED_56, SV2V_UNCONNECTED_57, SV2V_UNCONNECTED_58, SV2V_UNCONNECTED_59, SV2V_UNCONNECTED_60, SV2V_UNCONNECTED_61, SV2V_UNCONNECTED_62, SV2V_UNCONNECTED_63, SV2V_UNCONNECTED_64, SV2V_UNCONNECTED_65, SV2V_UNCONNECTED_66, SV2V_UNCONNECTED_67, SV2V_UNCONNECTED_68, SV2V_UNCONNECTED_69, SV2V_UNCONNECTED_70, SV2V_UNCONNECTED_71, SV2V_UNCONNECTED_72, SV2V_UNCONNECTED_73, SV2V_UNCONNECTED_74, SV2V_UNCONNECTED_75, SV2V_UNCONNECTED_76, SV2V_UNCONNECTED_77, SV2V_UNCONNECTED_78, SV2V_UNCONNECTED_79, SV2V_UNCONNECTED_80, SV2V_UNCONNECTED_81, SV2V_UNCONNECTED_82, SV2V_UNCONNECTED_83, SV2V_UNCONNECTED_84, SV2V_UNCONNECTED_85, SV2V_UNCONNECTED_86, SV2V_UNCONNECTED_87, SV2V_UNCONNECTED_88, SV2V_UNCONNECTED_89, SV2V_UNCONNECTED_90, SV2V_UNCONNECTED_91, SV2V_UNCONNECTED_92, SV2V_UNCONNECTED_93, SV2V_UNCONNECTED_94, SV2V_UNCONNECTED_95, SV2V_UNCONNECTED_96, SV2V_UNCONNECTED_97, SV2V_UNCONNECTED_98, SV2V_UNCONNECTED_99, SV2V_UNCONNECTED_100, SV2V_UNCONNECTED_101, SV2V_UNCONNECTED_102, SV2V_UNCONNECTED_103, SV2V_UNCONNECTED_104, SV2V_UNCONNECTED_105, SV2V_UNCONNECTED_106, SV2V_UNCONNECTED_107, SV2V_UNCONNECTED_108, SV2V_UNCONNECTED_109, SV2V_UNCONNECTED_110, CExtraMask_0, T21, T22, T23 } = $signed({ 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }) >>> io_toPostMul_CAlignDist;
  assign N64 = io_a[62] | io_a[63];
  assign N65 = io_a[61] | N64;
  assign N66 = ~N65;
  assign N67 = io_b[62] | io_b[63];
  assign N68 = io_b[61] | N67;
  assign N69 = ~N68;
  assign { T1[13:13], T1_11 } = 1'b0 - T119[0];
  assign T0 = io_a[63:52] + { T1[13:13], T1[13:13], T1_11, io_b[62:52] };
  assign { T98[107:107], T98_0 } = 1'b0 - T98[161];
  assign sExpAlignedProd = T0 + { 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 };
  assign sNatCAlignDist = sExpAlignedProd - io_c[63:52];
  assign io_toPostMul_sExpSum = (N0)? { 1'b0, 1'b0, io_c[63:52] } : 
                                (N1)? sExpAlignedProd : 1'b0;
  assign N0 = CAlignDist_floor;
  assign N1 = N6;
  assign io_toPostMul_CAlignDist = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                   (N1)? T25 : 1'b0;
  assign T25 = (N2)? sNatCAlignDist[7:0] : 
               (N3)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign N2 = T27;
  assign N3 = N7;
  assign T98[160:108] = (N4)? T102 : 
                        (N5)? { sigC[52:52], io_c[51:0] } : 1'b0;
  assign N4 = T98[161];
  assign N5 = N8;
  assign N6 = ~CAlignDist_floor;
  assign T119[0] = ~io_b[63];
  assign CAlignDist_floor = io_toPostMul_isZeroProd | sNatCAlignDist[13];
  assign io_toPostMul_isZeroProd = N66 | N69;
  assign io_toPostMul_bit0AlignedNegSigC = N60 ^ T98[161];
  assign T98[161] = io_toPostMul_signProd ^ io_toPostMul_opSignC;
  assign io_toPostMul_opSignC = io_c[64] ^ io_op[0];
  assign io_toPostMul_signProd = T15 ^ io_op[1];
  assign T15 = io_a[64] ^ io_b[64];
  assign T17[52] = sigC[52] & CExtraMask[52];
  assign T17[51] = io_c[51] & CExtraMask[51];
  assign T17[50] = io_c[50] & CExtraMask[50];
  assign T17[49] = io_c[49] & CExtraMask[49];
  assign T17[48] = io_c[48] & CExtraMask[48];
  assign T17[47] = io_c[47] & CExtraMask[47];
  assign T17[46] = io_c[46] & CExtraMask[46];
  assign T17[45] = io_c[45] & CExtraMask[45];
  assign T17[44] = io_c[44] & CExtraMask[44];
  assign T17[43] = io_c[43] & CExtraMask[43];
  assign T17[42] = io_c[42] & CExtraMask[42];
  assign T17[41] = io_c[41] & CExtraMask[41];
  assign T17[40] = io_c[40] & CExtraMask[40];
  assign T17[39] = io_c[39] & CExtraMask[39];
  assign T17[38] = io_c[38] & CExtraMask[38];
  assign T17[37] = io_c[37] & CExtraMask[37];
  assign T17[36] = io_c[36] & CExtraMask[36];
  assign T17[35] = io_c[35] & CExtraMask[35];
  assign T17[34] = io_c[34] & CExtraMask[34];
  assign T17[33] = io_c[33] & CExtraMask[33];
  assign T17[32] = io_c[32] & CExtraMask[32];
  assign T17[31] = io_c[31] & CExtraMask[31];
  assign T17[30] = io_c[30] & CExtraMask[30];
  assign T17[29] = io_c[29] & CExtraMask[29];
  assign T17[28] = io_c[28] & CExtraMask[28];
  assign T17[27] = io_c[27] & CExtraMask[27];
  assign T17[26] = io_c[26] & CExtraMask[26];
  assign T17[25] = io_c[25] & CExtraMask[25];
  assign T17[24] = io_c[24] & CExtraMask[24];
  assign T17[23] = io_c[23] & CExtraMask[23];
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
  assign T17[4] = io_c[4] & T21[0];
  assign T17[3] = io_c[3] & T21[1];
  assign T17[2] = io_c[2] & T21[2];
  assign T17[1] = io_c[1] & T21[3];
  assign T17[0] = io_c[0] & CExtraMask_0;
  assign N7 = ~T27;
  assign CExtraMask[20] = 1'b0 | T40[15];
  assign CExtraMask[19] = T43[15] | 1'b0;
  assign CExtraMask[18] = 1'b0 | T40_13;
  assign CExtraMask[17] = T41[14] | 1'b0;
  assign CExtraMask[16] = 1'b0 | T40_11;
  assign CExtraMask[15] = T41_12 | 1'b0;
  assign CExtraMask[14] = 1'b0 | T40_9;
  assign CExtraMask[13] = T41_10 | 1'b0;
  assign CExtraMask[12] = 1'b0 | T40_7;
  assign CExtraMask[11] = T41_8 | 1'b0;
  assign CExtraMask[10] = 1'b0 | T40_5;
  assign CExtraMask[9] = T41_6 | 1'b0;
  assign CExtraMask[8] = 1'b0 | T40_3;
  assign CExtraMask[7] = T41_4 | 1'b0;
  assign CExtraMask[6] = 1'b0 | T40_1;
  assign CExtraMask[5] = T41_2 | 1'b0;
  assign T43[15] = 1'b0 | T44[15];
  assign T40[15] = 1'b0 | T44[14];
  assign T41[14] = T47[15] | 1'b0;
  assign T40_13 = T47[14] | 1'b0;
  assign T41_12 = 1'b0 | T44_11;
  assign T40_11 = 1'b0 | T44_10;
  assign T41_10 = T45[13] | 1'b0;
  assign T40_9 = T45[12] | 1'b0;
  assign T41_8 = 1'b0 | T44_7;
  assign T40_7 = 1'b0 | T44_6;
  assign T41_6 = T45_9 | 1'b0;
  assign T40_5 = T45_8 | 1'b0;
  assign T41_4 = 1'b0 | T44_3;
  assign T40_3 = 1'b0 | T44_2;
  assign T41_2 = T45_5 | 1'b0;
  assign T40_1 = T45_4 | 1'b0;
  assign T47[15] = 1'b0 | T48[15];
  assign T47[14] = 1'b0 | T48[14];
  assign T44[15] = 1'b0 | T48[13];
  assign T44[14] = 1'b0 | T48[12];
  assign T45[13] = T51[15] | 1'b0;
  assign T45[12] = T51[14] | 1'b0;
  assign T44_11 = T51[13] | 1'b0;
  assign T44_10 = T51[12] | 1'b0;
  assign T45_9 = 1'b0 | T48_7;
  assign T45_8 = 1'b0 | T48_6;
  assign T44_7 = 1'b0 | T48_5;
  assign T44_6 = 1'b0 | T48_4;
  assign T45_5 = T49[11] | 1'b0;
  assign T45_4 = T49[10] | 1'b0;
  assign T44_3 = T49[9] | 1'b0;
  assign T44_2 = T49[8] | 1'b0;
  assign T51[15] = 1'b0 | T22[7];
  assign T51[14] = 1'b0 | T22[6];
  assign T51[13] = 1'b0 | T22[5];
  assign T51[12] = 1'b0 | T22[4];
  assign T48[15] = 1'b0 | T22[3];
  assign T48[14] = 1'b0 | T22[2];
  assign T48[13] = 1'b0 | T22[1];
  assign T48[12] = 1'b0 | T22[0];
  assign T49[11] = T22[15] | 1'b0;
  assign T49[10] = T22[14] | 1'b0;
  assign T49[9] = T22[13] | 1'b0;
  assign T49[8] = T22[12] | 1'b0;
  assign T48_7 = T22[11] | 1'b0;
  assign T48_6 = T22[10] | 1'b0;
  assign T48_5 = T22[9] | 1'b0;
  assign T48_4 = T22[8] | 1'b0;
  assign CExtraMask[52] = 1'b0 | T65[31];
  assign CExtraMask[51] = T68[31] | 1'b0;
  assign CExtraMask[50] = 1'b0 | T65_29;
  assign CExtraMask[49] = T66[30] | 1'b0;
  assign CExtraMask[48] = 1'b0 | T65_27;
  assign CExtraMask[47] = T66_28 | 1'b0;
  assign CExtraMask[46] = 1'b0 | T65_25;
  assign CExtraMask[45] = T66_26 | 1'b0;
  assign CExtraMask[44] = 1'b0 | T65_23;
  assign CExtraMask[43] = T66_24 | 1'b0;
  assign CExtraMask[42] = 1'b0 | T65_21;
  assign CExtraMask[41] = T66_22 | 1'b0;
  assign CExtraMask[40] = 1'b0 | T65_19;
  assign CExtraMask[39] = T66_20 | 1'b0;
  assign CExtraMask[38] = 1'b0 | T65_17;
  assign CExtraMask[37] = T66_18 | 1'b0;
  assign CExtraMask[36] = 1'b0 | T65_15;
  assign CExtraMask[35] = T66_16 | 1'b0;
  assign CExtraMask[34] = 1'b0 | T65_13;
  assign CExtraMask[33] = T66_14 | 1'b0;
  assign CExtraMask[32] = 1'b0 | T65_11;
  assign CExtraMask[31] = T66_12 | 1'b0;
  assign CExtraMask[30] = 1'b0 | T65_9;
  assign CExtraMask[29] = T66_10 | 1'b0;
  assign CExtraMask[28] = 1'b0 | T65_7;
  assign CExtraMask[27] = T66_8 | 1'b0;
  assign CExtraMask[26] = 1'b0 | T65_5;
  assign CExtraMask[25] = T66_6 | 1'b0;
  assign CExtraMask[24] = 1'b0 | T65_3;
  assign CExtraMask[23] = T66_4 | 1'b0;
  assign CExtraMask[22] = 1'b0 | T65_1;
  assign CExtraMask[21] = T66_2 | 1'b0;
  assign T68[31] = 1'b0 | T69[31];
  assign T65[31] = 1'b0 | T69[30];
  assign T66[30] = T72[31] | 1'b0;
  assign T65_29 = T72[30] | 1'b0;
  assign T66_28 = 1'b0 | T69_27;
  assign T65_27 = 1'b0 | T69_26;
  assign T66_26 = T70[29] | 1'b0;
  assign T65_25 = T70[28] | 1'b0;
  assign T66_24 = 1'b0 | T69_23;
  assign T65_23 = 1'b0 | T69_22;
  assign T66_22 = T70_25 | 1'b0;
  assign T65_21 = T70_24 | 1'b0;
  assign T66_20 = 1'b0 | T69_19;
  assign T65_19 = 1'b0 | T69_18;
  assign T66_18 = T70_21 | 1'b0;
  assign T65_17 = T70_20 | 1'b0;
  assign T66_16 = 1'b0 | T69_15;
  assign T65_15 = 1'b0 | T69_14;
  assign T66_14 = T70_17 | 1'b0;
  assign T65_13 = T70_16 | 1'b0;
  assign T66_12 = 1'b0 | T69_11;
  assign T65_11 = 1'b0 | T69_10;
  assign T66_10 = T70_13 | 1'b0;
  assign T65_9 = T70_12 | 1'b0;
  assign T66_8 = 1'b0 | T69_7;
  assign T65_7 = 1'b0 | T69_6;
  assign T66_6 = T70_9 | 1'b0;
  assign T65_5 = T70_8 | 1'b0;
  assign T66_4 = 1'b0 | T69_3;
  assign T65_3 = 1'b0 | T69_2;
  assign T66_2 = T70_5 | 1'b0;
  assign T65_1 = T70_4 | 1'b0;
  assign T72[31] = 1'b0 | T73[31];
  assign T72[30] = 1'b0 | T73[30];
  assign T69[31] = 1'b0 | T73[29];
  assign T69[30] = 1'b0 | T73[28];
  assign T70[29] = T76[31] | 1'b0;
  assign T70[28] = T76[30] | 1'b0;
  assign T69_27 = T76[29] | 1'b0;
  assign T69_26 = T76[28] | 1'b0;
  assign T70_25 = 1'b0 | T73_23;
  assign T70_24 = 1'b0 | T73_22;
  assign T69_23 = 1'b0 | T73_21;
  assign T69_22 = 1'b0 | T73_20;
  assign T70_21 = T74[27] | 1'b0;
  assign T70_20 = T74[26] | 1'b0;
  assign T69_19 = T74[25] | 1'b0;
  assign T69_18 = T74[24] | 1'b0;
  assign T70_17 = 1'b0 | T73_15;
  assign T70_16 = 1'b0 | T73_14;
  assign T69_15 = 1'b0 | T73_13;
  assign T69_14 = 1'b0 | T73_12;
  assign T70_13 = T74_19 | 1'b0;
  assign T70_12 = T74_18 | 1'b0;
  assign T69_11 = T74_17 | 1'b0;
  assign T69_10 = T74_16 | 1'b0;
  assign T70_9 = 1'b0 | T73_7;
  assign T70_8 = 1'b0 | T73_6;
  assign T69_7 = 1'b0 | T73_5;
  assign T69_6 = 1'b0 | T73_4;
  assign T70_5 = T74_11 | 1'b0;
  assign T70_4 = T74_10 | 1'b0;
  assign T69_3 = T74_9 | 1'b0;
  assign T69_2 = T74_8 | 1'b0;
  assign T76[31] = 1'b0 | T77[31];
  assign T76[30] = 1'b0 | T77[30];
  assign T76[29] = 1'b0 | T77[29];
  assign T76[28] = 1'b0 | T77[28];
  assign T73[31] = 1'b0 | T77[27];
  assign T73[30] = 1'b0 | T77[26];
  assign T73[29] = 1'b0 | T77[25];
  assign T73[28] = 1'b0 | T77[24];
  assign T74[27] = T80[31] | 1'b0;
  assign T74[26] = T80[30] | 1'b0;
  assign T74[25] = T80[29] | 1'b0;
  assign T74[24] = T80[28] | 1'b0;
  assign T73_23 = T80[27] | 1'b0;
  assign T73_22 = T80[26] | 1'b0;
  assign T73_21 = T80[25] | 1'b0;
  assign T73_20 = T80[24] | 1'b0;
  assign T74_19 = 1'b0 | T77_15;
  assign T74_18 = 1'b0 | T77_14;
  assign T74_17 = 1'b0 | T77_13;
  assign T74_16 = 1'b0 | T77_12;
  assign T73_15 = 1'b0 | T77_11;
  assign T73_14 = 1'b0 | T77_10;
  assign T73_13 = 1'b0 | T77_9;
  assign T73_12 = 1'b0 | T77_8;
  assign T74_11 = T78[23] | 1'b0;
  assign T74_10 = T78[22] | 1'b0;
  assign T74_9 = T78[21] | 1'b0;
  assign T74_8 = T78[20] | 1'b0;
  assign T73_7 = T78[19] | 1'b0;
  assign T73_6 = T78[18] | 1'b0;
  assign T73_5 = T78[17] | 1'b0;
  assign T73_4 = T78[16] | 1'b0;
  assign T80[31] = 1'b0 | T23[15];
  assign T80[30] = 1'b0 | T23[14];
  assign T80[29] = 1'b0 | T23[13];
  assign T80[28] = 1'b0 | T23[12];
  assign T80[27] = 1'b0 | T23[11];
  assign T80[26] = 1'b0 | T23[10];
  assign T80[25] = 1'b0 | T23[9];
  assign T80[24] = 1'b0 | T23[8];
  assign T77[31] = 1'b0 | T23[7];
  assign T77[30] = 1'b0 | T23[6];
  assign T77[29] = 1'b0 | T23[5];
  assign T77[28] = 1'b0 | T23[4];
  assign T77[27] = 1'b0 | T23[3];
  assign T77[26] = 1'b0 | T23[2];
  assign T77[25] = 1'b0 | T23[1];
  assign T77[24] = 1'b0 | T23[0];
  assign T78[23] = T23[31] | 1'b0;
  assign T78[22] = T23[30] | 1'b0;
  assign T78[21] = T23[29] | 1'b0;
  assign T78[20] = T23[28] | 1'b0;
  assign T78[19] = T23[27] | 1'b0;
  assign T78[18] = T23[26] | 1'b0;
  assign T78[17] = T23[25] | 1'b0;
  assign T78[16] = T23[24] | 1'b0;
  assign T77_15 = T23[23] | 1'b0;
  assign T77_14 = T23[22] | 1'b0;
  assign T77_13 = T23[21] | 1'b0;
  assign T77_12 = T23[20] | 1'b0;
  assign T77_11 = T23[19] | 1'b0;
  assign T77_10 = T23[18] | 1'b0;
  assign T77_9 = T23[17] | 1'b0;
  assign T77_8 = T23[16] | 1'b0;
  assign sigC[52] = ~N63;
  assign N8 = ~T98[161];
  assign T102[52] = ~sigC[52];
  assign T102[51] = ~io_c[51];
  assign T102[50] = ~io_c[50];
  assign T102[49] = ~io_c[49];
  assign T102[48] = ~io_c[48];
  assign T102[47] = ~io_c[47];
  assign T102[46] = ~io_c[46];
  assign T102[45] = ~io_c[45];
  assign T102[44] = ~io_c[44];
  assign T102[43] = ~io_c[43];
  assign T102[42] = ~io_c[42];
  assign T102[41] = ~io_c[41];
  assign T102[40] = ~io_c[40];
  assign T102[39] = ~io_c[39];
  assign T102[38] = ~io_c[38];
  assign T102[37] = ~io_c[37];
  assign T102[36] = ~io_c[36];
  assign T102[35] = ~io_c[35];
  assign T102[34] = ~io_c[34];
  assign T102[33] = ~io_c[33];
  assign T102[32] = ~io_c[32];
  assign T102[31] = ~io_c[31];
  assign T102[30] = ~io_c[30];
  assign T102[29] = ~io_c[29];
  assign T102[28] = ~io_c[28];
  assign T102[27] = ~io_c[27];
  assign T102[26] = ~io_c[26];
  assign T102[25] = ~io_c[25];
  assign T102[24] = ~io_c[24];
  assign T102[23] = ~io_c[23];
  assign T102[22] = ~io_c[22];
  assign T102[21] = ~io_c[21];
  assign T102[20] = ~io_c[20];
  assign T102[19] = ~io_c[19];
  assign T102[18] = ~io_c[18];
  assign T102[17] = ~io_c[17];
  assign T102[16] = ~io_c[16];
  assign T102[15] = ~io_c[15];
  assign T102[14] = ~io_c[14];
  assign T102[13] = ~io_c[13];
  assign T102[12] = ~io_c[12];
  assign T102[11] = ~io_c[11];
  assign T102[10] = ~io_c[10];
  assign T102[9] = ~io_c[9];
  assign T102[8] = ~io_c[8];
  assign T102[7] = ~io_c[7];
  assign T102[6] = ~io_c[6];
  assign T102[5] = ~io_c[5];
  assign T102[4] = ~io_c[4];
  assign T102[3] = ~io_c[3];
  assign T102[2] = ~io_c[2];
  assign T102[1] = ~io_c[1];
  assign T102[0] = ~io_c[0];
  assign io_toPostMul_CAlignDist_0 = CAlignDist_floor | T104;
  assign io_toPostMul_isCDominant = T109 & T106;
  assign T106 = CAlignDist_floor | T107;
  assign T109 = ~N63;
  assign io_mulAddB[52] = ~N69;
  assign io_mulAddA[52] = ~N66;

endmodule