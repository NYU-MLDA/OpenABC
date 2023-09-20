module dct_mac(clk, ena, dclr, din, coef, result);

	//
	// parameters
	//
	parameter dwidth = 8;
	parameter cwidth = 16;
	parameter mwidth = dwidth + cwidth;  // multiplier result
	parameter rwidth = mwidth +3;        // add 3 bits for growth

	//
	// inputs & outputs
	//
	input               clk;    // clock input
	input               ena;    // clock enable
	input               dclr;   // start new mac (delayed 1 cycle)
	input  [dwidth-1:0] din;    // data input
	input  [cwidth-1:0] coef;   // coefficient input
	output [rwidth-1:0] result; // mac-result
	reg [rwidth -1:0] result;

	//
	// variables
	//
	wire [mwidth-1:0] idin;
	wire [mwidth-1:0] icoef;

	reg  [mwidth -1:0] mult_res /* synthesis syn_multstyle="block_mult" syn_pipeline=1*/ ;
	wire [rwidth -1:0] ext_mult_res;


	//
	// module body
	//
	assign icoef = { {(mwidth-cwidth){coef[cwidth-1]}}, coef};
	assign idin  = { {(mwidth-dwidth){din[dwidth-1]}}, din};

	// generate multiplier structure
	always @(posedge clk)
	  if(ena)
	    mult_res <= #1 icoef * idin;

	assign ext_mult_res = { {3{mult_res[mwidth-1]}}, mult_res};

	// generate adder structure
	always @(posedge clk)
	  if(ena)
	    if(dclr)
	      result <= #1 ext_mult_res;
	    else
	      result <= #1 ext_mult_res + result;
endmodule