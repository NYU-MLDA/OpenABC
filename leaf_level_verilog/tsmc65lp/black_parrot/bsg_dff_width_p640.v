module bsg_dff_width_p640
(
  clk_i,
  data_i,
  data_o
);

  input [639:0] data_i;
  output [639:0] data_o;
  input clk_i;
  reg [639:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[639:0] } <= { data_i[639:0] };
    end
  end


endmodule