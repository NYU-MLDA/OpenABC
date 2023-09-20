module eth_txstatem  (MTxClk, Reset, ExcessiveDefer, CarrierSense, NibCnt, IPGT, IPGR1, 
                      IPGR2, FullD, TxStartFrm, TxEndFrm, TxUnderRun, Collision, UnderRun, 
                      StartTxDone, TooBig, NibCntEq7, NibCntEq15, MaxFrame, Pad, CrcEn, 
                      NibbleMinFl, RandomEq0, ColWindow, RetryMax, NoBckof, RandomEqByteCnt,
                      StateIdle, StateIPG, StatePreamble, StateData, StatePAD, StateFCS, 
                      StateJam, StateJam_q, StateBackOff, StateDefer, StartFCS, StartJam, 
                      StartBackoff, StartDefer, DeferIndication, StartPreamble, StartData, StartIPG
                     );

input MTxClk;
input Reset;
input ExcessiveDefer;
input CarrierSense;
input [6:0] NibCnt;
input [6:0] IPGT;
input [6:0] IPGR1;
input [6:0] IPGR2;
input FullD;
input TxStartFrm;
input TxEndFrm;
input TxUnderRun;
input Collision;
input UnderRun;
input StartTxDone; 
input TooBig;
input NibCntEq7;
input NibCntEq15;
input MaxFrame;
input Pad;
input CrcEn;
input NibbleMinFl;
input RandomEq0;
input ColWindow;
input RetryMax;
input NoBckof;
input RandomEqByteCnt;


output StateIdle;         // Idle state
output StateIPG;          // IPG state
output StatePreamble;     // Preamble state
output [1:0] StateData;   // Data state
output StatePAD;          // PAD state
output StateFCS;          // FCS state
output StateJam;          // Jam state
output StateJam_q;        // Delayed Jam state
output StateBackOff;      // Backoff state
output StateDefer;        // Defer state

output StartFCS;          // FCS state will be activated in next clock
output StartJam;          // Jam state will be activated in next clock
output StartBackoff;      // Backoff state will be activated in next clock
output StartDefer;        // Defer state will be activated in next clock
output DeferIndication;
output StartPreamble;     // Preamble state will be activated in next clock
output [1:0] StartData;   // Data state will be activated in next clock
output StartIPG;          // IPG state will be activated in next clock

wire StartIdle;           // Idle state will be activated in next clock
wire StartPAD;            // PAD state will be activated in next clock


reg StateIdle;
reg StateIPG;
reg StatePreamble;
reg [1:0] StateData;
reg StatePAD;
reg StateFCS;
reg StateJam;
reg StateJam_q;
reg StateBackOff;
reg StateDefer;
reg Rule1;


// Defining the next state
assign StartIPG = StateDefer & ~ExcessiveDefer & ~CarrierSense;

assign StartIdle = StateIPG & (Rule1 & NibCnt[6:0] >= IPGT | ~Rule1 & NibCnt[6:0] >= IPGR2);

assign StartPreamble = StateIdle & TxStartFrm & ~CarrierSense;

assign StartData[0] = ~Collision & (StatePreamble & NibCntEq15 | StateData[1] & ~TxEndFrm);

assign StartData[1] = ~Collision & StateData[0] & ~TxUnderRun & ~MaxFrame;

assign StartPAD = ~Collision & StateData[1] & TxEndFrm & Pad & ~NibbleMinFl;

assign StartFCS = ~Collision & StateData[1] & TxEndFrm & (~Pad | Pad & NibbleMinFl) & CrcEn
                | ~Collision & StatePAD & NibbleMinFl & CrcEn;

assign StartJam = (Collision | UnderRun) & ((StatePreamble & NibCntEq15) | (|StateData[1:0]) | StatePAD | StateFCS);

assign StartBackoff = StateJam & ~RandomEq0 & ColWindow & ~RetryMax & NibCntEq7 & ~NoBckof;

assign StartDefer = StateIPG & ~Rule1 & CarrierSense & NibCnt[6:0] <= IPGR1 & NibCnt[6:0] != IPGR2
                  | StateIdle & CarrierSense 
                  | StateJam & NibCntEq7 & (NoBckof | RandomEq0 | ~ColWindow | RetryMax)
                  | StateBackOff & (TxUnderRun | RandomEqByteCnt)
                  | StartTxDone | TooBig;

assign DeferIndication = StateIdle & CarrierSense;

// Tx State Machine
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    begin
      StateIPG        <=  1'b0;
      StateIdle       <=  1'b0;
      StatePreamble   <=  1'b0;
      StateData[1:0]  <=  2'b0;
      StatePAD        <=  1'b0;
      StateFCS        <=  1'b0;
      StateJam        <=  1'b0;
      StateJam_q      <=  1'b0;
      StateBackOff    <=  1'b0;
      StateDefer      <=  1'b1;
    end
  else
    begin
      StateData[1:0] <=  StartData[1:0];
      StateJam_q <=  StateJam;

      if(StartDefer | StartIdle)
        StateIPG <=  1'b0;
      else
      if(StartIPG)
        StateIPG <=  1'b1;

      if(StartDefer | StartPreamble)
        StateIdle <=  1'b0;
      else
      if(StartIdle)
        StateIdle <=  1'b1;

      if(StartData[0] | StartJam)
        StatePreamble <=  1'b0;
      else
      if(StartPreamble)
        StatePreamble <=  1'b1;

      if(StartFCS | StartJam)
        StatePAD <=  1'b0;
      else
      if(StartPAD)
        StatePAD <=  1'b1;

      if(StartJam | StartDefer)
        StateFCS <=  1'b0;
      else
      if(StartFCS)
        StateFCS <=  1'b1;

      if(StartBackoff | StartDefer)
        StateJam <=  1'b0;
      else
      if(StartJam)
        StateJam <=  1'b1;

      if(StartDefer)
        StateBackOff <=  1'b0;
      else
      if(StartBackoff)
        StateBackOff <=  1'b1;

      if(StartIPG)
        StateDefer <=  1'b0;
      else
      if(StartDefer)
        StateDefer <=  1'b1;
    end
end


// This sections defines which interpack gap rule to use
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    Rule1 <=  1'b0;
  else
    begin
      if(StateIdle | StateBackOff)
        Rule1 <=  1'b0;
      else
      if(StatePreamble | FullD)
        Rule1 <=  1'b1;
    end
end



endmodule