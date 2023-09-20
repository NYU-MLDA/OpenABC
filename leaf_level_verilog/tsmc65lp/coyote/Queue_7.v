module Queue_7
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_addr,
  io_enq_bits_len,
  io_enq_bits_size,
  io_enq_bits_burst,
  io_enq_bits_lock,
  io_enq_bits_cache,
  io_enq_bits_prot,
  io_enq_bits_qos,
  io_enq_bits_region,
  io_enq_bits_id,
  io_enq_bits_user,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_addr,
  io_deq_bits_len,
  io_deq_bits_size,
  io_deq_bits_burst,
  io_deq_bits_lock,
  io_deq_bits_cache,
  io_deq_bits_prot,
  io_deq_bits_qos,
  io_deq_bits_region,
  io_deq_bits_id,
  io_deq_bits_user,
  io_count
);

  input [31:0] io_enq_bits_addr;
  input [7:0] io_enq_bits_len;
  input [2:0] io_enq_bits_size;
  input [1:0] io_enq_bits_burst;
  input [3:0] io_enq_bits_cache;
  input [2:0] io_enq_bits_prot;
  input [3:0] io_enq_bits_qos;
  input [3:0] io_enq_bits_region;
  input [5:0] io_enq_bits_id;
  output [31:0] io_deq_bits_addr;
  output [7:0] io_deq_bits_len;
  output [2:0] io_deq_bits_size;
  output [1:0] io_deq_bits_burst;
  output [3:0] io_deq_bits_cache;
  output [2:0] io_deq_bits_prot;
  output [3:0] io_deq_bits_qos;
  output [3:0] io_deq_bits_region;
  output [5:0] io_deq_bits_id;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_lock;
  input io_enq_bits_user;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_deq_bits_lock;
  output io_deq_bits_user;
  output io_count;
  wire io_enq_ready,io_deq_valid,io_count,N0,T2,do_enq,do_deq,empty,N1,N2,N3,N4,N5,N6;
  reg [1:1] T0;
  reg [31:0] io_deq_bits_addr;
  reg [7:0] io_deq_bits_len;
  reg [2:0] io_deq_bits_size,io_deq_bits_prot;
  reg [1:0] io_deq_bits_burst;
  reg io_deq_bits_lock,io_deq_bits_user;
  reg [3:0] io_deq_bits_cache,io_deq_bits_qos,io_deq_bits_region;
  reg [5:0] io_deq_bits_id;
  assign io_count = 1'b0;
  assign T2 = do_enq ^ do_deq;

  always @(posedge clk) begin
    if(N3) begin
      T0[1] <= N4;
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
      io_deq_bits_len[7] <= io_enq_bits_len[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[6] <= io_enq_bits_len[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[5] <= io_enq_bits_len[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[4] <= io_enq_bits_len[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[3] <= io_enq_bits_len[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[2] <= io_enq_bits_len[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[1] <= io_enq_bits_len[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_len[0] <= io_enq_bits_len[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_size[2] <= io_enq_bits_size[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_size[1] <= io_enq_bits_size[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_size[0] <= io_enq_bits_size[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_burst[1] <= io_enq_bits_burst[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_burst[0] <= io_enq_bits_burst[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_lock <= io_enq_bits_lock;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cache[3] <= io_enq_bits_cache[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cache[2] <= io_enq_bits_cache[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cache[1] <= io_enq_bits_cache[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_cache[0] <= io_enq_bits_cache[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_prot[2] <= io_enq_bits_prot[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_prot[1] <= io_enq_bits_prot[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_prot[0] <= io_enq_bits_prot[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_qos[3] <= io_enq_bits_qos[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_qos[2] <= io_enq_bits_qos[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_qos[1] <= io_enq_bits_qos[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_qos[0] <= io_enq_bits_qos[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_region[3] <= io_enq_bits_region[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_region[2] <= io_enq_bits_region[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_region[1] <= io_enq_bits_region[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_region[0] <= io_enq_bits_region[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[5] <= io_enq_bits_id[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[4] <= io_enq_bits_id[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[3] <= io_enq_bits_id[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[2] <= io_enq_bits_id[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[1] <= io_enq_bits_id[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_id[0] <= io_enq_bits_id[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_user <= io_enq_bits_user;
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