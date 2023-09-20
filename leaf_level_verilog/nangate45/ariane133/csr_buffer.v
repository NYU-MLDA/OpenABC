module csr_buffer
(
  clk_i,
  rst_ni,
  flush_i,
  fu_data_i,
  csr_ready_o,
  csr_valid_i,
  csr_result_o,
  csr_commit_i,
  csr_addr_o
);

  input [205:0] fu_data_i;
  output [63:0] csr_result_o;
  output [11:0] csr_addr_o;
  input clk_i;
  input rst_ni;
  input flush_i;
  input csr_valid_i;
  input csr_commit_i;
  output csr_ready_o;
  wire [63:0] csr_result_o;
  wire csr_ready_o,N0,N1,csr_reg_n_valid_,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  reg [11:0] csr_addr_o;
  reg csr_reg_q_valid_;
  assign csr_result_o[63] = fu_data_i[194];
  assign csr_result_o[62] = fu_data_i[193];
  assign csr_result_o[61] = fu_data_i[192];
  assign csr_result_o[60] = fu_data_i[191];
  assign csr_result_o[59] = fu_data_i[190];
  assign csr_result_o[58] = fu_data_i[189];
  assign csr_result_o[57] = fu_data_i[188];
  assign csr_result_o[56] = fu_data_i[187];
  assign csr_result_o[55] = fu_data_i[186];
  assign csr_result_o[54] = fu_data_i[185];
  assign csr_result_o[53] = fu_data_i[184];
  assign csr_result_o[52] = fu_data_i[183];
  assign csr_result_o[51] = fu_data_i[182];
  assign csr_result_o[50] = fu_data_i[181];
  assign csr_result_o[49] = fu_data_i[180];
  assign csr_result_o[48] = fu_data_i[179];
  assign csr_result_o[47] = fu_data_i[178];
  assign csr_result_o[46] = fu_data_i[177];
  assign csr_result_o[45] = fu_data_i[176];
  assign csr_result_o[44] = fu_data_i[175];
  assign csr_result_o[43] = fu_data_i[174];
  assign csr_result_o[42] = fu_data_i[173];
  assign csr_result_o[41] = fu_data_i[172];
  assign csr_result_o[40] = fu_data_i[171];
  assign csr_result_o[39] = fu_data_i[170];
  assign csr_result_o[38] = fu_data_i[169];
  assign csr_result_o[37] = fu_data_i[168];
  assign csr_result_o[36] = fu_data_i[167];
  assign csr_result_o[35] = fu_data_i[166];
  assign csr_result_o[34] = fu_data_i[165];
  assign csr_result_o[33] = fu_data_i[164];
  assign csr_result_o[32] = fu_data_i[163];
  assign csr_result_o[31] = fu_data_i[162];
  assign csr_result_o[30] = fu_data_i[161];
  assign csr_result_o[29] = fu_data_i[160];
  assign csr_result_o[28] = fu_data_i[159];
  assign csr_result_o[27] = fu_data_i[158];
  assign csr_result_o[26] = fu_data_i[157];
  assign csr_result_o[25] = fu_data_i[156];
  assign csr_result_o[24] = fu_data_i[155];
  assign csr_result_o[23] = fu_data_i[154];
  assign csr_result_o[22] = fu_data_i[153];
  assign csr_result_o[21] = fu_data_i[152];
  assign csr_result_o[20] = fu_data_i[151];
  assign csr_result_o[19] = fu_data_i[150];
  assign csr_result_o[18] = fu_data_i[149];
  assign csr_result_o[17] = fu_data_i[148];
  assign csr_result_o[16] = fu_data_i[147];
  assign csr_result_o[15] = fu_data_i[146];
  assign csr_result_o[14] = fu_data_i[145];
  assign csr_result_o[13] = fu_data_i[144];
  assign csr_result_o[12] = fu_data_i[143];
  assign csr_result_o[11] = fu_data_i[142];
  assign csr_result_o[10] = fu_data_i[141];
  assign csr_result_o[9] = fu_data_i[140];
  assign csr_result_o[8] = fu_data_i[139];
  assign csr_result_o[7] = fu_data_i[138];
  assign csr_result_o[6] = fu_data_i[137];
  assign csr_result_o[5] = fu_data_i[136];
  assign csr_result_o[4] = fu_data_i[135];
  assign csr_result_o[3] = fu_data_i[134];
  assign csr_result_o[2] = fu_data_i[133];
  assign csr_result_o[1] = fu_data_i[132];
  assign csr_result_o[0] = fu_data_i[131];

  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[11] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[11] <= fu_data_i[78];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[10] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[10] <= fu_data_i[77];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[9] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[9] <= fu_data_i[76];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[8] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[8] <= fu_data_i[75];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[7] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[7] <= fu_data_i[74];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[6] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[6] <= fu_data_i[73];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[5] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[5] <= fu_data_i[72];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[4] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[4] <= fu_data_i[71];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[3] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[3] <= fu_data_i[70];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[2] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[2] <= fu_data_i[69];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[1] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[1] <= fu_data_i[68];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_addr_o[0] <= 1'b0;
    end else if(csr_valid_i) begin
      csr_addr_o[0] <= fu_data_i[67];
    end 
  end


  always @(posedge clk_i or posedge N8) begin
    if(N8) begin
      csr_reg_q_valid_ <= 1'b0;
    end else if(N11) begin
      csr_reg_q_valid_ <= csr_reg_n_valid_;
    end 
  end

  assign csr_ready_o = ~N2;
  assign N6 = ~N4;
  assign csr_reg_n_valid_ = (N0)? 1'b0 : 
                            (N1)? N6 : 1'b0;
  assign N0 = flush_i;
  assign N1 = N7;
  assign N2 = N12 & N13;
  assign N12 = csr_reg_q_valid_ | csr_valid_i;
  assign N13 = ~csr_commit_i;
  assign N3 = ~csr_valid_i;
  assign N4 = csr_commit_i & N3;
  assign N5 = ~N4;
  assign N7 = ~flush_i;
  assign N8 = ~rst_ni;
  assign N9 = N5 & N7;
  assign N10 = N3 & N9;
  assign N11 = ~N10;

endmodule