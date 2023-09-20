module bsg_dff_width_p35
(
  clk_i,
  data_i,
  data_o
);

  input [34:0] data_i;
  output [34:0] data_o;
  input clk_i;
  reg [34:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[34:0] } <= { data_i[34:0] };
    end 
  end


endmodule