module bsg_circular_ptr_slots_p2_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o
);

  input [0:0] add_i;
  output [0:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6;
  wire [0:0] genblk1_genblk1_ptr_r_p1;
  reg [0:0] o;
  assign genblk1_genblk1_ptr_r_p1[0] = o[0] ^ 1'b1;
  assign N3 = (N0)? 1'b0 :
              (N1)? genblk1_genblk1_ptr_r_p1[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N4 = ~add_i[0];
  assign N5 = N4 & N2;
  assign N6 = ~N5;

  always @(posedge clk) begin
    if(N6) begin
      { o[0:0] } <= { N3 };
    end
  end


endmodule