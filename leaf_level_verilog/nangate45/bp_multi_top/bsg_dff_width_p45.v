module bsg_dff_width_p45
(
  clk_i,
  data_i,
  data_o
);

  input [44:0] data_i;
  output [44:0] data_o;
  input clk_i;
  reg [44:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[44:0] } <= { data_i[44:0] };
    end
  end


endmodule