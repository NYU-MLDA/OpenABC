module eth_macstatus(
                      MRxClk, Reset, ReceivedLengthOK, ReceiveEnd, ReceivedPacketGood, RxCrcError, 
                      MRxErr, MRxDV, RxStateSFD, RxStateData, RxStatePreamble, RxStateIdle, Transmitting, 
                      RxByteCnt, RxByteCntEq0, RxByteCntGreat2, RxByteCntMaxFrame, 
                      InvalidSymbol, MRxD, LatchedCrcError, Collision, CollValid, RxLateCollision,
                      r_RecSmall, r_MinFL, r_MaxFL, ShortFrame, DribbleNibble, ReceivedPacketTooBig, r_HugEn,
                      LoadRxStatus, StartTxDone, StartTxAbort, RetryCnt, RetryCntLatched, MTxClk, MaxCollisionOccured, 
                      RetryLimit, LateCollision, LateCollLatched, DeferIndication, DeferLatched, RstDeferLatched, TxStartFrm,
                      StatePreamble, StateData, CarrierSense, CarrierSenseLost, TxUsedData, LatchedMRxErr, Loopback, 
                      r_FullD
                    );




input         MRxClk;
input         Reset;
input         RxCrcError;
input         MRxErr;
input         MRxDV;

input         RxStateSFD;
input   [1:0] RxStateData;
input         RxStatePreamble;
input         RxStateIdle;
input         Transmitting;
input  [15:0] RxByteCnt;
input         RxByteCntEq0;
input         RxByteCntGreat2;
input         RxByteCntMaxFrame;
input   [3:0] MRxD;
input         Collision;
input   [5:0] CollValid;
input         r_RecSmall;
input  [15:0] r_MinFL;
input  [15:0] r_MaxFL;
input         r_HugEn;
input         StartTxDone;
input         StartTxAbort;
input   [3:0] RetryCnt;
input         MTxClk;
input         MaxCollisionOccured;
input         LateCollision;
input         DeferIndication;
input         TxStartFrm;
input         StatePreamble;
input   [1:0] StateData;
input         CarrierSense;
input         TxUsedData;
input         Loopback;
input         r_FullD;


output        ReceivedLengthOK;
output        ReceiveEnd;
output        ReceivedPacketGood;
output        InvalidSymbol;
output        LatchedCrcError;
output        RxLateCollision;
output        ShortFrame;
output        DribbleNibble;
output        ReceivedPacketTooBig;
output        LoadRxStatus;
output  [3:0] RetryCntLatched;
output        RetryLimit;
output        LateCollLatched;
output        DeferLatched;
input         RstDeferLatched;
output        CarrierSenseLost;
output        LatchedMRxErr;


reg           ReceiveEnd;

reg           LatchedCrcError;
reg           LatchedMRxErr;
reg           LoadRxStatus;
reg           InvalidSymbol;
reg     [3:0] RetryCntLatched;
reg           RetryLimit;
reg           LateCollLatched;
reg           DeferLatched;
reg           CarrierSenseLost;

wire          TakeSample;
wire          SetInvalidSymbol; // Invalid symbol was received during reception in 100Mbps 

// Crc error
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    LatchedCrcError <= 1'b0;
  else
  if(RxStateSFD)
    LatchedCrcError <= 1'b0;
  else
  if(RxStateData[0])
    LatchedCrcError <= RxCrcError & ~RxByteCntEq0;
end


// LatchedMRxErr
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    LatchedMRxErr <= 1'b0;
  else
  if(MRxErr & MRxDV & (RxStatePreamble | RxStateSFD | (|RxStateData) | RxStateIdle & ~Transmitting))
    LatchedMRxErr <= 1'b1;
  else
    LatchedMRxErr <= 1'b0;
end


// ReceivedPacketGood
assign ReceivedPacketGood = ~LatchedCrcError;


