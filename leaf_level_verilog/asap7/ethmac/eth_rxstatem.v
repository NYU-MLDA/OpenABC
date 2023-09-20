module eth_rxstatem (MRxClk, Reset, MRxDV, ByteCntEq0, ByteCntGreat2, Transmitting, MRxDEq5, MRxDEqD, 
                     IFGCounterEq24, ByteCntMaxFrame, StateData, StateIdle, StatePreamble, StateSFD, 
                     StateDrop
                    );

input         MRxClk;
input         Reset;
input         MRxDV;
input         ByteCntEq0;
input         ByteCntGreat2;
input         MRxDEq5;
input         Transmitting;
input         MRxDEqD;
input         IFGCounterEq24;
input         ByteCntMaxFrame;

output [1:0]  StateData;
output        StateIdle;
output        StateDrop;
output        StatePreamble;
output        StateSFD;

reg           StateData0;
reg           StateData1;
reg           StateIdle;
reg           StateDrop;
reg           StatePreamble;
reg           StateSFD;

wire          StartIdle;
wire          StartDrop;
wire          StartData0;
wire          StartData1;
wire          StartPreamble;
wire          StartSFD;


// Defining the next state
assign StartIdle = ~MRxDV & (StateDrop | StatePreamble | StateSFD | (|StateData));

assign StartPreamble = MRxDV & ~MRxDEq5 & (StateIdle & ~Transmitting);

assign StartSFD = MRxDV & MRxDEq5 & (StateIdle & ~Transmitting | StatePreamble);

assign StartData0 = MRxDV & (StateSFD & MRxDEqD & IFGCounterEq24 | StateData1);

assign StartData1 = MRxDV & StateData0 & (~ByteCntMaxFrame);

assign StartDrop = MRxDV & (StateIdle & Transmitting | StateSFD & ~IFGCounterEq24 &
                   MRxDEqD |  StateData0 &  ByteCntMaxFrame);

// Rx State Machine
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      StateIdle     <=  1'b0;
      StateDrop     <=  1'b1;
      StatePreamble <=  1'b0;
      StateSFD      <=  1'b0;
      StateData0    <=  1'b0;
      StateData1    <=  1'b0;
    end
  else
    begin
      if(StartPreamble | StartSFD | StartDrop)
        StateIdle <=  1'b0;
      else
      if(StartIdle)
        StateIdle <=  1'b1;

      if(StartIdle)
        StateDrop <=  1'b0;
      else
      if(StartDrop)
        StateDrop <=  1'b1;

      if(StartSFD | StartIdle | StartDrop)
        StatePreamble <=  1'b0;
      else
      if(StartPreamble)
        StatePreamble <=  1'b1;

      if(StartPreamble | StartIdle | StartData0 | StartDrop)
        StateSFD <=  1'b0;
      else
      if(StartSFD)
        StateSFD <=  1'b1;

      if(StartIdle | StartData1 | StartDrop)
        StateData0 <=  1'b0;
      else
      if(StartData0)
        StateData0 <=  1'b1;

      if(StartIdle | StartData0 | StartDrop)
        StateData1 <=  1'b0;
      else
      if(StartData1)
        StateData1 <=  1'b1;
    end
end

assign StateData[1:0] = {StateData1, StateData0};

endmodule