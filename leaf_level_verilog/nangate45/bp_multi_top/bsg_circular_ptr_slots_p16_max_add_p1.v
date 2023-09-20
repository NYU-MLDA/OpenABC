module bsg_circular_ptr_slots_p16_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o
);

  input [0:0] add_i;
  output [3:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  wire [3:0] genblk1_genblk1_ptr_r_p1;
  reg [3:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } :
                              (N1)? genblk1_genblk1_ptr_r_p1 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N7 = ~add_i[0];
  assign N8 = N7 & N2;
  assign N9 = ~N8;

  always @(posedge clk) begin
    if(N9) begin
      { o[3:0] } <= { N6, N5, N4, N3 };
    end
  end


endmodule