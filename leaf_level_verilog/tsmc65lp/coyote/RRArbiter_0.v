module RRArbiter_0
(
  clk,
  reset,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_rd,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_rd,
  io_out_bits_data,
  io_chosen
);

  input [4:0] io_in_0_bits_rd;
  input [63:0] io_in_0_bits_data;
  output [4:0] io_out_bits_rd;
  output [63:0] io_out_bits_data;
  input clk;
  input reset;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_chosen;
  wire [4:0] io_out_bits_rd;
  wire [63:0] io_out_bits_data;
  wire io_in_0_ready,io_out_valid,io_chosen,N0,N1,N2,io_in_0_valid,T1,T7,T2,T3,T4,T6,
  N3,N4,N5,N6,N7;
  reg last_grant;
  assign io_chosen = 1'b0;
  assign io_out_valid = io_in_0_valid;
  assign io_out_bits_rd[4] = io_in_0_bits_rd[4];
  assign io_out_bits_rd[3] = io_in_0_bits_rd[3];
  assign io_out_bits_rd[2] = io_in_0_bits_rd[2];
  assign io_out_bits_rd[1] = io_in_0_bits_rd[1];
  assign io_out_bits_rd[0] = io_in_0_bits_rd[0];
  assign io_out_bits_data[63] = io_in_0_bits_data[63];
  assign io_out_bits_data[62] = io_in_0_bits_data[62];
  assign io_out_bits_data[61] = io_in_0_bits_data[61];
  assign io_out_bits_data[60] = io_in_0_bits_data[60];
  assign io_out_bits_data[59] = io_in_0_bits_data[59];
  assign io_out_bits_data[58] = io_in_0_bits_data[58];
  assign io_out_bits_data[57] = io_in_0_bits_data[57];
  assign io_out_bits_data[56] = io_in_0_bits_data[56];
  assign io_out_bits_data[55] = io_in_0_bits_data[55];
  assign io_out_bits_data[54] = io_in_0_bits_data[54];
  assign io_out_bits_data[53] = io_in_0_bits_data[53];
  assign io_out_bits_data[52] = io_in_0_bits_data[52];
  assign io_out_bits_data[51] = io_in_0_bits_data[51];
  assign io_out_bits_data[50] = io_in_0_bits_data[50];
  assign io_out_bits_data[49] = io_in_0_bits_data[49];
  assign io_out_bits_data[48] = io_in_0_bits_data[48];
  assign io_out_bits_data[47] = io_in_0_bits_data[47];
  assign io_out_bits_data[46] = io_in_0_bits_data[46];
  assign io_out_bits_data[45] = io_in_0_bits_data[45];
  assign io_out_bits_data[44] = io_in_0_bits_data[44];
  assign io_out_bits_data[43] = io_in_0_bits_data[43];
  assign io_out_bits_data[42] = io_in_0_bits_data[42];
  assign io_out_bits_data[41] = io_in_0_bits_data[41];
  assign io_out_bits_data[40] = io_in_0_bits_data[40];
  assign io_out_bits_data[39] = io_in_0_bits_data[39];
  assign io_out_bits_data[38] = io_in_0_bits_data[38];
  assign io_out_bits_data[37] = io_in_0_bits_data[37];
  assign io_out_bits_data[36] = io_in_0_bits_data[36];
  assign io_out_bits_data[35] = io_in_0_bits_data[35];
  assign io_out_bits_data[34] = io_in_0_bits_data[34];
  assign io_out_bits_data[33] = io_in_0_bits_data[33];
  assign io_out_bits_data[32] = io_in_0_bits_data[32];
  assign io_out_bits_data[31] = io_in_0_bits_data[31];
  assign io_out_bits_data[30] = io_in_0_bits_data[30];
  assign io_out_bits_data[29] = io_in_0_bits_data[29];
  assign io_out_bits_data[28] = io_in_0_bits_data[28];
  assign io_out_bits_data[27] = io_in_0_bits_data[27];
  assign io_out_bits_data[26] = io_in_0_bits_data[26];
  assign io_out_bits_data[25] = io_in_0_bits_data[25];
  assign io_out_bits_data[24] = io_in_0_bits_data[24];
  assign io_out_bits_data[23] = io_in_0_bits_data[23];
  assign io_out_bits_data[22] = io_in_0_bits_data[22];
  assign io_out_bits_data[21] = io_in_0_bits_data[21];
  assign io_out_bits_data[20] = io_in_0_bits_data[20];
  assign io_out_bits_data[19] = io_in_0_bits_data[19];
  assign io_out_bits_data[18] = io_in_0_bits_data[18];
  assign io_out_bits_data[17] = io_in_0_bits_data[17];
  assign io_out_bits_data[16] = io_in_0_bits_data[16];
  assign io_out_bits_data[15] = io_in_0_bits_data[15];
  assign io_out_bits_data[14] = io_in_0_bits_data[14];
  assign io_out_bits_data[13] = io_in_0_bits_data[13];
  assign io_out_bits_data[12] = io_in_0_bits_data[12];
  assign io_out_bits_data[11] = io_in_0_bits_data[11];
  assign io_out_bits_data[10] = io_in_0_bits_data[10];
  assign io_out_bits_data[9] = io_in_0_bits_data[9];
  assign io_out_bits_data[8] = io_in_0_bits_data[8];
  assign io_out_bits_data[7] = io_in_0_bits_data[7];
  assign io_out_bits_data[6] = io_in_0_bits_data[6];
  assign io_out_bits_data[5] = io_in_0_bits_data[5];
  assign io_out_bits_data[4] = io_in_0_bits_data[4];
  assign io_out_bits_data[3] = io_in_0_bits_data[3];
  assign io_out_bits_data[2] = io_in_0_bits_data[2];
  assign io_out_bits_data[1] = io_in_0_bits_data[1];
  assign io_out_bits_data[0] = io_in_0_bits_data[0];
  assign T4 = N0 & 1'b0;
  assign N0 = ~last_grant;
  assign T7 = N1 & 1'b0;
  assign N1 = ~last_grant;

  always @(posedge clk) begin
    if(N5) begin
      last_grant <= 1'b0;
    end 
  end

  assign N5 = (N2)? 1'b1 : 
              (N7)? 1'b1 : 
              (N4)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign io_in_0_ready = T1 & io_out_ready;
  assign T1 = T7 | T2;
  assign T2 = ~T3;
  assign T3 = io_in_0_valid & T4;
  assign T6 = io_out_ready & io_in_0_valid;
  assign N3 = T6 | reset;
  assign N4 = ~N3;
  assign N6 = ~reset;
  assign N7 = T6 & N6;

endmodule