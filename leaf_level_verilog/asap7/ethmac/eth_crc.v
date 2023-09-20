module eth_crc (Clk, Reset, Data, Enable, Initialize, Crc, CrcError);


input Clk;
input Reset;
input [3:0] Data;
input Enable;
input Initialize;

output [31:0] Crc;
output CrcError;

reg  [31:0] Crc;

wire [31:0] CrcNext;


assign CrcNext[0] = Enable & (Data[0] ^ Crc[28]); 
assign CrcNext[1] = Enable & (Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29]); 
assign CrcNext[2] = Enable & (Data[2] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[30]); 
assign CrcNext[3] = Enable & (Data[3] ^ Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30] ^ Crc[31]); 
assign CrcNext[4] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[0]; 
assign CrcNext[5] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[1]; 
assign CrcNext[6] = (Enable & (Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30])) ^ Crc[ 2]; 
assign CrcNext[7] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[3]; 
assign CrcNext[8] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[4]; 
assign CrcNext[9] = (Enable & (Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30])) ^ Crc[5]; 
assign CrcNext[10] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[6]; 
assign CrcNext[11] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[7]; 
assign CrcNext[12] = (Enable & (Data[2] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[30])) ^ Crc[8]; 
assign CrcNext[13] = (Enable & (Data[3] ^ Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30] ^ Crc[31])) ^ Crc[9]; 
assign CrcNext[14] = (Enable & (Data[3] ^ Data[2] ^ Crc[30] ^ Crc[31])) ^ Crc[10]; 
assign CrcNext[15] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[11]; 
assign CrcNext[16] = (Enable & (Data[0] ^ Crc[28])) ^ Crc[12]; 
assign CrcNext[17] = (Enable & (Data[1] ^ Crc[29])) ^ Crc[13]; 
assign CrcNext[18] = (Enable & (Data[2] ^ Crc[30])) ^ Crc[14]; 
assign CrcNext[19] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[15]; 
assign CrcNext[20] = Crc[16]; 
assign CrcNext[21] = Crc[17]; 
assign CrcNext[22] = (Enable & (Data[0] ^ Crc[28])) ^ Crc[18]; 
assign CrcNext[23] = (Enable & (Data[1] ^ Data[0] ^ Crc[29] ^ Crc[28])) ^ Crc[19]; 
assign CrcNext[24] = (Enable & (Data[2] ^ Data[1] ^ Crc[30] ^ Crc[29])) ^ Crc[20]; 
assign CrcNext[25] = (Enable & (Data[3] ^ Data[2] ^ Crc[31] ^ Crc[30])) ^ Crc[21]; 
assign CrcNext[26] = (Enable & (Data[3] ^ Data[0] ^ Crc[31] ^ Crc[28])) ^ Crc[22]; 
assign CrcNext[27] = (Enable & (Data[1] ^ Crc[29])) ^ Crc[23]; 
assign CrcNext[28] = (Enable & (Data[2] ^ Crc[30])) ^ Crc[24]; 
assign CrcNext[29] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[25]; 
assign CrcNext[30] = Crc[26]; 
assign CrcNext[31] = Crc[27]; 


always @ (posedge Clk or posedge Reset)
begin
  if (Reset)
    Crc <=  32'hffffffff;
  else
  if(Initialize)
    Crc <=  32'hffffffff;
  else
    Crc <=  CrcNext;
end

assign CrcError = Crc[31:0] != 32'hc704dd7b;  // CRC not equal to magic number

endmodule