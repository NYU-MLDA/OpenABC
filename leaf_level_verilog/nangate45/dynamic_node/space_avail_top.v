module space_avail_top (valid,
		    yummy,
		    spc_avail,
		    clk,
		    reset);

parameter BUFFER_SIZE = 4;
parameter BUFFER_BITS = 3;


input valid;			// sending data to the output
input yummy;			// output consumed data

output spc_avail;		// is there space available?

input clk;
input reset;

//This is the state
reg yummy_f;
reg valid_f;
reg [BUFFER_BITS-1:0] count_f;

reg is_one_f;
reg is_two_or_more_f;

//wires
wire [BUFFER_BITS-1:0] count_plus_1;
wire [BUFFER_BITS-1:0] count_minus_1;
wire up;
wire down;

//wire regs
reg [BUFFER_BITS-1:0] count_temp;


//assigns
assign count_plus_1 = count_f + 1'b1;
assign count_minus_1 = count_f - 1'b1;
assign spc_avail = (is_two_or_more_f | yummy_f | (is_one_f & ~valid_f));
assign up = yummy_f & ~valid_f;
assign down = ~yummy_f & valid_f;

always @ (count_f or count_plus_1 or count_minus_1 or up or down)
begin
	case (count_f)
	0:
		begin
			if(up)
			begin
				count_temp <= count_plus_1;
			end
			else
			begin
				count_temp <= count_f;
			end
		end
	BUFFER_SIZE:
		begin
			if(down)
			begin
				count_temp <= count_minus_1;
			end
			else
			begin
				count_temp <= count_f;
			end
		end
	default:
		begin
			case ({up, down})
				2'b10:	count_temp <= count_plus_1;
				2'b01:	count_temp <= count_minus_1;
				default:	count_temp <= count_f;
			endcase
		end
	endcase
end

wire top_bits_zero_temp = ~| count_temp[BUFFER_BITS-1:1];


always @ (posedge clk)
begin
	if(reset)
	begin
	   count_f <= BUFFER_SIZE;
	   yummy_f <= 1'b0;
	   valid_f <= 1'b0;
	   is_one_f <= (BUFFER_SIZE == 1);
	   is_two_or_more_f <= (BUFFER_SIZE >= 2);
	end
	else
	begin
	   count_f <= count_temp;
	   yummy_f <= yummy;
	   valid_f <= valid;
	   is_one_f         <= top_bits_zero_temp & count_temp[0];
   	   is_two_or_more_f <= ~top_bits_zero_temp;
	end
end

endmodule