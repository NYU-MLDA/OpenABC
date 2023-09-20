module random(clk, data, raw, err);
  input clk;
  wire clk;
  output [63:0] data;
  wire [63:0] data;
  output err;
  wire err;
  output [63:0] raw;
  wire [63:0] raw;
  assign data = 64'hffffffffffffffff;
  assign raw = 64'hffffffffffffffff;
  assign err = 1'h1;
endmodule