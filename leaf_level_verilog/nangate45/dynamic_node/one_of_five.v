module one_of_five(in0,in1,in2,in3,in4,sel,out);
    parameter WIDTH = 8;
    parameter BHC = 10;
    input [2:0] sel;
    input [WIDTH-1:0] in0,in1,in2,in3,in4;
    output reg [WIDTH-1:0] out;
    always@(*)
    begin
        out={WIDTH{1'b0}};
        case(sel)
            3'd0:out=in0;
            3'd1:out=in1;
            3'd2:out=in2;
            3'd3:out=in3;
            3'd4:out=in4;
            default:; // indicates null
        endcase
    end
endmodule