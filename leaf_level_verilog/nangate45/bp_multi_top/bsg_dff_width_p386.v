module bsg_dff_width_p386
(
  clk_i,
  data_i,
  data_o
);

  input [385:0] data_i;
  output [385:0] data_o;
  input clk_i;
  reg [385:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[385:0] } <= { data_i[385:0] };
    end
  end


endmodule