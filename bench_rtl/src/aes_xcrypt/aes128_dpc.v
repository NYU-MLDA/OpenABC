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
// File name        :   aes128_dpc.v
// Function         :   AES-128 Cryptographic Algorithm Core Data Encrypt&Decrypt
// ------------------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-2-1
// Email            :   xcrypt@126.com
// ------------------------------------------------------------------------------

module aes128_dpc(
	input				i_clk,
	input				i_rst,
	input 				i_flag,
	input  [128*11-1:0] i_keyex,
    input  [127:0]   	i_din,
    input           	i_din_en,
    output [127:0]   	o_dout,
    output          	o_dout_en,
	output [127:0]		o_sbox_din,
	input  [127:0]		i_sbox_dout
);

	localparam DLY = 1;
	
	reg  [3:0]	 r_count;	
	reg  [127:0] r_ka;
	reg  [127:0] r_din;
	wire [127:0] s_din;
	wire [31:0]	 s_dina,s_dinb,s_dinc,s_dind;
	wire [127:0] s_mixc_doutx;
	wire [127:0] s_mixc_douty;
	wire [127:0] s_mixc_din;
	wire [127:0] s_ikey;
	
	//byte select
	function [7:0] BS;
		input [31:0] D;
		input [1:0] S;
		begin
			BS = (S==2'd3) ? D[31:24]:
				((S==2'd2) ? D[23:16]:
				((S==2'd1) ? D[15:8] :
				((S==2'd0) ? D[7:0] :8'b0)));
		end
	endfunction
	
	always@(posedge i_clk or posedge i_rst) begin
		if(i_rst) 
			r_count <= #DLY 4'b0;
		else if(i_din_en)
			r_count <= #DLY 4'd1;
		else if(r_count==4'd9)
			r_count <= #DLY 4'b0;
		else if(r_count!=4'd0)
			r_count <= #DLY r_count + 4'd1;
	end
	
	always@(*) begin
		if(i_flag) begin  //encrypt
			case(r_count)
				4'd0: r_ka = i_keyex[128*10-1:128* 9];
				4'd1: r_ka = i_keyex[128* 9-1:128* 8];
				4'd2: r_ka = i_keyex[128* 8-1:128* 7];
				4'd3: r_ka = i_keyex[128* 7-1:128* 6];
				4'd4: r_ka = i_keyex[128* 6-1:128* 5];
				4'd5: r_ka = i_keyex[128* 5-1:128* 4];
				4'd6: r_ka = i_keyex[128* 4-1:128* 3];
				4'd7: r_ka = i_keyex[128* 3-1:128* 2];
				4'd8: r_ka = i_keyex[128* 2-1:128* 1];
				4'd9: r_ka = i_keyex[128* 1-1:128* 0];				
			endcase
		end else begin  //decrypt
			case(r_count)
				4'd9: r_ka = i_keyex[128*11-1:128*10];
				4'd8: r_ka = i_keyex[128*10-1:128* 9];
				4'd7: r_ka = i_keyex[128* 9-1:128* 8];
				4'd6: r_ka = i_keyex[128* 8-1:128* 7];
				4'd5: r_ka = i_keyex[128* 7-1:128* 6];
				4'd4: r_ka = i_keyex[128* 6-1:128* 5];
				4'd3: r_ka = i_keyex[128* 5-1:128* 4];
				4'd2: r_ka = i_keyex[128* 4-1:128* 3];
				4'd1: r_ka = i_keyex[128* 3-1:128* 2];
				4'd0: r_ka = i_keyex[128* 2-1:128* 1];			
			endcase		
		end
	end
	
	assign s_ikey = i_flag ? i_keyex[128*11-1:128*10] : i_keyex[128* 1-1:128* 0];
	assign s_din = i_din_en ? i_din^s_ikey : r_din;
	assign s_dina = s_din[127:96];  //col-1
	assign s_dinb = s_din[95:64];   //col-2
	assign s_dinc = s_din[63:32];   //col-3
	assign s_dind = s_din[31:0];    //col-4
	
	//ShiftRows & SubBytes
	assign o_sbox_din[127:96] = i_flag ? {BS(s_dina,3),BS(s_dinb,2),BS(s_dinc,1),BS(s_dind,0)} : {BS(s_dina,3),BS(s_dind,2),BS(s_dinc,1),BS(s_dinb,0)};
	assign o_sbox_din[95:64] = i_flag ? {BS(s_dinb,3),BS(s_dinc,2),BS(s_dind,1),BS(s_dina,0)} : {BS(s_dinb,3),BS(s_dina,2),BS(s_dind,1),BS(s_dinc,0)};
	assign o_sbox_din[63:32] = i_flag ? {BS(s_dinc,3),BS(s_dind,2),BS(s_dina,1),BS(s_dinb,0)} : {BS(s_dinc,3),BS(s_dinb,2),BS(s_dina,1),BS(s_dind,0)};
	assign o_sbox_din[31:0] = i_flag ? {BS(s_dind,3),BS(s_dina,2),BS(s_dinb,1),BS(s_dinc,0)} : {BS(s_dind,3),BS(s_dinc,2),BS(s_dinb,1),BS(s_dina,0)};
	//
	assign s_mixc_din = i_flag ? i_sbox_dout : i_sbox_dout^r_ka;
	//MixColumns
	aes_mixcol_w u_mixcol_1(
	.i_din	 	(s_mixc_din[127:96]	),
	.o_dout_x	(s_mixc_doutx[127:96]	),
	.o_dout_y	(s_mixc_douty[127:96]	));
	
	aes_mixcol_w u_mixcol_2(
	.i_din	 	(s_mixc_din[95:64]		),
	.o_dout_x	(s_mixc_doutx[95:64]	),
	.o_dout_y	(s_mixc_douty[95:64]	));

	aes_mixcol_w u_mixcol_3(
	.i_din	 	(s_mixc_din[63:32]		),
	.o_dout_x	(s_mixc_doutx[63:32]	),
	.o_dout_y	(s_mixc_douty[63:32]	));

	aes_mixcol_w u_mixcol_4(
	.i_din	 	(s_mixc_din[31:0]		),
	.o_dout_x	(s_mixc_doutx[31:0]		),
	.o_dout_y	(s_mixc_douty[31:0]		));	
	
	always@(posedge i_clk  or posedge i_rst) begin
		if(i_rst)
			r_din <= #DLY 128'b0;
		else if(i_flag)
			r_din <= #DLY s_mixc_doutx^r_ka;
		else 
			r_din <= #DLY s_mixc_douty;
	end	
	
	assign o_dout = i_sbox_dout^r_ka;
	
	assign o_dout_en = (r_count==4'd9) ? 1'b1:1'b0;
	
endmodule
