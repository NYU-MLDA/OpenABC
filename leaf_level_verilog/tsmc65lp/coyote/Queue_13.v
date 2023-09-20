module Queue_13
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_header_src,
  io_enq_bits_header_dst,
  io_enq_bits_payload_addr_block,
  io_enq_bits_payload_p_type,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_header_src,
  io_deq_bits_header_dst,
  io_deq_bits_payload_addr_block,
  io_deq_bits_payload_p_type,
  io_count
);

  input [2:0] io_enq_bits_header_src;
  input [2:0] io_enq_bits_header_dst;
  input [25:0] io_enq_bits_payload_addr_block;
  input [1:0] io_enq_bits_payload_p_type;
  output [2:0] io_deq_bits_header_src;
  output [2:0] io_deq_bits_header_dst;
  output [25:0] io_deq_bits_payload_addr_block;
  output [1:0] io_deq_bits_payload_p_type;
  output [1:0] io_count;
  input clk;
  input reset;
  input io_enq_valid;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  wire [2:0] io_deq_bits_header_src,io_deq_bits_header_dst;
  wire [25:0] io_deq_bits_payload_addr_block;
  wire [1:0] io_deq_bits_payload_p_type,io_count;
  wire io_enq_ready,io_deq_valid,N0,N1,N2,N3,N4,do_deq,T3,do_enq,T6,ptr_match,T9,N5,
  empty,T21,full,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N21,N22,N23,N24,
  N25,N26;
  reg R1,N20,maybe_full;
  reg [67:0] ram;
  assign N0 = N20 ^ R1;
  assign ptr_match = ~N0;
  assign T9 = do_enq ^ do_deq;
  assign io_deq_bits_header_src[2] = (N5)? ram[33] : 
                                     (N1)? ram[67] : 1'b0;
  assign N1 = R1;
  assign io_deq_bits_header_src[1] = (N5)? ram[32] : 
                                     (N1)? ram[66] : 1'b0;
  assign io_deq_bits_header_src[0] = (N5)? ram[31] : 
                                     (N1)? ram[65] : 1'b0;
  assign io_deq_bits_header_dst[2] = (N5)? ram[30] : 
                                     (N1)? ram[64] : 1'b0;
  assign io_deq_bits_header_dst[1] = (N5)? ram[29] : 
                                     (N1)? ram[63] : 1'b0;
  assign io_deq_bits_header_dst[0] = (N5)? ram[28] : 
                                     (N1)? ram[62] : 1'b0;
  assign io_deq_bits_payload_addr_block[25] = (N5)? ram[27] : 
                                              (N1)? ram[61] : 1'b0;
  assign io_deq_bits_payload_addr_block[24] = (N5)? ram[26] : 
                                              (N1)? ram[60] : 1'b0;
  assign io_deq_bits_payload_addr_block[23] = (N5)? ram[25] : 
                                              (N1)? ram[59] : 1'b0;
  assign io_deq_bits_payload_addr_block[22] = (N5)? ram[24] : 
                                              (N1)? ram[58] : 1'b0;
  assign io_deq_bits_payload_addr_block[21] = (N5)? ram[23] : 
                                              (N1)? ram[57] : 1'b0;
  assign io_deq_bits_payload_addr_block[20] = (N5)? ram[22] : 
                                              (N1)? ram[56] : 1'b0;
  assign io_deq_bits_payload_addr_block[19] = (N5)? ram[21] : 
                                              (N1)? ram[55] : 1'b0;
  assign io_deq_bits_payload_addr_block[18] = (N5)? ram[20] : 
                                              (N1)? ram[54] : 1'b0;
  assign io_deq_bits_payload_addr_block[17] = (N5)? ram[19] : 
                                              (N1)? ram[53] : 1'b0;
  assign io_deq_bits_payload_addr_block[16] = (N5)? ram[18] : 
                                              (N1)? ram[52] : 1'b0;
  assign io_deq_bits_payload_addr_block[15] = (N5)? ram[17] : 
                                              (N1)? ram[51] : 1'b0;
  assign io_deq_bits_payload_addr_block[14] = (N5)? ram[16] : 
                                              (N1)? ram[50] : 1'b0;
  assign io_deq_bits_payload_addr_block[13] = (N5)? ram[15] : 
                                              (N1)? ram[49] : 1'b0;
  assign io_deq_bits_payload_addr_block[12] = (N5)? ram[14] : 
                                              (N1)? ram[48] : 1'b0;
  assign io_deq_bits_payload_addr_block[11] = (N5)? ram[13] : 
                                              (N1)? ram[47] : 1'b0;
  assign io_deq_bits_payload_addr_block[10] = (N5)? ram[12] : 
                                              (N1)? ram[46] : 1'b0;
  assign io_deq_bits_payload_addr_block[9] = (N5)? ram[11] : 
                                             (N1)? ram[45] : 1'b0;
  assign io_deq_bits_payload_addr_block[8] = (N5)? ram[10] : 
                                             (N1)? ram[44] : 1'b0;
  assign io_deq_bits_payload_addr_block[7] = (N5)? ram[9] : 
                                             (N1)? ram[43] : 1'b0;
  assign io_deq_bits_payload_addr_block[6] = (N5)? ram[8] : 
                                             (N1)? ram[42] : 1'b0;
  assign io_deq_bits_payload_addr_block[5] = (N5)? ram[7] : 
                                             (N1)? ram[41] : 1'b0;
  assign io_deq_bits_payload_addr_block[4] = (N5)? ram[6] : 
                                             (N1)? ram[40] : 1'b0;
  assign io_deq_bits_payload_addr_block[3] = (N5)? ram[5] : 
                                             (N1)? ram[39] : 1'b0;
  assign io_deq_bits_payload_addr_block[2] = (N5)? ram[4] : 
                                             (N1)? ram[38] : 1'b0;
  assign io_deq_bits_payload_addr_block[1] = (N5)? ram[3] : 
                                             (N1)? ram[37] : 1'b0;
  assign io_deq_bits_payload_addr_block[0] = (N5)? ram[2] : 
                                             (N1)? ram[36] : 1'b0;
  assign io_deq_bits_payload_p_type[1] = (N5)? ram[1] : 
                                         (N1)? ram[35] : 1'b0;
  assign io_deq_bits_payload_p_type[0] = (N5)? ram[0] : 
                                         (N1)? ram[34] : 1'b0;

  always @(posedge clk) begin
    if(N8) begin
      R1 <= N9;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      N20 <= N13;
    end 
  end


  always @(posedge clk) begin
    if(N16) begin
      maybe_full <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[67] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[66] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[65] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[64] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[63] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[62] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[61] <= io_enq_bits_payload_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[60] <= io_enq_bits_payload_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[59] <= io_enq_bits_payload_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[58] <= io_enq_bits_payload_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[57] <= io_enq_bits_payload_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[56] <= io_enq_bits_payload_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[55] <= io_enq_bits_payload_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[54] <= io_enq_bits_payload_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[53] <= io_enq_bits_payload_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[52] <= io_enq_bits_payload_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[51] <= io_enq_bits_payload_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[50] <= io_enq_bits_payload_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[49] <= io_enq_bits_payload_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[48] <= io_enq_bits_payload_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[47] <= io_enq_bits_payload_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[46] <= io_enq_bits_payload_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[45] <= io_enq_bits_payload_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[44] <= io_enq_bits_payload_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[43] <= io_enq_bits_payload_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[42] <= io_enq_bits_payload_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[41] <= io_enq_bits_payload_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[40] <= io_enq_bits_payload_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[39] <= io_enq_bits_payload_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[38] <= io_enq_bits_payload_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[37] <= io_enq_bits_payload_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[36] <= io_enq_bits_payload_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[35] <= io_enq_bits_payload_p_type[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[34] <= io_enq_bits_payload_p_type[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[33] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[32] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[31] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[30] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[29] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[28] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[27] <= io_enq_bits_payload_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[26] <= io_enq_bits_payload_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[25] <= io_enq_bits_payload_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[24] <= io_enq_bits_payload_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[23] <= io_enq_bits_payload_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[22] <= io_enq_bits_payload_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[21] <= io_enq_bits_payload_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[20] <= io_enq_bits_payload_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[19] <= io_enq_bits_payload_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[18] <= io_enq_bits_payload_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[17] <= io_enq_bits_payload_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[16] <= io_enq_bits_payload_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[15] <= io_enq_bits_payload_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[14] <= io_enq_bits_payload_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[13] <= io_enq_bits_payload_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[12] <= io_enq_bits_payload_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[11] <= io_enq_bits_payload_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[10] <= io_enq_bits_payload_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[9] <= io_enq_bits_payload_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[8] <= io_enq_bits_payload_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[7] <= io_enq_bits_payload_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[6] <= io_enq_bits_payload_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[5] <= io_enq_bits_payload_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[4] <= io_enq_bits_payload_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[3] <= io_enq_bits_payload_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[2] <= io_enq_bits_payload_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[1] <= io_enq_bits_payload_p_type[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[0] <= io_enq_bits_payload_p_type[0];
    end 
  end

  assign io_count[0] = N20 ^ R1;
  assign T3 = R1 ^ 1'b1;
  assign T6 = N20 ^ 1'b1;
  assign N19 = ~N20;
  assign N8 = (N2)? 1'b1 : 
              (N24)? 1'b1 : 
              (N7)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign N9 = (N2)? 1'b0 : 
              (N24)? T3 : 1'b0;
  assign N12 = (N2)? 1'b1 : 
               (N25)? 1'b1 : 
               (N11)? 1'b0 : 1'b0;
  assign N13 = (N2)? 1'b0 : 
               (N25)? T6 : 1'b0;
  assign N16 = (N2)? 1'b1 : 
               (N26)? 1'b1 : 
               (N15)? 1'b0 : 1'b0;
  assign N17 = (N2)? 1'b0 : 
               (N26)? do_enq : 1'b0;
  assign { N22, N21 } = (N3)? { N20, N19 } : 
                        (N4)? { 1'b0, 1'b0 } : 1'b0;
  assign N3 = do_enq;
  assign N4 = N18;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign io_count[1] = maybe_full & ptr_match;
  assign N5 = ~R1;
  assign io_deq_valid = ~empty;
  assign empty = ptr_match & T21;
  assign T21 = ~maybe_full;
  assign io_enq_ready = ~full;
  assign full = ptr_match & maybe_full;
  assign N6 = do_deq | reset;
  assign N7 = ~N6;
  assign N10 = do_enq | reset;
  assign N11 = ~N10;
  assign N14 = T9 | reset;
  assign N15 = ~N14;
  assign N18 = ~do_enq;
  assign N23 = ~reset;
  assign N24 = do_deq & N23;
  assign N25 = do_enq & N23;
  assign N26 = T9 & N23;

endmodule