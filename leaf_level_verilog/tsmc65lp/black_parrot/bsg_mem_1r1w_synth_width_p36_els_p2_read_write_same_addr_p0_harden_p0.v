module bsg_mem_1r1w_synth_width_p36_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [35:0] w_data_i;
  input [0:0] r_addr_i;
  output [35:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [35:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [71:0] mem;
  assign r_data_o[35] = (N3)? mem[35] :
                        (N0)? mem[71] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[34] = (N3)? mem[34] :
                        (N0)? mem[70] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] :
                        (N0)? mem[69] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] :
                        (N0)? mem[68] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] :
                        (N0)? mem[67] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] :
                        (N0)? mem[66] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] :
                        (N0)? mem[65] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] :
                        (N0)? mem[64] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] :
                        (N0)? mem[63] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] :
                        (N0)? mem[62] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] :
                        (N0)? mem[61] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] :
                        (N0)? mem[60] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] :
                        (N0)? mem[59] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] :
                        (N0)? mem[58] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] :
                        (N0)? mem[57] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] :
                        (N0)? mem[56] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] :
                        (N0)? mem[55] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] :
                        (N0)? mem[54] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] :
                        (N0)? mem[53] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] :
                        (N0)? mem[52] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] :
                        (N0)? mem[51] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] :
                        (N0)? mem[50] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] :
                        (N0)? mem[49] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] :
                        (N0)? mem[48] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] :
                        (N0)? mem[47] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] :
                        (N0)? mem[46] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] :
                       (N0)? mem[45] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] :
                       (N0)? mem[44] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] :
                       (N0)? mem[43] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] :
                       (N0)? mem[42] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] :
                       (N0)? mem[41] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] :
                       (N0)? mem[40] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] :
                       (N0)? mem[39] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] :
                       (N0)? mem[38] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] :
                       (N0)? mem[37] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] :
                       (N0)? mem[36] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } :
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[71:36] } <= { w_data_i[35:0] };
    end
    if(N7) begin
      { mem[35:0] } <= { w_data_i[35:0] };
    end
  end


endmodule