module prim_clock_gating (
  input  clk_i,
  input  en_i,
  input  test_en_i,
  output clk_o
);

  reg en_latch;

  always @* begin
    if (!clk_i) begin
      en_latch = en_i | test_en_i;
    end
  end
  assign clk_o = en_latch & clk_i;

endmodule