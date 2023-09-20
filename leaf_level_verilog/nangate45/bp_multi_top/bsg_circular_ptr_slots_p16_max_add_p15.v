module bsg_circular_ptr_slots_p16_max_add_p15
(
  clk,
  reset_i,
  add_i,
  o
);

  input [3:0] add_i;
  output [3:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6;
  wire [3:0] ptr_n;
  reg [3:0] o;
  assign ptr_n = o + add_i;
  assign { N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } :
                              (N1)? ptr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      { o[3:0] } <= { N6, N5, N4, N3 };
    end
  end


endmodule