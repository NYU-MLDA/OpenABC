module bsg_tag_master_els_p9_lg_width_p4
(
  clk_i,
  en_i,
  data_i,
  clients_r_o
);

  output [35:0] clients_r_o;
  input clk_i;
  input en_i;
  input data_i;
  wire [35:0] clients_r_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,clients_r_o_0__clk_,clients_r_o_0__en_,data_i_r,_1_net_,
  _2_net_,N8,v_n,bsg_tag_n_op_,bsg_tag_n_param_,N9,N10,N11,N12,N13,N14,N15,N16,
  N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,
  N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,
  N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67;
  wire [5:0] zeros_ctr_r;
  wire [1:0] state_r,state_n;
  wire [4:0] hdr_ptr_r,hdr_ptr_n;
  wire [8:0] hdr_r,hdr_n,clients_decode;
  reg data_i_r_sv2v_reg,hdr_ptr_r_4_sv2v_reg,hdr_ptr_r_3_sv2v_reg,
  hdr_ptr_r_2_sv2v_reg,hdr_ptr_r_1_sv2v_reg,hdr_ptr_r_0_sv2v_reg,state_r_1_sv2v_reg,
  state_r_0_sv2v_reg,hdr_r_8_sv2v_reg,hdr_r_7_sv2v_reg,hdr_r_6_sv2v_reg,hdr_r_5_sv2v_reg,
  hdr_r_4_sv2v_reg,hdr_r_3_sv2v_reg,hdr_r_2_sv2v_reg,hdr_r_1_sv2v_reg,hdr_r_0_sv2v_reg,
  clients_r_o_2_sv2v_reg,clients_r_o_1_sv2v_reg,clients_r_o_6_sv2v_reg,
  clients_r_o_5_sv2v_reg,clients_r_o_10_sv2v_reg,clients_r_o_9_sv2v_reg,clients_r_o_14_sv2v_reg,
  clients_r_o_13_sv2v_reg,clients_r_o_18_sv2v_reg,clients_r_o_17_sv2v_reg,
  clients_r_o_22_sv2v_reg,clients_r_o_21_sv2v_reg,clients_r_o_26_sv2v_reg,
  clients_r_o_25_sv2v_reg,clients_r_o_30_sv2v_reg,clients_r_o_29_sv2v_reg,clients_r_o_34_sv2v_reg,
  clients_r_o_33_sv2v_reg;
  assign data_i_r = data_i_r_sv2v_reg;
  assign hdr_ptr_r[4] = hdr_ptr_r_4_sv2v_reg;
  assign hdr_ptr_r[3] = hdr_ptr_r_3_sv2v_reg;
  assign hdr_ptr_r[2] = hdr_ptr_r_2_sv2v_reg;
  assign hdr_ptr_r[1] = hdr_ptr_r_1_sv2v_reg;
  assign hdr_ptr_r[0] = hdr_ptr_r_0_sv2v_reg;
  assign state_r[1] = state_r_1_sv2v_reg;
  assign state_r[0] = state_r_0_sv2v_reg;
  assign hdr_r[8] = hdr_r_8_sv2v_reg;
  assign hdr_r[7] = hdr_r_7_sv2v_reg;
  assign hdr_r[6] = hdr_r_6_sv2v_reg;
  assign hdr_r[5] = hdr_r_5_sv2v_reg;
  assign hdr_r[4] = hdr_r_4_sv2v_reg;
  assign hdr_r[3] = hdr_r_3_sv2v_reg;
  assign hdr_r[2] = hdr_r_2_sv2v_reg;
  assign hdr_r[1] = hdr_r_1_sv2v_reg;
  assign hdr_r[0] = hdr_r_0_sv2v_reg;
  assign clients_r_o[2] = clients_r_o_2_sv2v_reg;
  assign clients_r_o[1] = clients_r_o_1_sv2v_reg;
  assign clients_r_o[6] = clients_r_o_6_sv2v_reg;
  assign clients_r_o[5] = clients_r_o_5_sv2v_reg;
  assign clients_r_o[10] = clients_r_o_10_sv2v_reg;
  assign clients_r_o[9] = clients_r_o_9_sv2v_reg;
  assign clients_r_o[14] = clients_r_o_14_sv2v_reg;
  assign clients_r_o[13] = clients_r_o_13_sv2v_reg;
  assign clients_r_o[18] = clients_r_o_18_sv2v_reg;
  assign clients_r_o[17] = clients_r_o_17_sv2v_reg;
  assign clients_r_o[22] = clients_r_o_22_sv2v_reg;
  assign clients_r_o[21] = clients_r_o_21_sv2v_reg;
  assign clients_r_o[26] = clients_r_o_26_sv2v_reg;
  assign clients_r_o[25] = clients_r_o_25_sv2v_reg;
  assign clients_r_o[30] = clients_r_o_30_sv2v_reg;
  assign clients_r_o[29] = clients_r_o_29_sv2v_reg;
  assign clients_r_o[34] = clients_r_o_34_sv2v_reg;
  assign clients_r_o[33] = clients_r_o_33_sv2v_reg;
  assign clients_r_o_0__clk_ = clk_i;
  assign clients_r_o[35] = clients_r_o_0__clk_;
  assign clients_r_o[31] = clients_r_o_0__clk_;
  assign clients_r_o[27] = clients_r_o_0__clk_;
  assign clients_r_o[23] = clients_r_o_0__clk_;
  assign clients_r_o[19] = clients_r_o_0__clk_;
  assign clients_r_o[15] = clients_r_o_0__clk_;
  assign clients_r_o[11] = clients_r_o_0__clk_;
  assign clients_r_o[7] = clients_r_o_0__clk_;
  assign clients_r_o[3] = clients_r_o_0__clk_;
  assign clients_r_o_0__en_ = en_i;
  assign clients_r_o[32] = clients_r_o_0__en_;
  assign clients_r_o[28] = clients_r_o_0__en_;
  assign clients_r_o[24] = clients_r_o_0__en_;
  assign clients_r_o[20] = clients_r_o_0__en_;
  assign clients_r_o[16] = clients_r_o_0__en_;
  assign clients_r_o[12] = clients_r_o_0__en_;
  assign clients_r_o[8] = clients_r_o_0__en_;
  assign clients_r_o[4] = clients_r_o_0__en_;
  assign clients_r_o[0] = clients_r_o_0__en_;

  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      data_i_r_sv2v_reg <= data_i;
    end 
  end


  bsg_counter_clear_up_max_val_p63_init_val_p0
  bccu
  (
    .clk_i(clients_r_o_0__clk_),
    .reset_i(1'b0),
    .clear_i(_1_net_),
    .up_i(_2_net_),
    .count_o(zeros_ctr_r)
  );


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      hdr_ptr_r_4_sv2v_reg <= 1'b0;
    end else if(N49) begin
      hdr_ptr_r_4_sv2v_reg <= hdr_ptr_n[4];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      hdr_ptr_r_3_sv2v_reg <= 1'b0;
    end else if(N49) begin
      hdr_ptr_r_3_sv2v_reg <= hdr_ptr_n[3];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      hdr_ptr_r_2_sv2v_reg <= 1'b0;
    end else if(N49) begin
      hdr_ptr_r_2_sv2v_reg <= hdr_ptr_n[2];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      hdr_ptr_r_1_sv2v_reg <= 1'b0;
    end else if(N49) begin
      hdr_ptr_r_1_sv2v_reg <= hdr_ptr_n[1];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      hdr_ptr_r_0_sv2v_reg <= 1'b0;
    end else if(N49) begin
      hdr_ptr_r_0_sv2v_reg <= hdr_ptr_n[0];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      state_r_1_sv2v_reg <= 1'b0;
    end else if(N51) begin
      state_r_1_sv2v_reg <= state_n[1];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N8) begin
      state_r_0_sv2v_reg <= 1'b0;
    end else if(N51) begin
      state_r_0_sv2v_reg <= state_n[0];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N49) begin
      hdr_r_8_sv2v_reg <= hdr_n[8];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N49) begin
      hdr_r_7_sv2v_reg <= hdr_n[7];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N49) begin
      hdr_r_6_sv2v_reg <= hdr_n[6];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N49) begin
      hdr_r_5_sv2v_reg <= hdr_n[5];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N49) begin
      hdr_r_4_sv2v_reg <= hdr_n[4];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N52) begin
      hdr_r_3_sv2v_reg <= hdr_n[3];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N52) begin
      hdr_r_2_sv2v_reg <= hdr_n[2];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N52) begin
      hdr_r_1_sv2v_reg <= hdr_n[1];
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(N52) begin
      hdr_r_0_sv2v_reg <= hdr_n[0];
    end 
  end

  assign N11 = N9 & N10;
  assign N12 = state_r[1] | N10;
  assign N14 = N9 | state_r[0];
  assign N16 = state_r[1] & state_r[0];
  assign clients_decode = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, v_n } << hdr_r[8:5];

  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_2_sv2v_reg <= N30;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_1_sv2v_reg <= N31;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_6_sv2v_reg <= N32;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_5_sv2v_reg <= N33;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_10_sv2v_reg <= N34;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_9_sv2v_reg <= N35;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_14_sv2v_reg <= N36;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_13_sv2v_reg <= N37;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_18_sv2v_reg <= N38;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_17_sv2v_reg <= N39;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_22_sv2v_reg <= N40;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_21_sv2v_reg <= N41;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_26_sv2v_reg <= N42;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_25_sv2v_reg <= N43;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_30_sv2v_reg <= N44;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_29_sv2v_reg <= N45;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_34_sv2v_reg <= N46;
    end 
  end


  always @(posedge clients_r_o_0__clk_) begin
    if(1'b1) begin
      clients_r_o_33_sv2v_reg <= N47;
    end 
  end

  assign N53 = ~hdr_r[0];
  assign N54 = hdr_r[2] | hdr_r[3];
  assign N55 = hdr_r[1] | N54;
  assign N56 = N53 | N55;
  assign N57 = ~N56;
  assign N58 = hdr_r[3] | hdr_r[4];
  assign N59 = hdr_r[2] | N58;
  assign N60 = hdr_r[1] | N59;
  assign N61 = ~hdr_ptr_r[3];
  assign N62 = N61 | hdr_ptr_r[4];
  assign N63 = hdr_ptr_r[2] | N62;
  assign N64 = hdr_ptr_r[1] | N63;
  assign N65 = hdr_ptr_r[0] | N64;
  assign N66 = ~N65;
  assign { N21, N20, N19, N18, N17 } = hdr_ptr_r + 1'b1;
  assign { N29, N28, N27, N26 } = hdr_r[3:0] - 1'b1;
  assign { N23, N22 } = (N0)? { N60, 1'b0 } : 
                        (N1)? state_r : 1'b0;
  assign N0 = N66;
  assign N1 = N65;
  assign { N25, N24 } = (N2)? { 1'b0, 1'b0 } : 
                        (N3)? state_r : 1'b0;
  assign N2 = N57;
  assign N3 = N56;
  assign state_n = (N4)? { 1'b0, 1'b1 } : 
                   (N5)? { N23, N22 } : 
                   (N6)? { N25, N24 } : 
                   (N7)? { 1'b1, 1'b1 } : 1'b0;
  assign N4 = N11;
  assign N5 = N13;
  assign N6 = N15;
  assign N7 = N16;
  assign hdr_ptr_n = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                     (N5)? { N21, N20, N19, N18, N17 } : 1'b0;
  assign hdr_n[3:0] = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                      (N5)? hdr_r[4:1] : 
                      (N6)? { N29, N28, N27, N26 } : 1'b0;
  assign hdr_n[8:4] = (N4)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                      (N5)? { data_i_r, hdr_r[8:5] } : 1'b0;
  assign v_n = (N4)? 1'b0 : 
               (N5)? 1'b0 : 
               (N6)? 1'b1 : 
               (N7)? 1'b0 : 1'b0;
  assign { bsg_tag_n_op_, bsg_tag_n_param_ } = (N4)? { 1'b0, 1'b0 } : 
                                               (N5)? { 1'b0, 1'b0 } : 
                                               (N6)? { hdr_r[4:4], data_i_r } : 
                                               (N7)? { 1'b0, 1'b0 } : 1'b0;
  assign _2_net_ = ~data_i_r;
  assign _1_net_ = data_i_r | zeros_ctr_r[5];
  assign N8 = zeros_ctr_r[5] & N67;
  assign N67 = ~data_i_r;
  assign N9 = ~state_r[1];
  assign N10 = ~state_r[0];
  assign N13 = ~N12;
  assign N15 = ~N14;
  assign N30 = clients_decode[0] & bsg_tag_n_op_;
  assign N31 = clients_decode[0] & bsg_tag_n_param_;
  assign N32 = clients_decode[1] & bsg_tag_n_op_;
  assign N33 = clients_decode[1] & bsg_tag_n_param_;
  assign N34 = clients_decode[2] & bsg_tag_n_op_;
  assign N35 = clients_decode[2] & bsg_tag_n_param_;
  assign N36 = clients_decode[3] & bsg_tag_n_op_;
  assign N37 = clients_decode[3] & bsg_tag_n_param_;
  assign N38 = clients_decode[4] & bsg_tag_n_op_;
  assign N39 = clients_decode[4] & bsg_tag_n_param_;
  assign N40 = clients_decode[5] & bsg_tag_n_op_;
  assign N41 = clients_decode[5] & bsg_tag_n_param_;
  assign N42 = clients_decode[6] & bsg_tag_n_op_;
  assign N43 = clients_decode[6] & bsg_tag_n_param_;
  assign N44 = clients_decode[7] & bsg_tag_n_op_;
  assign N45 = clients_decode[7] & bsg_tag_n_param_;
  assign N46 = clients_decode[8] & bsg_tag_n_op_;
  assign N47 = clients_decode[8] & bsg_tag_n_param_;
  assign N48 = N15 | N16;
  assign N49 = ~N48;
  assign N50 = N67 & N11;
  assign N51 = ~N50;
  assign N52 = ~N16;

endmodule