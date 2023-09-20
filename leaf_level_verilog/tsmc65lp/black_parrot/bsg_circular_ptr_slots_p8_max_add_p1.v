module bsg_circular_ptr_slots_p8_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o
);

  input [0:0] add_i;
  output [2:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8;
  wire [2:0] genblk1_genblk1_ptr_r_p1;
  reg [2:0] o;
  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0 } :
                          (N1)? genblk1_genblk1_ptr_r_p1 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N6 = ~add_i[0];
  assign N7 = N6 & N2;
  assign N8 = ~N7;

  always @(posedge clk) begin
    if(N8) begin
      { o[2:0] } <= { N5, N4, N3 };
    end
  end


endmodule