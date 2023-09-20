module Mux_0x683fa1a418b072c9
(
  input  wire [   0:0] clk,
  input  wire [  15:0] in_$000,
  input  wire [  15:0] in_$001,
  input  wire [  15:0] in_$002,
  output reg  [  15:0] out,
  input  wire [   0:0] reset,
  input  wire [   1:0] sel
);

  // localparam declarations
  localparam nports = 3;


  // array declarations
  wire   [  15:0] in_[0:2];
  assign in_[  0] = in_$000;
  assign in_[  1] = in_$001;
  assign in_[  2] = in_$002;

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