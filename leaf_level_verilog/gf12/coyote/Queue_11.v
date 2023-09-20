module Queue_11
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_addr,
  io_enq_bits_tag,
  io_enq_bits_cmd,
  io_enq_bits_typ,
  io_enq_bits_kill,
  io_enq_bits_phys,
  io_enq_bits_data,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_addr,
  io_deq_bits_tag,
  io_deq_bits_cmd,
  io_deq_bits_typ,
  io_deq_bits_kill,
  io_deq_bits_phys,
  io_deq_bits_data,
  io_count
);

  input [39:0] io_enq_bits_addr;
  input [9:0] io_enq_bits_tag;
  input [4:0] io_enq_bits_cmd;
  input [2:0] io_enq_bits_typ;
  input [63:0] io_enq_bits_data;
  output [39:0] io_deq_bits_addr;
  output [9:0] io_deq_bits_tag;
  output [4:0] io_deq_bits_cmd;
  output [2:0] io_deq_bits_typ;
  output [63:0] io_deq_bits_data;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_kill;
  input io_enq_bits_phys;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_deq_bits_kill;
  output io_deq_bits_phys;
  output io_count;
  wire io_enq_ready,io_deq_valid,io_count,N0,T2,do_enq,do_deq,empty,N1,N2,N3,N4,N5,N6;
  reg [1:1] T0;
  reg [39:0] io_deq_bits_addr;
  reg [9:0] io_deq_bits_tag;
  reg [4:0] io_deq_bits_cmd;
  reg [2:0] io_deq_bits_typ;
  reg io_deq_bits_kill,io_deq_bits_phys;
  reg [63:0] io_deq_bits_data;
  assign io_count = 1'b0;
  assign T2 = do_enq ^ do_deq;

  always @(posedge clk) begin
    if(N3) begin
      T0[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[39] <= io_enq_bits_addr[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[38] <= io_enq_bits_addr[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[37] <= io_enq_bits_addr[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[36] <= io_enq_bits_addr[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[35] <= io_enq_bits_addr[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[34] <= io_enq_bits_addr[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[33] <= io_enq_bits_addr[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[32] <= io_enq_bits_addr[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[31] <= io_enq_bits_addr[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[30] <= io_enq_bits_addr[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[29] <= io_enq_bits_addr[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[28] <= io_enq_bits_addr[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[27] <= io_enq_bits_addr[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[26] <= io_enq_bits_addr[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[25] <= io_enq_bits_addr[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[24] <= io_enq_bits_addr[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[23] <= io_enq_bits_addr[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[22] <= io_enq_bits_addr[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[21] <= io_enq_bits_addr[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[20] <= io_enq_bits_addr[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[19] <= io_enq_bits_addr[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[18] <= io_enq_bits_addr[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[17] <= io_enq_bits_addr[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[16] <= io_enq_bits_addr[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[15] <= io_enq_bits_addr[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[14] <= io_enq_bits_addr[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[13] <= io_enq_bits_addr[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[12] <= io_enq_bits_addr[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[11] <= io_enq_bits_addr[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[10] <= io_enq_bits_addr[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[9] <= io_enq_bits_addr[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[8] <= io_enq_bits_addr[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[7] <= io_enq_bits_addr[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[6] <= io_enq_bits_addr[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[5] <= io_enq_bits_addr[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[4] <= io_enq_bits_addr[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[3] <= io_enq_bits_addr[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[2] <= io_enq_bits_addr[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[1] <= io_enq_bits_addr[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_addr[0] <= io_enq_bits_addr[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[9] <= io_enq_bits_tag[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[8] <= io_enq_bits_tag[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[7] <= io_enq_bits_tag[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[6] <= io_enq_bits_tag[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[5] <= io_enq_bits_tag[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[4] <= io_enq_bits_tag[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_tag[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cmd[4] <= io_enq_bits_cmd[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cmd[3] <= io_enq_bits_cmd[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cmd[2] <= io_enq_bits_cmd[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cmd[1] <= io_enq_bits_cmd[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cmd[0] <= io_enq_bits_cmd[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_typ[2] <= io_enq_bits_typ[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_typ[1] <= io_enq_bits_typ[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_typ[0] <= io_enq_bits_typ[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_kill <= io_enq_bits_kill;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_phys <= io_enq_bits_phys;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[63] <= io_enq_bits_data[63];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[62] <= io_enq_bits_data[62];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[61] <= io_enq_bits_data[61];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[60] <= io_enq_bits_data[60];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[59] <= io_enq_bits_data[59];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[58] <= io_enq_bits_data[58];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[57] <= io_enq_bits_data[57];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[56] <= io_enq_bits_data[56];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[55] <= io_enq_bits_data[55];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[54] <= io_enq_bits_data[54];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[53] <= io_enq_bits_data[53];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[52] <= io_enq_bits_data[52];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[51] <= io_enq_bits_data[51];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[50] <= io_enq_bits_data[50];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[49] <= io_enq_bits_data[49];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[48] <= io_enq_bits_data[48];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[47] <= io_enq_bits_data[47];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[46] <= io_enq_bits_data[46];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[45] <= io_enq_bits_data[45];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[44] <= io_enq_bits_data[44];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[43] <= io_enq_bits_data[43];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[42] <= io_enq_bits_data[42];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[41] <= io_enq_bits_data[41];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[40] <= io_enq_bits_data[40];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[39] <= io_enq_bits_data[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[38] <= io_enq_bits_data[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[37] <= io_enq_bits_data[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[36] <= io_enq_bits_data[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[35] <= io_enq_bits_data[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[34] <= io_enq_bits_data[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[33] <= io_enq_bits_data[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[32] <= io_enq_bits_data[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[31] <= io_enq_bits_data[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[30] <= io_enq_bits_data[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[29] <= io_enq_bits_data[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[28] <= io_enq_bits_data[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[27] <= io_enq_bits_data[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[26] <= io_enq_bits_data[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[25] <= io_enq_bits_data[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[24] <= io_enq_bits_data[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[23] <= io_enq_bits_data[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[22] <= io_enq_bits_data[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[21] <= io_enq_bits_data[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[20] <= io_enq_bits_data[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[19] <= io_enq_bits_data[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[18] <= io_enq_bits_data[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[17] <= io_enq_bits_data[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[16] <= io_enq_bits_data[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[15] <= io_enq_bits_data[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[14] <= io_enq_bits_data[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[13] <= io_enq_bits_data[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[12] <= io_enq_bits_data[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[11] <= io_enq_bits_data[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[10] <= io_enq_bits_data[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[9] <= io_enq_bits_data[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[8] <= io_enq_bits_data[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[7] <= io_enq_bits_data[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[6] <= io_enq_bits_data[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[5] <= io_enq_bits_data[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[4] <= io_enq_bits_data[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[3] <= io_enq_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[2] <= io_enq_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[1] <= io_enq_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[0] <= io_enq_bits_data[0];
    end 
  end

  assign N3 = (N0)? 1'b1 : 
              (N6)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset;
  assign N4 = (N0)? 1'b0 : 
              (N6)? do_enq : 1'b0;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign io_deq_valid = ~empty;
  assign empty = ~T0[1];
  assign io_enq_ready = ~T0[1];
  assign N1 = T2 | reset;
  assign N2 = ~N1;
  assign N5 = ~reset;
  assign N6 = T2 & N5;

endmodule