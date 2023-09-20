module eth_outputcontrol(Clk, Reset, InProgress, ShiftedBit, BitCounter, WriteOp, NoPre, MdcEn_n, Mdo, MdoEn);

input         Clk;                // Host Clock
input         Reset;              // General Reset
input         WriteOp;            // Write Operation Latch (When asserted, write operation is in progress)
input         NoPre;              // No Preamble (no 32-bit preamble)
input         InProgress;         // Operation in progress
input         ShiftedBit;         // This bit is output of the shift register and is connected to the Mdo signal
input   [6:0] BitCounter;         // Bit Counter
input         MdcEn_n;            // MII Management Data Clock Enable signal is asserted for one Clk period before Mdc falls.

output        Mdo;                // MII Management Data Output
output        MdoEn;              // MII Management Data Output Enable

wire          SerialEn;

reg           MdoEn_2d;
reg           MdoEn_d;
reg           MdoEn;

reg           Mdo_2d;
reg           Mdo_d;
reg           Mdo;                // MII Management Data Output



// Generation of the Serial Enable signal (enables the serialization of the data)
assign SerialEn =  WriteOp & InProgress & ( BitCounter>31 | ( ( BitCounter == 0 ) & NoPre ) )
                | ~WriteOp & InProgress & (( BitCounter>31 & BitCounter<46 ) | ( ( BitCounter == 0 ) & NoPre ));


// Generation of the MdoEn signal
always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    begin
      MdoEn_2d <=  1'b0;
      MdoEn_d <=  1'b0;
      MdoEn <=  1'b0;
    end
  else
    begin
      if(MdcEn_n)
        begin
          MdoEn_2d <=  SerialEn | InProgress & BitCounter<32;
          MdoEn_d <=  MdoEn_2d;
          MdoEn <=  MdoEn_d;
        end
    end
end


// Generation of the Mdo signal.
always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    begin
      Mdo_2d <=  1'b0;
      Mdo_d <=  1'b0;
      Mdo <=  1'b0;
    end
  else
    begin
      if(MdcEn_n)
        begin
          Mdo_2d <=  ~SerialEn & BitCounter<32;
          Mdo_d <=  ShiftedBit | Mdo_2d;
          Mdo <=  Mdo_d;
        end
    end
end



endmodule