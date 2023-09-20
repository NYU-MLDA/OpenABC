module flip_bus (in, out);
    parameter WIDTH = 8;
    parameter BHC = 10;

    input [WIDTH-1:0] in;
    output wire [WIDTH-1:0] out;

    assign out = ~in;
endmodule