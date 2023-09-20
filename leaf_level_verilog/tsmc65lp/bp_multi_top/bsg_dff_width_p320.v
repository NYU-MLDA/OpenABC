module bsg_dff_width_p320
(
  clk_i,
  data_i,
  data_o
);

  input [319:0] data_i;
  output [319:0] data_o;
  input clk_i;
  reg [319:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[319:0] } <= { data_i[319:0] };
    end
  end


endmodule