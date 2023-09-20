module SCRFile
(
  clk,
  reset,
  io_smi_req_ready,
  io_smi_req_valid,
  io_smi_req_bits_rw,
  io_smi_req_bits_addr,
  io_smi_req_bits_data,
  io_smi_resp_ready,
  io_smi_resp_valid,
  io_smi_resp_bits,
  io_scr_rdata_63,
  io_scr_rdata_62,
  io_scr_rdata_61,
  io_scr_rdata_60,
  io_scr_rdata_59,
  io_scr_rdata_58,
  io_scr_rdata_57,
  io_scr_rdata_56,
  io_scr_rdata_55,
  io_scr_rdata_54,
  io_scr_rdata_53,
  io_scr_rdata_52,
  io_scr_rdata_51,
  io_scr_rdata_50,
  io_scr_rdata_49,
  io_scr_rdata_48,
  io_scr_rdata_47,
  io_scr_rdata_46,
  io_scr_rdata_45,
  io_scr_rdata_44,
  io_scr_rdata_43,
  io_scr_rdata_42,
  io_scr_rdata_41,
  io_scr_rdata_40,
  io_scr_rdata_39,
  io_scr_rdata_38,
  io_scr_rdata_37,
  io_scr_rdata_36,
  io_scr_rdata_35,
  io_scr_rdata_34,
  io_scr_rdata_33,
  io_scr_rdata_32,
  io_scr_rdata_31,
  io_scr_rdata_30,
  io_scr_rdata_29,
  io_scr_rdata_28,
  io_scr_rdata_27,
  io_scr_rdata_26,
  io_scr_rdata_25,
  io_scr_rdata_24,
  io_scr_rdata_23,
  io_scr_rdata_22,
  io_scr_rdata_21,
  io_scr_rdata_20,
  io_scr_rdata_19,
  io_scr_rdata_18,
  io_scr_rdata_17,
  io_scr_rdata_16,
  io_scr_rdata_15,
  io_scr_rdata_14,
  io_scr_rdata_13,
  io_scr_rdata_12,
  io_scr_rdata_11,
  io_scr_rdata_10,
  io_scr_rdata_9,
  io_scr_rdata_8,
  io_scr_rdata_7,
  io_scr_rdata_6,
  io_scr_rdata_5,
  io_scr_rdata_4,
  io_scr_rdata_3,
  io_scr_rdata_2,
  io_scr_rdata_1,
  io_scr_rdata_0,
  io_scr_wen,
  io_scr_waddr,
  io_scr_wdata
);

  input [5:0] io_smi_req_bits_addr;
  input [63:0] io_smi_req_bits_data;
  output [63:0] io_smi_resp_bits;
  input [63:0] io_scr_rdata_63;
  input [63:0] io_scr_rdata_62;
  input [63:0] io_scr_rdata_61;
  input [63:0] io_scr_rdata_60;
  input [63:0] io_scr_rdata_59;
  input [63:0] io_scr_rdata_58;
  input [63:0] io_scr_rdata_57;
  input [63:0] io_scr_rdata_56;
  input [63:0] io_scr_rdata_55;
  input [63:0] io_scr_rdata_54;
  input [63:0] io_scr_rdata_53;
  input [63:0] io_scr_rdata_52;
  input [63:0] io_scr_rdata_51;
  input [63:0] io_scr_rdata_50;
  input [63:0] io_scr_rdata_49;
  input [63:0] io_scr_rdata_48;
  input [63:0] io_scr_rdata_47;
  input [63:0] io_scr_rdata_46;
  input [63:0] io_scr_rdata_45;
  input [63:0] io_scr_rdata_44;
  input [63:0] io_scr_rdata_43;
  input [63:0] io_scr_rdata_42;
  input [63:0] io_scr_rdata_41;
  input [63:0] io_scr_rdata_40;
  input [63:0] io_scr_rdata_39;
  input [63:0] io_scr_rdata_38;
  input [63:0] io_scr_rdata_37;
  input [63:0] io_scr_rdata_36;
  input [63:0] io_scr_rdata_35;
  input [63:0] io_scr_rdata_34;
  input [63:0] io_scr_rdata_33;
  input [63:0] io_scr_rdata_32;
  input [63:0] io_scr_rdata_31;
  input [63:0] io_scr_rdata_30;
  input [63:0] io_scr_rdata_29;
  input [63:0] io_scr_rdata_28;
  input [63:0] io_scr_rdata_27;
  input [63:0] io_scr_rdata_26;
  input [63:0] io_scr_rdata_25;
  input [63:0] io_scr_rdata_24;
  input [63:0] io_scr_rdata_23;
  input [63:0] io_scr_rdata_22;
  input [63:0] io_scr_rdata_21;
  input [63:0] io_scr_rdata_20;
  input [63:0] io_scr_rdata_19;
  input [63:0] io_scr_rdata_18;
  input [63:0] io_scr_rdata_17;
  input [63:0] io_scr_rdata_16;
  input [63:0] io_scr_rdata_15;
  input [63:0] io_scr_rdata_14;
  input [63:0] io_scr_rdata_13;
  input [63:0] io_scr_rdata_12;
  input [63:0] io_scr_rdata_11;
  input [63:0] io_scr_rdata_10;
  input [63:0] io_scr_rdata_9;
  input [63:0] io_scr_rdata_8;
  input [63:0] io_scr_rdata_7;
  input [63:0] io_scr_rdata_6;
  input [63:0] io_scr_rdata_5;
  input [63:0] io_scr_rdata_4;
  input [63:0] io_scr_rdata_3;
  input [63:0] io_scr_rdata_2;
  input [63:0] io_scr_rdata_1;
  input [63:0] io_scr_rdata_0;
  output [5:0] io_scr_waddr;
  output [63:0] io_scr_wdata;
  input clk;
  input reset;
  input io_smi_req_valid;
  input io_smi_req_bits_rw;
  input io_smi_resp_ready;
  output io_smi_req_ready;
  output io_smi_resp_valid;
  output io_scr_wen;
  wire [63:0] io_smi_resp_bits,io_scr_wdata,T68,T3,T37,T4,T22,T5,T15,T6,T12,T7,T18,T16,T29,
  T23,T26,T24,T32,T30,T52,T38,T45,T39,T42,T40,T48,T46,T59,T53,T56,T54,T62,T60,T99,
  T69,T84,T70,T77,T71,T74,T72,T80,T78,T91,T85,T88,T86,T94,T92,T114,T100,T107,T101,
  T104,T102,T110,T108,T121,T115,T118,T116,T124,T122;
  wire [5:0] io_scr_waddr;
  wire io_smi_req_ready,io_scr_wen,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,T1,N13,
  N14,N15,N16,N17,N18,T11,T133,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38;
  reg [5:0] T9;
  reg io_smi_resp_valid;
  assign io_scr_waddr[5] = io_smi_req_bits_addr[5];
  assign io_scr_waddr[4] = io_smi_req_bits_addr[4];
  assign io_scr_waddr[3] = io_smi_req_bits_addr[3];
  assign io_scr_waddr[2] = io_smi_req_bits_addr[2];
  assign io_scr_waddr[1] = io_smi_req_bits_addr[1];
  assign io_scr_waddr[0] = io_smi_req_bits_addr[0];
  assign io_scr_wdata[63] = io_smi_req_bits_data[63];
  assign io_scr_wdata[62] = io_smi_req_bits_data[62];
  assign io_scr_wdata[61] = io_smi_req_bits_data[61];
  assign io_scr_wdata[60] = io_smi_req_bits_data[60];
  assign io_scr_wdata[59] = io_smi_req_bits_data[59];
  assign io_scr_wdata[58] = io_smi_req_bits_data[58];
  assign io_scr_wdata[57] = io_smi_req_bits_data[57];
  assign io_scr_wdata[56] = io_smi_req_bits_data[56];
  assign io_scr_wdata[55] = io_smi_req_bits_data[55];
  assign io_scr_wdata[54] = io_smi_req_bits_data[54];
  assign io_scr_wdata[53] = io_smi_req_bits_data[53];
  assign io_scr_wdata[52] = io_smi_req_bits_data[52];
  assign io_scr_wdata[51] = io_smi_req_bits_data[51];
  assign io_scr_wdata[50] = io_smi_req_bits_data[50];
  assign io_scr_wdata[49] = io_smi_req_bits_data[49];
  assign io_scr_wdata[48] = io_smi_req_bits_data[48];
  assign io_scr_wdata[47] = io_smi_req_bits_data[47];
  assign io_scr_wdata[46] = io_smi_req_bits_data[46];
  assign io_scr_wdata[45] = io_smi_req_bits_data[45];
  assign io_scr_wdata[44] = io_smi_req_bits_data[44];
  assign io_scr_wdata[43] = io_smi_req_bits_data[43];
  assign io_scr_wdata[42] = io_smi_req_bits_data[42];
  assign io_scr_wdata[41] = io_smi_req_bits_data[41];
  assign io_scr_wdata[40] = io_smi_req_bits_data[40];
  assign io_scr_wdata[39] = io_smi_req_bits_data[39];
  assign io_scr_wdata[38] = io_smi_req_bits_data[38];
  assign io_scr_wdata[37] = io_smi_req_bits_data[37];
  assign io_scr_wdata[36] = io_smi_req_bits_data[36];
  assign io_scr_wdata[35] = io_smi_req_bits_data[35];
  assign io_scr_wdata[34] = io_smi_req_bits_data[34];
  assign io_scr_wdata[33] = io_smi_req_bits_data[33];
  assign io_scr_wdata[32] = io_smi_req_bits_data[32];
  assign io_scr_wdata[31] = io_smi_req_bits_data[31];
  assign io_scr_wdata[30] = io_smi_req_bits_data[30];
  assign io_scr_wdata[29] = io_smi_req_bits_data[29];
  assign io_scr_wdata[28] = io_smi_req_bits_data[28];
  assign io_scr_wdata[27] = io_smi_req_bits_data[27];
  assign io_scr_wdata[26] = io_smi_req_bits_data[26];
  assign io_scr_wdata[25] = io_smi_req_bits_data[25];
  assign io_scr_wdata[24] = io_smi_req_bits_data[24];
  assign io_scr_wdata[23] = io_smi_req_bits_data[23];
  assign io_scr_wdata[22] = io_smi_req_bits_data[22];
  assign io_scr_wdata[21] = io_smi_req_bits_data[21];
  assign io_scr_wdata[20] = io_smi_req_bits_data[20];
  assign io_scr_wdata[19] = io_smi_req_bits_data[19];
  assign io_scr_wdata[18] = io_smi_req_bits_data[18];
  assign io_scr_wdata[17] = io_smi_req_bits_data[17];
  assign io_scr_wdata[16] = io_smi_req_bits_data[16];
  assign io_scr_wdata[15] = io_smi_req_bits_data[15];
  assign io_scr_wdata[14] = io_smi_req_bits_data[14];
  assign io_scr_wdata[13] = io_smi_req_bits_data[13];
  assign io_scr_wdata[12] = io_smi_req_bits_data[12];
  assign io_scr_wdata[11] = io_smi_req_bits_data[11];
  assign io_scr_wdata[10] = io_smi_req_bits_data[10];
  assign io_scr_wdata[9] = io_smi_req_bits_data[9];
  assign io_scr_wdata[8] = io_smi_req_bits_data[8];
  assign io_scr_wdata[7] = io_smi_req_bits_data[7];
  assign io_scr_wdata[6] = io_smi_req_bits_data[6];
  assign io_scr_wdata[5] = io_smi_req_bits_data[5];
  assign io_scr_wdata[4] = io_smi_req_bits_data[4];
  assign io_scr_wdata[3] = io_smi_req_bits_data[3];
  assign io_scr_wdata[2] = io_smi_req_bits_data[2];
  assign io_scr_wdata[1] = io_smi_req_bits_data[1];
  assign io_scr_wdata[0] = io_smi_req_bits_data[0];

  always @(posedge clk) begin
    if(N21) begin
      T9[5] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      T9[4] <= N26;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      T9[3] <= N25;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      T9[2] <= N24;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      T9[1] <= N23;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      T9[0] <= N22;
    end 
  end


  always @(posedge clk) begin
    if(N31) begin
      io_smi_resp_valid <= N32;
    end 
  end

  assign io_smi_resp_bits = (N0)? T68 : 
                            (N1)? T3 : 1'b0;
  assign N0 = T9[5];
  assign N1 = N13;
  assign T3 = (N2)? T37 : 
              (N3)? T4 : 1'b0;
  assign N2 = T9[4];
  assign N3 = N14;
  assign T4 = (N4)? T22 : 
              (N5)? T5 : 1'b0;
  assign N4 = T9[3];
  assign N5 = N15;
  assign T5 = (N6)? T15 : 
              (N7)? T6 : 1'b0;
  assign N6 = T9[2];
  assign N7 = N16;
  assign T6 = (N8)? T12 : 
              (N9)? T7 : 1'b0;
  assign N8 = T9[1];
  assign N9 = N17;
  assign T7 = (N10)? io_scr_rdata_1 : 
              (N11)? io_scr_rdata_0 : 1'b0;
  assign N10 = T9[0];
  assign N11 = N18;
  assign T12 = (N10)? io_scr_rdata_3 : 
               (N11)? io_scr_rdata_2 : 1'b0;
  assign T15 = (N8)? T18 : 
               (N9)? T16 : 1'b0;
  assign T16 = (N10)? io_scr_rdata_5 : 
               (N11)? io_scr_rdata_4 : 1'b0;
  assign T18 = (N10)? io_scr_rdata_7 : 
               (N11)? io_scr_rdata_6 : 1'b0;
  assign T22 = (N6)? T29 : 
               (N7)? T23 : 1'b0;
  assign T23 = (N8)? T26 : 
               (N9)? T24 : 1'b0;
  assign T24 = (N10)? io_scr_rdata_9 : 
               (N11)? io_scr_rdata_8 : 1'b0;
  assign T26 = (N10)? io_scr_rdata_11 : 
               (N11)? io_scr_rdata_10 : 1'b0;
  assign T29 = (N8)? T32 : 
               (N9)? T30 : 1'b0;
  assign T30 = (N10)? io_scr_rdata_13 : 
               (N11)? io_scr_rdata_12 : 1'b0;
  assign T32 = (N10)? io_scr_rdata_15 : 
               (N11)? io_scr_rdata_14 : 1'b0;
  assign T37 = (N4)? T52 : 
               (N5)? T38 : 1'b0;
  assign T38 = (N6)? T45 : 
               (N7)? T39 : 1'b0;
  assign T39 = (N8)? T42 : 
               (N9)? T40 : 1'b0;
  assign T40 = (N10)? io_scr_rdata_17 : 
               (N11)? io_scr_rdata_16 : 1'b0;
  assign T42 = (N10)? io_scr_rdata_19 : 
               (N11)? io_scr_rdata_18 : 1'b0;
  assign T45 = (N8)? T48 : 
               (N9)? T46 : 1'b0;
  assign T46 = (N10)? io_scr_rdata_21 : 
               (N11)? io_scr_rdata_20 : 1'b0;
  assign T48 = (N10)? io_scr_rdata_23 : 
               (N11)? io_scr_rdata_22 : 1'b0;
  assign T52 = (N6)? T59 : 
               (N7)? T53 : 1'b0;
  assign T53 = (N8)? T56 : 
               (N9)? T54 : 1'b0;
  assign T54 = (N10)? io_scr_rdata_25 : 
               (N11)? io_scr_rdata_24 : 1'b0;
  assign T56 = (N10)? io_scr_rdata_27 : 
               (N11)? io_scr_rdata_26 : 1'b0;
  assign T59 = (N8)? T62 : 
               (N9)? T60 : 1'b0;
  assign T60 = (N10)? io_scr_rdata_29 : 
               (N11)? io_scr_rdata_28 : 1'b0;
  assign T62 = (N10)? io_scr_rdata_31 : 
               (N11)? io_scr_rdata_30 : 1'b0;
  assign T68 = (N2)? T99 : 
               (N3)? T69 : 1'b0;
  assign T69 = (N4)? T84 : 
               (N5)? T70 : 1'b0;
  assign T70 = (N6)? T77 : 
               (N7)? T71 : 1'b0;
  assign T71 = (N8)? T74 : 
               (N9)? T72 : 1'b0;
  assign T72 = (N10)? io_scr_rdata_33 : 
               (N11)? io_scr_rdata_32 : 1'b0;
  assign T74 = (N10)? io_scr_rdata_35 : 
               (N11)? io_scr_rdata_34 : 1'b0;
  assign T77 = (N8)? T80 : 
               (N9)? T78 : 1'b0;
  assign T78 = (N10)? io_scr_rdata_37 : 
               (N11)? io_scr_rdata_36 : 1'b0;
  assign T80 = (N10)? io_scr_rdata_39 : 
               (N11)? io_scr_rdata_38 : 1'b0;
  assign T84 = (N6)? T91 : 
               (N7)? T85 : 1'b0;
  assign T85 = (N8)? T88 : 
               (N9)? T86 : 1'b0;
  assign T86 = (N10)? io_scr_rdata_41 : 
               (N11)? io_scr_rdata_40 : 1'b0;
  assign T88 = (N10)? io_scr_rdata_43 : 
               (N11)? io_scr_rdata_42 : 1'b0;
  assign T91 = (N8)? T94 : 
               (N9)? T92 : 1'b0;
  assign T92 = (N10)? io_scr_rdata_45 : 
               (N11)? io_scr_rdata_44 : 1'b0;
  assign T94 = (N10)? io_scr_rdata_47 : 
               (N11)? io_scr_rdata_46 : 1'b0;
  assign T99 = (N4)? T114 : 
               (N5)? T100 : 1'b0;
  assign T100 = (N6)? T107 : 
                (N7)? T101 : 1'b0;
  assign T101 = (N8)? T104 : 
                (N9)? T102 : 1'b0;
  assign T102 = (N10)? io_scr_rdata_49 : 
                (N11)? io_scr_rdata_48 : 1'b0;
  assign T104 = (N10)? io_scr_rdata_51 : 
                (N11)? io_scr_rdata_50 : 1'b0;
  assign T107 = (N8)? T110 : 
                (N9)? T108 : 1'b0;
  assign T108 = (N10)? io_scr_rdata_53 : 
                (N11)? io_scr_rdata_52 : 1'b0;
  assign T110 = (N10)? io_scr_rdata_55 : 
                (N11)? io_scr_rdata_54 : 1'b0;
  assign T114 = (N6)? T121 : 
                (N7)? T115 : 1'b0;
  assign T115 = (N8)? T118 : 
                (N9)? T116 : 1'b0;
  assign T116 = (N10)? io_scr_rdata_57 : 
                (N11)? io_scr_rdata_56 : 1'b0;
  assign T118 = (N10)? io_scr_rdata_59 : 
                (N11)? io_scr_rdata_58 : 1'b0;
  assign T121 = (N8)? T124 : 
                (N9)? T122 : 1'b0;
  assign T122 = (N10)? io_scr_rdata_61 : 
                (N11)? io_scr_rdata_60 : 1'b0;
  assign T124 = (N10)? io_scr_rdata_63 : 
                (N11)? io_scr_rdata_62 : 1'b0;
  assign N21 = (N12)? 1'b1 : 
               (N34)? 1'b1 : 
               (N20)? 1'b0 : 1'b0;
  assign N12 = reset;
  assign { N27, N26, N25, N24, N23, N22 } = (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N34)? io_smi_req_bits_addr : 1'b0;
  assign N31 = (N12)? 1'b1 : 
               (N35)? 1'b1 : 
               (N38)? 1'b1 : 
               (N30)? 1'b0 : 1'b0;
  assign N32 = (N12)? 1'b0 : 
               (N35)? 1'b0 : 
               (N38)? 1'b1 : 1'b0;
  assign io_scr_wen = T1 & io_smi_req_bits_rw;
  assign T1 = io_smi_req_ready & io_smi_req_valid;
  assign N13 = ~T9[5];
  assign N14 = ~T9[4];
  assign N15 = ~T9[3];
  assign N16 = ~T9[2];
  assign N17 = ~T9[1];
  assign N18 = ~T9[0];
  assign T11 = io_smi_req_ready & io_smi_req_valid;
  assign T133 = io_smi_resp_ready & io_smi_resp_valid;
  assign io_smi_req_ready = ~io_smi_resp_valid;
  assign N19 = T11 | reset;
  assign N20 = ~N19;
  assign N28 = T133 | reset;
  assign N29 = T11 | N28;
  assign N30 = ~N29;
  assign N33 = ~reset;
  assign N34 = T11 & N33;
  assign N35 = T133 & N33;
  assign N36 = ~T133;
  assign N37 = N33 & N36;
  assign N38 = T11 & N37;

endmodule