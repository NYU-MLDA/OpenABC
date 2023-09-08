/*  
Copyright 2019 XCrypt Studio                
																	 
Licensed under the Apache License, Version 2.0 (the "License");         
you may not use this file except in compliance with the License.        
You may obtain a copy of the License at                                 
																	 
 http://www.apache.org/licenses/LICENSE-2.0                          
																	 
Unless required by applicable law or agreed to in writing, software    
distributed under the License is distributed on an "AS IS" BASIS,       
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and     
limitations under the License.                                          
*/  

// ------------------------------------------------------------------------------
// File name        :   aes128_keyex.v
// Function         :   AES-128 Cryptographic Algorithm Core Caculate Round KEY 
// ------------------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-1-25
// Email            :   xcrypt@126.com
// ------------------------------------------------------------------------------

module aes128_keyex(
	input 				i_clk,
	input 				i_rst,
	input  [127:0]	 	i_key,		//key
	input 				i_key_en,	//key init flag
	output [128*11-1:0]	o_exkey,  	//round key
	output 				o_key_ok,  	//key init ok
	output				o_sbox_use,
	output [31:0]		o_sbox_din,
	input  [31:0]		i_sbox_dout
	);
	
	localparam DLY = 1;
	
	wire   [127:0]	s_key;
	reg    [127:0]	r_key;
	reg	  [1279:0]	r_exkey;
	reg 	[3:0]	r_count;
	reg 			r_key_ok;
	wire 			s_busy;
	wire 	[127:0]	s_exk;
	reg 	[31:0]	r_rcon;
	
	//round left shift
	function [31:0] ROL;
		input [31:0] D;
		begin
			ROL = {D[23:0],D[31:24]};
		end
	endfunction
	
	always@(*) begin
		case(r_count) 
			4'd0: r_rcon = 32'h01000000;
			4'd1: r_rcon = 32'h02000000;
			4'd2: r_rcon = 32'h04000000;
			4'd3: r_rcon = 32'h08000000;
			4'd4: r_rcon = 32'h10000000;
			4'd5: r_rcon = 32'h20000000;
			4'd6: r_rcon = 32'h40000000;
			4'd7: r_rcon = 32'h80000000;
			4'd8: r_rcon = 32'h1B000000;
			4'd9: r_rcon = 32'h36000000;
			default: r_rcon = 32'b0;
		endcase
	end
	
	assign s_key = i_key_en ? i_key : r_key;
	//left shift 1|2 bits
	assign o_sbox_use = s_busy;
	assign o_sbox_din = ROL(s_key[31:0]);
	//
	assign s_exk[127:96] = s_key[127:96]^i_sbox_dout^r_rcon;
	assign s_exk[95:64] = s_key[95:64]^s_exk[127:96];
	assign s_exk[63:32] = s_key[63:32]^s_exk[95:64];
	assign s_exk[31:0] = s_key[31:0]^s_exk[63:32];
	
	always@(posedge i_clk or posedge i_rst) begin
		if(i_rst)
			r_key <= #DLY 128'b0;
		else if(s_busy)
			r_key <= #DLY s_exk;
	end	
	
	always@(posedge i_clk or posedge i_rst) begin
		if(i_rst) begin
			r_exkey <= #DLY 1280'b0;
		end else if(s_busy)begin
			r_exkey <= #DLY {r_exkey[128*9-1:0],s_exk};
		end
	end	
	
	always@(posedge i_clk or posedge i_rst) begin
		if(i_rst)
			r_count <= #DLY 4'd0;
		else if(i_key_en)
			r_count <= #DLY 4'd1;
		else if(r_count ==4'd9)
			r_count <= #DLY 4'd0;
		else if(r_count!=4'd0)
			r_count <= #DLY r_count + 4'd1;
	end
	
	assign s_busy = ((r_count!=5'd0)||(i_key_en==1'b1)) ? 1'b1 : 1'b0;
	
	always@(posedge i_clk or posedge i_rst) begin
		if(i_rst)
			r_key_ok <= #DLY 1'b0;
		else if(r_count==4'd9)
			r_key_ok <= #DLY 1'b1;
		else if(i_key_en==1'b1)
			r_key_ok <= #DLY 1'b0;
	end

	assign o_key_ok = r_key_ok&(~i_key_en);
	assign o_exkey = {i_key,r_exkey};	
	
endmodule
