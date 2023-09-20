module Queue_10
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
  wire [39:0] io_deq_bits_addr;
  wire [9:0] io_deq_bits_tag;
  wire [4:0] io_deq_bits_cmd;
  wire [2:0] io_deq_bits_typ;
  wire [63:0] io_deq_bits_data;
  wire io_enq_ready,io_deq_valid,io_deq_bits_kill,io_deq_bits_phys,io_count,N0,N1,N2,
  T4,do_enq,T3,T2,do_flow,empty,do_deq,T6,T5,N3,T31,N4,N5,N6,N7,N8,N9;
  reg [1:1] T0;
  reg [123:64] T9;
  reg [63:0] T8;
  assign io_count = 1'b0;
  assign T4 = do_enq ^ do_deq;

  always @(posedge clk) begin
    if(N6) begin
      T0[1] <= N7;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[123] <= io_enq_bits_addr[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[122] <= io_enq_bits_addr[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[121] <= io_enq_bits_addr[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[120] <= io_enq_bits_addr[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[119] <= io_enq_bits_addr[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[118] <= io_enq_bits_addr[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[117] <= io_enq_bits_addr[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[116] <= io_enq_bits_addr[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[115] <= io_enq_bits_addr[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[114] <= io_enq_bits_addr[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[113] <= io_enq_bits_addr[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[112] <= io_enq_bits_addr[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[111] <= io_enq_bits_addr[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[110] <= io_enq_bits_addr[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[109] <= io_enq_bits_addr[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[108] <= io_enq_bits_addr[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[107] <= io_enq_bits_addr[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[106] <= io_enq_bits_addr[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[105] <= io_enq_bits_addr[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[104] <= io_enq_bits_addr[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[103] <= io_enq_bits_addr[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[102] <= io_enq_bits_addr[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[101] <= io_enq_bits_addr[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[100] <= io_enq_bits_addr[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[99] <= io_enq_bits_addr[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[98] <= io_enq_bits_addr[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[97] <= io_enq_bits_addr[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[96] <= io_enq_bits_addr[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[95] <= io_enq_bits_addr[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[94] <= io_enq_bits_addr[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[93] <= io_enq_bits_addr[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[92] <= io_enq_bits_addr[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[91] <= io_enq_bits_addr[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[90] <= io_enq_bits_addr[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[89] <= io_enq_bits_addr[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[88] <= io_enq_bits_addr[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[87] <= io_enq_bits_addr[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[86] <= io_enq_bits_addr[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[85] <= io_enq_bits_addr[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[84] <= io_enq_bits_addr[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[83] <= io_enq_bits_tag[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[82] <= io_enq_bits_tag[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[81] <= io_enq_bits_tag[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[80] <= io_enq_bits_tag[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[79] <= io_enq_bits_tag[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[78] <= io_enq_bits_tag[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[77] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[76] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[75] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[74] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[73] <= io_enq_bits_cmd[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[72] <= io_enq_bits_cmd[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[71] <= io_enq_bits_cmd[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[70] <= io_enq_bits_cmd[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[69] <= io_enq_bits_cmd[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[68] <= io_enq_bits_typ[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[67] <= io_enq_bits_typ[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[66] <= io_enq_bits_typ[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[65] <= io_enq_bits_kill;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T9[64] <= io_enq_bits_phys;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[63] <= io_enq_bits_data[63];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[62] <= io_enq_bits_data[62];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[61] <= io_enq_bits_data[61];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[60] <= io_enq_bits_data[60];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[59] <= io_enq_bits_data[59];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[58] <= io_enq_bits_data[58];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[57] <= io_enq_bits_data[57];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[56] <= io_enq_bits_data[56];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[55] <= io_enq_bits_data[55];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[54] <= io_enq_bits_data[54];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[53] <= io_enq_bits_data[53];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[52] <= io_enq_bits_data[52];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[51] <= io_enq_bits_data[51];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[50] <= io_enq_bits_data[50];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[49] <= io_enq_bits_data[49];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[48] <= io_enq_bits_data[48];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[47] <= io_enq_bits_data[47];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[46] <= io_enq_bits_data[46];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[45] <= io_enq_bits_data[45];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[44] <= io_enq_bits_data[44];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[43] <= io_enq_bits_data[43];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[42] <= io_enq_bits_data[42];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[41] <= io_enq_bits_data[41];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[40] <= io_enq_bits_data[40];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[39] <= io_enq_bits_data[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[38] <= io_enq_bits_data[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[37] <= io_enq_bits_data[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[36] <= io_enq_bits_data[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[35] <= io_enq_bits_data[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[34] <= io_enq_bits_data[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[33] <= io_enq_bits_data[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[32] <= io_enq_bits_data[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[31] <= io_enq_bits_data[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[30] <= io_enq_bits_data[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[29] <= io_enq_bits_data[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[28] <= io_enq_bits_data[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[27] <= io_enq_bits_data[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[26] <= io_enq_bits_data[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[25] <= io_enq_bits_data[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[24] <= io_enq_bits_data[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[23] <= io_enq_bits_data[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[22] <= io_enq_bits_data[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[21] <= io_enq_bits_data[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[20] <= io_enq_bits_data[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[19] <= io_enq_bits_data[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[18] <= io_enq_bits_data[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[17] <= io_enq_bits_data[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[16] <= io_enq_bits_data[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[15] <= io_enq_bits_data[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[14] <= io_enq_bits_data[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[13] <= io_enq_bits_data[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[12] <= io_enq_bits_data[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[11] <= io_enq_bits_data[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[10] <= io_enq_bits_data[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[9] <= io_enq_bits_data[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[8] <= io_enq_bits_data[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[7] <= io_enq_bits_data[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[6] <= io_enq_bits_data[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[5] <= io_enq_bits_data[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[4] <= io_enq_bits_data[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[3] <= io_enq_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[2] <= io_enq_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[1] <= io_enq_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      T8[0] <= io_enq_bits_data[0];
    end 
  end

  assign io_deq_bits_data = (N0)? io_enq_bits_data : 
                            (N1)? T8 : 1'b0;
  assign N0 = empty;
  assign N1 = N3;
  assign io_deq_bits_phys = (N0)? io_enq_bits_phys : 
                            (N1)? T9[64] : 1'b0;
  assign io_deq_bits_kill = (N0)? io_enq_bits_kill : 
                            (N1)? T9[65] : 1'b0;
  assign io_deq_bits_typ = (N0)? io_enq_bits_typ : 
                           (N1)? T9[68:66] : 1'b0;
  assign io_deq_bits_cmd = (N0)? io_enq_bits_cmd : 
                           (N1)? T9[73:69] : 1'b0;
  assign io_deq_bits_tag = (N0)? io_enq_bits_tag : 
                           (N1)? T9[83:74] : 1'b0;
  assign io_deq_bits_addr = (N0)? io_enq_bits_addr : 
                            (N1)? T9[123:84] : 1'b0;
  assign N6 = (N2)? 1'b1 : 
              (N9)? 1'b1 : 
              (N5)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign N7 = (N2)? 1'b0 : 
              (N9)? do_enq : 1'b0;
  assign do_enq = T3 & T2;
  assign T2 = ~do_flow;
  assign do_flow = empty & io_deq_ready;
  assign empty = ~T0[1];
  assign T3 = io_enq_ready & io_enq_valid;
  assign do_deq = T6 & T5;
  assign T5 = ~do_flow;
  assign T6 = io_deq_ready & io_deq_valid;
  assign N3 = ~empty;
  assign io_deq_valid = T31 | io_enq_valid;
  assign T31 = ~empty;
  assign io_enq_ready = ~T0[1];
  assign N4 = T4 | reset;
  assign N5 = ~N4;
  assign N8 = ~reset;
  assign N9 = T4 & N8;

endmodule