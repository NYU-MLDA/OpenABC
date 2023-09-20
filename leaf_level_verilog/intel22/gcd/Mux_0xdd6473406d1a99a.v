module Mux_0xdd6473406d1a99a
(
  input  wire [   0:0] clk,
  input  wire [  15:0] in_$000,
  input  wire [  15:0] in_$001,
  output reg  [  15:0] out,
  input  wire [   0:0] reset,
  input  wire [   0:0] sel
);

  // localparam declarations
  localparam nports = 2;


  // array declarations
  wire   [  15:0] in_[0:1];
  assign in_[  0] = in_$000;
  assign in_[  1] = in_$001;

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def comb_logic():
  //       assert s.sel < nports
  //       s.out.v = s.in_[ s.sel ]

  // logic for comb_logic()
  always @ (*) begin
    out = in_[sel];
  end


endmodule