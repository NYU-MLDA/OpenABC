module lzc_WIDTH64_MODE1
(
  in_i,
  cnt_o,
  empty_o
);

  input [63:0] in_i;
  output [5:0] cnt_o;
  output empty_o;
  wire [5:0] cnt_o;
  wire empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,index_nodes_62__0_,index_nodes_61__0_,
  index_nodes_60__0_,index_nodes_59__0_,index_nodes_58__0_,index_nodes_57__0_,
  index_nodes_56__0_,index_nodes_55__0_,index_nodes_54__0_,index_nodes_53__0_,
  index_nodes_52__0_,index_nodes_51__0_,index_nodes_50__0_,index_nodes_49__0_,
  index_nodes_48__0_,index_nodes_47__0_,index_nodes_46__0_,index_nodes_45__0_,
  index_nodes_44__0_,index_nodes_43__0_,index_nodes_42__0_,index_nodes_41__0_,index_nodes_40__0_,
  index_nodes_39__0_,index_nodes_38__0_,index_nodes_37__0_,index_nodes_36__0_,
  index_nodes_35__0_,index_nodes_34__0_,index_nodes_33__0_,index_nodes_32__0_,
  index_nodes_31__0_,index_nodes_30__1_,index_nodes_30__0_,index_nodes_29__1_,
  index_nodes_29__0_,index_nodes_28__1_,index_nodes_28__0_,index_nodes_27__1_,
  index_nodes_27__0_,index_nodes_26__1_,index_nodes_26__0_,index_nodes_25__1_,index_nodes_25__0_,
  index_nodes_24__1_,index_nodes_24__0_,index_nodes_23__1_,index_nodes_23__0_,
  index_nodes_22__1_,index_nodes_22__0_,index_nodes_21__1_,index_nodes_21__0_,
  index_nodes_20__1_,index_nodes_20__0_,index_nodes_19__1_,index_nodes_19__0_,
  index_nodes_18__1_,index_nodes_18__0_,index_nodes_17__1_,index_nodes_17__0_,
  index_nodes_16__1_,index_nodes_16__0_,index_nodes_15__1_,index_nodes_15__0_,index_nodes_14__2_,
  index_nodes_14__1_,index_nodes_14__0_,index_nodes_13__2_,index_nodes_13__1_,
  index_nodes_13__0_,index_nodes_12__2_,index_nodes_12__1_,index_nodes_12__0_,
  index_nodes_11__2_,index_nodes_11__1_,index_nodes_11__0_,index_nodes_10__2_,
  index_nodes_10__1_,index_nodes_10__0_,index_nodes_9__2_,index_nodes_9__1_,index_nodes_9__0_,
  index_nodes_8__2_,index_nodes_8__1_,index_nodes_8__0_,index_nodes_7__2_,
  index_nodes_7__1_,index_nodes_7__0_,index_nodes_6__3_,index_nodes_6__2_,index_nodes_6__1_,
  index_nodes_6__0_,index_nodes_5__3_,index_nodes_5__2_,index_nodes_5__1_,
  index_nodes_5__0_,index_nodes_4__3_,index_nodes_4__2_,index_nodes_4__1_,
  index_nodes_4__0_,index_nodes_3__3_,index_nodes_3__2_,index_nodes_3__1_,index_nodes_3__0_,
  index_nodes_2__4_,index_nodes_2__3_,index_nodes_2__2_,index_nodes_2__1_,
  index_nodes_2__0_,index_nodes_1__4_,index_nodes_1__3_,index_nodes_1__2_,index_nodes_1__1_,
  index_nodes_1__0_,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,
  N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61;
  wire [62:0] sel_nodes;
  assign cnt_o[5] = ~sel_nodes[1];
  assign cnt_o[4:0] = (N0)? { index_nodes_1__4_, index_nodes_1__3_, index_nodes_1__2_, index_nodes_1__1_, index_nodes_1__0_ } : 
                      (N31)? { index_nodes_2__4_, index_nodes_2__3_, index_nodes_2__2_, index_nodes_2__1_, index_nodes_2__0_ } : 1'b0;
  assign N0 = sel_nodes[1];
  assign index_nodes_1__4_ = ~sel_nodes[3];
  assign { index_nodes_1__3_, index_nodes_1__2_, index_nodes_1__1_, index_nodes_1__0_ } = (N1)? { index_nodes_3__3_, index_nodes_3__2_, index_nodes_3__1_, index_nodes_3__0_ } : 
                                                                                          (N32)? { index_nodes_4__3_, index_nodes_4__2_, index_nodes_4__1_, index_nodes_4__0_ } : 1'b0;
  assign N1 = sel_nodes[3];
  assign index_nodes_2__4_ = ~sel_nodes[5];
  assign { index_nodes_2__3_, index_nodes_2__2_, index_nodes_2__1_, index_nodes_2__0_ } = (N2)? { index_nodes_5__3_, index_nodes_5__2_, index_nodes_5__1_, index_nodes_5__0_ } : 
                                                                                          (N33)? { index_nodes_6__3_, index_nodes_6__2_, index_nodes_6__1_, index_nodes_6__0_ } : 1'b0;
  assign N2 = sel_nodes[5];
  assign index_nodes_3__3_ = ~sel_nodes[7];
  assign { index_nodes_3__2_, index_nodes_3__1_, index_nodes_3__0_ } = (N3)? { index_nodes_7__2_, index_nodes_7__1_, index_nodes_7__0_ } : 
                                                                       (N34)? { index_nodes_8__2_, index_nodes_8__1_, index_nodes_8__0_ } : 1'b0;
  assign N3 = sel_nodes[7];
  assign index_nodes_4__3_ = ~sel_nodes[9];
  assign { index_nodes_4__2_, index_nodes_4__1_, index_nodes_4__0_ } = (N4)? { index_nodes_9__2_, index_nodes_9__1_, index_nodes_9__0_ } : 
                                                                       (N35)? { index_nodes_10__2_, index_nodes_10__1_, index_nodes_10__0_ } : 1'b0;
  assign N4 = sel_nodes[9];
  assign index_nodes_5__3_ = ~sel_nodes[11];
  assign { index_nodes_5__2_, index_nodes_5__1_, index_nodes_5__0_ } = (N5)? { index_nodes_11__2_, index_nodes_11__1_, index_nodes_11__0_ } : 
                                                                       (N36)? { index_nodes_12__2_, index_nodes_12__1_, index_nodes_12__0_ } : 1'b0;
  assign N5 = sel_nodes[11];
  assign index_nodes_6__3_ = ~sel_nodes[13];
  assign { index_nodes_6__2_, index_nodes_6__1_, index_nodes_6__0_ } = (N6)? { index_nodes_13__2_, index_nodes_13__1_, index_nodes_13__0_ } : 
                                                                       (N37)? { index_nodes_14__2_, index_nodes_14__1_, index_nodes_14__0_ } : 1'b0;
  assign N6 = sel_nodes[13];
  assign index_nodes_7__2_ = ~sel_nodes[15];
  assign { index_nodes_7__1_, index_nodes_7__0_ } = (N7)? { index_nodes_15__1_, index_nodes_15__0_ } : 
                                                    (N38)? { index_nodes_16__1_, index_nodes_16__0_ } : 1'b0;
  assign N7 = sel_nodes[15];
  assign index_nodes_8__2_ = ~sel_nodes[17];
  assign { index_nodes_8__1_, index_nodes_8__0_ } = (N8)? { index_nodes_17__1_, index_nodes_17__0_ } : 
                                                    (N39)? { index_nodes_18__1_, index_nodes_18__0_ } : 1'b0;
  assign N8 = sel_nodes[17];
  assign index_nodes_9__2_ = ~sel_nodes[19];
  assign { index_nodes_9__1_, index_nodes_9__0_ } = (N9)? { index_nodes_19__1_, index_nodes_19__0_ } : 
                                                    (N40)? { index_nodes_20__1_, index_nodes_20__0_ } : 1'b0;
  assign N9 = sel_nodes[19];
  assign index_nodes_10__2_ = ~sel_nodes[21];
  assign { index_nodes_10__1_, index_nodes_10__0_ } = (N10)? { index_nodes_21__1_, index_nodes_21__0_ } : 
                                                      (N41)? { index_nodes_22__1_, index_nodes_22__0_ } : 1'b0;
  assign N10 = sel_nodes[21];
  assign index_nodes_11__2_ = ~sel_nodes[23];
  assign { index_nodes_11__1_, index_nodes_11__0_ } = (N11)? { index_nodes_23__1_, index_nodes_23__0_ } : 
                                                      (N42)? { index_nodes_24__1_, index_nodes_24__0_ } : 1'b0;
  assign N11 = sel_nodes[23];
  assign index_nodes_12__2_ = ~sel_nodes[25];
  assign { index_nodes_12__1_, index_nodes_12__0_ } = (N12)? { index_nodes_25__1_, index_nodes_25__0_ } : 
                                                      (N43)? { index_nodes_26__1_, index_nodes_26__0_ } : 1'b0;
  assign N12 = sel_nodes[25];
  assign index_nodes_13__2_ = ~sel_nodes[27];
  assign { index_nodes_13__1_, index_nodes_13__0_ } = (N13)? { index_nodes_27__1_, index_nodes_27__0_ } : 
                                                      (N44)? { index_nodes_28__1_, index_nodes_28__0_ } : 1'b0;
  assign N13 = sel_nodes[27];
  assign index_nodes_14__2_ = ~sel_nodes[29];
  assign { index_nodes_14__1_, index_nodes_14__0_ } = (N14)? { index_nodes_29__1_, index_nodes_29__0_ } : 
                                                      (N45)? { index_nodes_30__1_, index_nodes_30__0_ } : 1'b0;
  assign N14 = sel_nodes[29];
  assign index_nodes_15__1_ = ~sel_nodes[31];
  assign index_nodes_15__0_ = (N15)? index_nodes_31__0_ : 
                              (N46)? index_nodes_32__0_ : 1'b0;
  assign N15 = sel_nodes[31];
  assign index_nodes_16__1_ = ~sel_nodes[33];
  assign index_nodes_16__0_ = (N16)? index_nodes_33__0_ : 
                              (N47)? index_nodes_34__0_ : 1'b0;
  assign N16 = sel_nodes[33];
  assign index_nodes_17__1_ = ~sel_nodes[35];
  assign index_nodes_17__0_ = (N17)? index_nodes_35__0_ : 
                              (N48)? index_nodes_36__0_ : 1'b0;
  assign N17 = sel_nodes[35];
  assign index_nodes_18__1_ = ~sel_nodes[37];
  assign index_nodes_18__0_ = (N18)? index_nodes_37__0_ : 
                              (N49)? index_nodes_38__0_ : 1'b0;
  assign N18 = sel_nodes[37];
  assign index_nodes_19__1_ = ~sel_nodes[39];
  assign index_nodes_19__0_ = (N19)? index_nodes_39__0_ : 
                              (N50)? index_nodes_40__0_ : 1'b0;
  assign N19 = sel_nodes[39];
  assign index_nodes_20__1_ = ~sel_nodes[41];
  assign index_nodes_20__0_ = (N20)? index_nodes_41__0_ : 
                              (N51)? index_nodes_42__0_ : 1'b0;
  assign N20 = sel_nodes[41];
  assign index_nodes_21__1_ = ~sel_nodes[43];
  assign index_nodes_21__0_ = (N21)? index_nodes_43__0_ : 
                              (N52)? index_nodes_44__0_ : 1'b0;
  assign N21 = sel_nodes[43];
  assign index_nodes_22__1_ = ~sel_nodes[45];
  assign index_nodes_22__0_ = (N22)? index_nodes_45__0_ : 
                              (N53)? index_nodes_46__0_ : 1'b0;
  assign N22 = sel_nodes[45];
  assign index_nodes_23__1_ = ~sel_nodes[47];
  assign index_nodes_23__0_ = (N23)? index_nodes_47__0_ : 
                              (N54)? index_nodes_48__0_ : 1'b0;
  assign N23 = sel_nodes[47];
  assign index_nodes_24__1_ = ~sel_nodes[49];
  assign index_nodes_24__0_ = (N24)? index_nodes_49__0_ : 
                              (N55)? index_nodes_50__0_ : 1'b0;
  assign N24 = sel_nodes[49];
  assign index_nodes_25__1_ = ~sel_nodes[51];
  assign index_nodes_25__0_ = (N25)? index_nodes_51__0_ : 
                              (N56)? index_nodes_52__0_ : 1'b0;
  assign N25 = sel_nodes[51];
  assign index_nodes_26__1_ = ~sel_nodes[53];
  assign index_nodes_26__0_ = (N26)? index_nodes_53__0_ : 
                              (N57)? index_nodes_54__0_ : 1'b0;
  assign N26 = sel_nodes[53];
  assign index_nodes_27__1_ = ~sel_nodes[55];
  assign index_nodes_27__0_ = (N27)? index_nodes_55__0_ : 
                              (N58)? index_nodes_56__0_ : 1'b0;
  assign N27 = sel_nodes[55];
  assign index_nodes_28__1_ = ~sel_nodes[57];
  assign index_nodes_28__0_ = (N28)? index_nodes_57__0_ : 
                              (N59)? index_nodes_58__0_ : 1'b0;
  assign N28 = sel_nodes[57];
  assign index_nodes_29__1_ = ~sel_nodes[59];
  assign index_nodes_29__0_ = (N29)? index_nodes_59__0_ : 
                              (N60)? index_nodes_60__0_ : 1'b0;
  assign N29 = sel_nodes[59];
  assign index_nodes_30__1_ = ~sel_nodes[61];
  assign index_nodes_30__0_ = (N30)? index_nodes_61__0_ : 
                              (N61)? index_nodes_62__0_ : 1'b0;
  assign N30 = sel_nodes[61];
  assign index_nodes_31__0_ = ~in_i[63];
  assign index_nodes_32__0_ = ~in_i[61];
  assign index_nodes_33__0_ = ~in_i[59];
  assign index_nodes_34__0_ = ~in_i[57];
  assign index_nodes_35__0_ = ~in_i[55];
  assign index_nodes_36__0_ = ~in_i[53];
  assign index_nodes_37__0_ = ~in_i[51];
  assign index_nodes_38__0_ = ~in_i[49];
  assign index_nodes_39__0_ = ~in_i[47];
  assign index_nodes_40__0_ = ~in_i[45];
  assign index_nodes_41__0_ = ~in_i[43];
  assign index_nodes_42__0_ = ~in_i[41];
  assign index_nodes_43__0_ = ~in_i[39];
  assign index_nodes_44__0_ = ~in_i[37];
  assign index_nodes_45__0_ = ~in_i[35];
  assign index_nodes_46__0_ = ~in_i[33];
  assign index_nodes_47__0_ = ~in_i[31];
  assign index_nodes_48__0_ = ~in_i[29];
  assign index_nodes_49__0_ = ~in_i[27];
  assign index_nodes_50__0_ = ~in_i[25];
  assign index_nodes_51__0_ = ~in_i[23];
  assign index_nodes_52__0_ = ~in_i[21];
  assign index_nodes_53__0_ = ~in_i[19];
  assign index_nodes_54__0_ = ~in_i[17];
  assign index_nodes_55__0_ = ~in_i[15];
  assign index_nodes_56__0_ = ~in_i[13];
  assign index_nodes_57__0_ = ~in_i[11];
  assign index_nodes_58__0_ = ~in_i[9];
  assign index_nodes_59__0_ = ~in_i[7];
  assign index_nodes_60__0_ = ~in_i[5];
  assign index_nodes_61__0_ = ~in_i[3];
  assign index_nodes_62__0_ = ~in_i[1];
  assign sel_nodes[0] = sel_nodes[1] | sel_nodes[2];
  assign N31 = ~sel_nodes[1];
  assign sel_nodes[1] = sel_nodes[3] | sel_nodes[4];
  assign N32 = ~sel_nodes[3];
  assign sel_nodes[2] = sel_nodes[5] | sel_nodes[6];
  assign N33 = ~sel_nodes[5];
  assign sel_nodes[3] = sel_nodes[7] | sel_nodes[8];
  assign N34 = ~sel_nodes[7];
  assign sel_nodes[4] = sel_nodes[9] | sel_nodes[10];
  assign N35 = ~sel_nodes[9];
  assign sel_nodes[5] = sel_nodes[11] | sel_nodes[12];
  assign N36 = ~sel_nodes[11];
  assign sel_nodes[6] = sel_nodes[13] | sel_nodes[14];
  assign N37 = ~sel_nodes[13];
  assign sel_nodes[7] = sel_nodes[15] | sel_nodes[16];
  assign N38 = ~sel_nodes[15];
  assign sel_nodes[8] = sel_nodes[17] | sel_nodes[18];
  assign N39 = ~sel_nodes[17];
  assign sel_nodes[9] = sel_nodes[19] | sel_nodes[20];
  assign N40 = ~sel_nodes[19];
  assign sel_nodes[10] = sel_nodes[21] | sel_nodes[22];
  assign N41 = ~sel_nodes[21];
  assign sel_nodes[11] = sel_nodes[23] | sel_nodes[24];
  assign N42 = ~sel_nodes[23];
  assign sel_nodes[12] = sel_nodes[25] | sel_nodes[26];
  assign N43 = ~sel_nodes[25];
  assign sel_nodes[13] = sel_nodes[27] | sel_nodes[28];
  assign N44 = ~sel_nodes[27];
  assign sel_nodes[14] = sel_nodes[29] | sel_nodes[30];
  assign N45 = ~sel_nodes[29];
  assign sel_nodes[15] = sel_nodes[31] | sel_nodes[32];
  assign N46 = ~sel_nodes[31];
  assign sel_nodes[16] = sel_nodes[33] | sel_nodes[34];
  assign N47 = ~sel_nodes[33];
  assign sel_nodes[17] = sel_nodes[35] | sel_nodes[36];
  assign N48 = ~sel_nodes[35];
  assign sel_nodes[18] = sel_nodes[37] | sel_nodes[38];
  assign N49 = ~sel_nodes[37];
  assign sel_nodes[19] = sel_nodes[39] | sel_nodes[40];
  assign N50 = ~sel_nodes[39];
  assign sel_nodes[20] = sel_nodes[41] | sel_nodes[42];
  assign N51 = ~sel_nodes[41];
  assign sel_nodes[21] = sel_nodes[43] | sel_nodes[44];
  assign N52 = ~sel_nodes[43];
  assign sel_nodes[22] = sel_nodes[45] | sel_nodes[46];
  assign N53 = ~sel_nodes[45];
  assign sel_nodes[23] = sel_nodes[47] | sel_nodes[48];
  assign N54 = ~sel_nodes[47];
  assign sel_nodes[24] = sel_nodes[49] | sel_nodes[50];
  assign N55 = ~sel_nodes[49];
  assign sel_nodes[25] = sel_nodes[51] | sel_nodes[52];
  assign N56 = ~sel_nodes[51];
  assign sel_nodes[26] = sel_nodes[53] | sel_nodes[54];
  assign N57 = ~sel_nodes[53];
  assign sel_nodes[27] = sel_nodes[55] | sel_nodes[56];
  assign N58 = ~sel_nodes[55];
  assign sel_nodes[28] = sel_nodes[57] | sel_nodes[58];
  assign N59 = ~sel_nodes[57];
  assign sel_nodes[29] = sel_nodes[59] | sel_nodes[60];
  assign N60 = ~sel_nodes[59];
  assign sel_nodes[30] = sel_nodes[61] | sel_nodes[62];
  assign N61 = ~sel_nodes[61];
  assign sel_nodes[31] = in_i[63] | in_i[62];
  assign sel_nodes[32] = in_i[61] | in_i[60];
  assign sel_nodes[33] = in_i[59] | in_i[58];
  assign sel_nodes[34] = in_i[57] | in_i[56];
  assign sel_nodes[35] = in_i[55] | in_i[54];
  assign sel_nodes[36] = in_i[53] | in_i[52];
  assign sel_nodes[37] = in_i[51] | in_i[50];
  assign sel_nodes[38] = in_i[49] | in_i[48];
  assign sel_nodes[39] = in_i[47] | in_i[46];
  assign sel_nodes[40] = in_i[45] | in_i[44];
  assign sel_nodes[41] = in_i[43] | in_i[42];
  assign sel_nodes[42] = in_i[41] | in_i[40];
  assign sel_nodes[43] = in_i[39] | in_i[38];
  assign sel_nodes[44] = in_i[37] | in_i[36];
  assign sel_nodes[45] = in_i[35] | in_i[34];
  assign sel_nodes[46] = in_i[33] | in_i[32];
  assign sel_nodes[47] = in_i[31] | in_i[30];
  assign sel_nodes[48] = in_i[29] | in_i[28];
  assign sel_nodes[49] = in_i[27] | in_i[26];
  assign sel_nodes[50] = in_i[25] | in_i[24];
  assign sel_nodes[51] = in_i[23] | in_i[22];
  assign sel_nodes[52] = in_i[21] | in_i[20];
  assign sel_nodes[53] = in_i[19] | in_i[18];
  assign sel_nodes[54] = in_i[17] | in_i[16];
  assign sel_nodes[55] = in_i[15] | in_i[14];
  assign sel_nodes[56] = in_i[13] | in_i[12];
  assign sel_nodes[57] = in_i[11] | in_i[10];
  assign sel_nodes[58] = in_i[9] | in_i[8];
  assign sel_nodes[59] = in_i[7] | in_i[6];
  assign sel_nodes[60] = in_i[5] | in_i[4];
  assign sel_nodes[61] = in_i[3] | in_i[2];
  assign sel_nodes[62] = in_i[1] | in_i[0];
  assign empty_o = ~sel_nodes[0];

endmodule