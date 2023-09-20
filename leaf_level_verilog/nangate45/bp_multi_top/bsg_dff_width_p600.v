module bsg_dff_width_p600
(
  clk_i,
  data_i,
  data_o
);

  input [599:0] data_i;
  output [599:0] data_o;
  input clk_i;
  reg [599:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[599:0] } <= { data_i[599:0] };
    end
  end


endmodule