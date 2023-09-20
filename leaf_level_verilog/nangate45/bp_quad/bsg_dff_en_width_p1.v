module bsg_dff_en_width_p1
(
  clk_i,
  data_i,
  en_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input en_i;
  wire [0:0] data_o;
  reg data_o_0_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(en_i) begin
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


endmodule