// ReceivedLengthOK
assign ReceivedLengthOK = RxByteCnt[15:0] >= r_MinFL[15:0] & RxByteCnt[15:0] <= r_MaxFL[15:0];





// Time to take a sample
//assign TakeSample = |RxStateData     & ~MRxDV & RxByteCntGreat2  |
assign TakeSample = (|RxStateData)   & (~MRxDV)                    |
                      RxStateData[0] &   MRxDV & RxByteCntMaxFrame;


// LoadRxStatus
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    LoadRxStatus <= 1'b0;
  else
    LoadRxStatus <= TakeSample;
end



// ReceiveEnd
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    ReceiveEnd  <= 1'b0;
  else
    ReceiveEnd  <= LoadRxStatus;                     
end


// Invalid Symbol received during 100Mbps mode
assign SetInvalidSymbol = MRxDV & MRxErr & MRxD[3:0] == 4'he;


// InvalidSymbol
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    InvalidSymbol <= 1'b0;
  else
  if(LoadRxStatus & ~SetInvalidSymbol)
    InvalidSymbol <= 1'b0;
  else
  if(SetInvalidSymbol)
    InvalidSymbol <= 1'b1;
end


// Late Collision

reg RxLateCollision;
reg RxColWindow;
// Collision Window
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    RxLateCollision <= 1'b0;
  else
  if(LoadRxStatus)
    RxLateCollision <= 1'b0;
  else
  if(Collision & (~r_FullD) & (~RxColWindow | r_RecSmall))
    RxLateCollision <= 1'b1;
end

// Collision Window
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    RxColWindow <= 1'b1;
  else
  if(~Collision & RxByteCnt[5:0] == CollValid[5:0] & RxStateData[1])
    RxColWindow <= 1'b0;
  else
  if(RxStateIdle)
    RxColWindow <= 1'b1;
end


// ShortFrame
reg ShortFrame;
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    ShortFrame <= 1'b0;
  else
  if(LoadRxStatus)
    ShortFrame <= 1'b0;
  else
  if(TakeSample)
    ShortFrame <= RxByteCnt[15:0] < r_MinFL[15:0];
end


// DribbleNibble
reg DribbleNibble;
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    DribbleNibble <= 1'b0;
  else
  if(RxStateSFD)
    DribbleNibble <= 1'b0;
  else
  if(~MRxDV & RxStateData[1])
    DribbleNibble <= 1'b1;
end


reg ReceivedPacketTooBig;
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    ReceivedPacketTooBig <= 1'b0;
  else
  if(LoadRxStatus)
    ReceivedPacketTooBig <= 1'b0;
  else
  if(TakeSample)
    ReceivedPacketTooBig <= ~r_HugEn & RxByteCnt[15:0] > r_MaxFL[15:0];
end



// Latched Retry counter for tx status
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    RetryCntLatched <= 4'h0;
  else
  if(StartTxDone | StartTxAbort)
    RetryCntLatched <= RetryCnt;
end


// Latched Retransmission limit
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    RetryLimit <= 1'h0;
  else
  if(StartTxDone | StartTxAbort)
    RetryLimit <= MaxCollisionOccured;
end


// Latched Late Collision
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    LateCollLatched <= 1'b0;
  else
  if(StartTxDone | StartTxAbort)
    LateCollLatched <= LateCollision;
end



// Latched Defer state
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    DeferLatched <= 1'b0;
  else
  if(DeferIndication)
    DeferLatched <= 1'b1;
  else
  if(RstDeferLatched)
    DeferLatched <= 1'b0;
end


// CarrierSenseLost
always @ (posedge MTxClk or posedge Reset)
begin
  if(Reset)
    CarrierSenseLost <= 1'b0;
  else
  if((StatePreamble | (|StateData)) & ~CarrierSense & ~Loopback & ~Collision & ~r_FullD)
    CarrierSenseLost <= 1'b1;
  else
  if(TxStartFrm)
    CarrierSenseLost <= 1'b0;
end


endmodule