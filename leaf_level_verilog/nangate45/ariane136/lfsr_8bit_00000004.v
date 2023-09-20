module lfsr_8bit_00000004
(
  clk_i,
  rst_ni,
  en_i,
  refill_way_oh,
  refill_way_bin
);

  output [3:0] refill_way_oh;
  output [1:0] refill_way_bin;
  input clk_i;
  input rst_ni;
  input en_i;
  wire [3:0] refill_way_oh;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  reg [7:2] shift_q;
  reg [1:0] refill_way_bin;

  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[7] <= 1'b0;
    end else if(en_i) begin
      shift_q[7] <= shift_q[6];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[6] <= 1'b0;
    end else if(en_i) begin
      shift_q[6] <= shift_q[5];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[5] <= 1'b0;
    end else if(en_i) begin
      shift_q[5] <= shift_q[4];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[4] <= 1'b0;
    end else if(en_i) begin
      shift_q[4] <= shift_q[3];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[3] <= 1'b0;
    end else if(en_i) begin
      shift_q[3] <= shift_q[2];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      shift_q[2] <= 1'b0;
    end else if(en_i) begin
      shift_q[2] <= refill_way_bin[1];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      refill_way_bin[1] <= 1'b0;
    end else if(en_i) begin
      refill_way_bin[1] <= refill_way_bin[0];
    end 
  end


  always @(posedge clk_i or posedge N5) begin
    if(N5) begin
      refill_way_bin[0] <= 1'b0;
    end else if(en_i) begin
      refill_way_bin[0] <= N4;
    end 
  end

  assign refill_way_oh[3] = refill_way_bin[0] & refill_way_bin[1];
  assign refill_way_oh[2] = N0 & refill_way_bin[1];
  assign N0 = ~refill_way_bin[0];
  assign refill_way_oh[1] = refill_way_bin[0] & N1;
  assign N1 = ~refill_way_bin[1];
  assign refill_way_oh[0] = N2 & N3;
  assign N2 = ~refill_way_bin[0];
  assign N3 = ~refill_way_bin[1];
  assign N4 = ~N8;
  assign N8 = N7 ^ refill_way_bin[1];
  assign N7 = N6 ^ shift_q[2];
  assign N6 = shift_q[7] ^ shift_q[3];
  assign N5 = ~rst_ni;

endmodule