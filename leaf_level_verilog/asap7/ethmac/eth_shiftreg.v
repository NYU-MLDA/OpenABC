module eth_shiftreg(Clk, Reset, MdcEn_n, Mdi, Fiad, Rgad, CtrlData, WriteOp, ByteSelect, 
                    LatchByte, ShiftedBit, Prsd, LinkFail);


input       Clk;              // Input clock (Host clock)
input       Reset;            // Reset signal
input       MdcEn_n;          // Enable signal is asserted for one Clk period before Mdc falls.
input       Mdi;              // MII input data
input [4:0] Fiad;             // PHY address
input [4:0] Rgad;             // Register address (within the selected PHY)
input [15:0]CtrlData;         // Control data (data to be written to the PHY)
input       WriteOp;          // The current operation is a PHY register write operation
input [3:0] ByteSelect;       // Byte select
input [1:0] LatchByte;        // Byte select for latching (read operation)

output      ShiftedBit;       // Bit shifted out of the shift register
output[15:0]Prsd;             // Read Status Data (data read from the PHY)
output      LinkFail;         // Link Integrity Signal

reg   [7:0] ShiftReg;         // Shift register for shifting the data in and out
reg   [15:0]Prsd;
reg         LinkFail;




// ShiftReg[7:0] :: Shift Register Data
always @ (posedge Clk or posedge Reset) 
begin
  if(Reset)
    begin
      ShiftReg[7:0] <=  8'h0;
      Prsd[15:0] <=  16'h0;
      LinkFail <=  1'b0;
    end
  else
    begin
      if(MdcEn_n)
        begin 
          if(|ByteSelect)
            begin
	       /* verilator lint_off CASEINCOMPLETE */
              /*case (ByteSelect[3:0])  // synopsys parallel_case full_case*/
              case (ByteSelect[3:0])  
                4'h1 :    ShiftReg[7:0] <=  {2'b01, ~WriteOp, WriteOp, Fiad[4:1]};
                4'h2 :    ShiftReg[7:0] <=  {Fiad[0], Rgad[4:0], 2'b10};
                4'h4 :    ShiftReg[7:0] <=  CtrlData[15:8];
                4'h8 :    ShiftReg[7:0] <=  CtrlData[7:0];
              endcase // case (ByteSelect[3:0])
	       /* verilator lint_on CASEINCOMPLETE */
            end 
          else
            begin
              ShiftReg[7:0] <=  {ShiftReg[6:0], Mdi};
              if(LatchByte[0])
                begin
                  Prsd[7:0] <=  {ShiftReg[6:0], Mdi};
                  if(Rgad == 5'h01)
                    LinkFail <=  ~ShiftReg[1];  // this is bit [2], because it is not shifted yet
                end
              else
                begin
                  if(LatchByte[1])
                    Prsd[15:8] <=  {ShiftReg[6:0], Mdi};
                end
            end
        end
    end
end


assign ShiftedBit = ShiftReg[7];


endmodule