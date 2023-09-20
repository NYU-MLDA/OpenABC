module pmu(clk, rst, \p_in.mfspr , \p_in.mtspr , \p_in.spr_num , \p_in.spr_val , \p_in.tbbits , \p_in.pmm_msr , \p_in.pr_msr , \p_in.run , \p_in.nia , \p_in.addr , \p_in.addr_v , \p_in.occur , \p_out.spr_val , \p_out.intr );
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire [63:0] _015_;
  wire _016_;
  wire _017_;
  wire [31:0] _018_;
  wire [31:0] _019_;
  wire [31:0] _020_;
  wire _021_;
  wire _022_;
  wire [31:0] _023_;
  wire [31:0] _024_;
  wire [31:0] _025_;
  wire _026_;
  wire _027_;
  wire [31:0] _028_;
  wire [31:0] _029_;
  wire [31:0] _030_;
  wire _031_;
  wire _032_;
  wire [31:0] _033_;
  wire [31:0] _034_;
  wire [31:0] _035_;
  wire _036_;
  wire _037_;
  wire [31:0] _038_;
  wire [31:0] _039_;
  wire [31:0] _040_;
  wire _041_;
  wire _042_;
  wire [31:0] _043_;
  wire [31:0] _044_;
  wire [31:0] _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire [6:0] _058_;
  wire _059_;
  wire [2:0] _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire [11:0] _064_;
  wire _065_;
  wire [3:0] _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire [63:0] _070_;
  wire _071_;
  wire _072_;
  wire [63:0] _073_;
  wire _074_;
  wire _075_;
  wire [63:0] _076_;
  wire _077_;
  wire _078_;
  wire [63:0] _079_;
  wire [63:0] _080_;
  wire _081_;
  wire _082_;
  wire [63:0] _083_;
  wire [63:0] _084_;
  wire _085_;
  wire _086_;
  wire [63:0] _087_;
  wire [63:0] _088_;
  wire [191:0] _089_;
  wire [31:0] _090_;
  wire [63:0] _091_;
  wire [63:0] _092_;
  wire [63:0] _093_;
  wire [63:0] _094_;
  wire [63:0] _095_;
  wire [63:0] _096_;
  reg [191:0] _097_;
  reg [31:0] _098_;
  reg [63:0] _099_;
  reg [63:0] _100_;
  reg [63:0] _101_;
  reg [63:0] _102_;
  reg [63:0] _103_;
  reg [63:0] _104_;
  reg [3:0] _105_;
  wire [3:0] _106_;
  wire [3:0] _107_;
  wire [31:0] _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire [2:0] _190_;
  wire _191_;
  wire [1:0] _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire [1:0] _254_;
  wire _255_;
  wire _256_;
  input clk;
  wire clk;
  wire doalert;
  wire doevent;
  wire [5:0] doinc;
  wire [31:0] mmcr0;
  wire [63:0] mmcr1;
  wire [63:0] mmcr2;
  wire [63:0] mmcra;
  input [63:0] \p_in.addr ;
  wire [63:0] \p_in.addr ;
  input \p_in.addr_v ;
  wire \p_in.addr_v ;
  input \p_in.mfspr ;
  wire \p_in.mfspr ;
  input \p_in.mtspr ;
  wire \p_in.mtspr ;
  input [63:0] \p_in.nia ;
  wire [63:0] \p_in.nia ;
  input [20:0] \p_in.occur ;
  wire [20:0] \p_in.occur ;
  input \p_in.pmm_msr ;
  wire \p_in.pmm_msr ;
  input \p_in.pr_msr ;
  wire \p_in.pr_msr ;
  input \p_in.run ;
  wire \p_in.run ;
  input [4:0] \p_in.spr_num ;
  wire [4:0] \p_in.spr_num ;
  input [63:0] \p_in.spr_val ;
  wire [63:0] \p_in.spr_val ;
  input [3:0] \p_in.tbbits ;
  wire [3:0] \p_in.tbbits ;
  output \p_out.intr ;
  wire \p_out.intr ;
  output [63:0] \p_out.spr_val ;
  wire [63:0] \p_out.spr_val ;
  wire [191:0] pmcs;
  wire [3:0] prev_tb;
  input rst;
  wire rst;
  wire [63:0] sdar;
  wire [63:0] siar;
  wire [63:0] sier;
  assign _000_ = _108_[0] ? _107_[1] : _107_[0];
  assign _001_ = _108_[0] ? _107_[3] : _107_[2];
  assign _256_ = _108_[1] ? _001_ : _000_;
  assign _002_ = \p_in.spr_num [3:0] == 4'h3;
  assign _003_ = \p_in.spr_num [3:0] == 4'h4;
  assign _004_ = \p_in.spr_num [3:0] == 4'h5;
  assign _005_ = \p_in.spr_num [3:0] == 4'h6;
  assign _006_ = \p_in.spr_num [3:0] == 4'h7;
  assign _007_ = \p_in.spr_num [3:0] == 4'h8;
  assign _008_ = \p_in.spr_num [3:0] == 4'hb;
  assign _009_ = \p_in.spr_num [3:0] == 4'he;
  assign _010_ = \p_in.spr_num [3:0] == 4'h1;
  assign _011_ = \p_in.spr_num [3:0] == 4'h2;
  assign _012_ = \p_in.spr_num [3:0] == 4'hc;
  assign _013_ = \p_in.spr_num [3:0] == 4'hd;
  assign _014_ = \p_in.spr_num [3:0] == 4'h0;
  function [63:0] \33004 ;
    input [63:0] a;
    input [831:0] b;
    input [12:0] s;
    (* parallel_case *)
    casez (s)
      13'b????????????1:
        \33004  = b[63:0];
      13'b???????????1?:
        \33004  = b[127:64];
      13'b??????????1??:
        \33004  = b[191:128];
      13'b?????????1???:
        \33004  = b[255:192];
      13'b????????1????:
        \33004  = b[319:256];
      13'b???????1?????:
        \33004  = b[383:320];
      13'b??????1??????:
        \33004  = b[447:384];
      13'b?????1???????:
        \33004  = b[511:448];
      13'b????1????????:
        \33004  = b[575:512];
      13'b???1?????????:
        \33004  = b[639:576];
      13'b??1??????????:
        \33004  = b[703:640];
      13'b?1???????????:
        \33004  = b[767:704];
      13'b1????????????:
        \33004  = b[831:768];
      default:
        \33004  = a;
    endcase
  endfunction
  assign _015_ = \33004 (64'h0000000000000000, { sier, sdar, siar, mmcra, mmcr2, mmcr1, 32'h00000000, mmcr0, 32'h00000000, pmcs[31:0], 32'h00000000, pmcs[63:32], 32'h00000000, pmcs[95:64], 32'h00000000, pmcs[127:96], 32'h00000000, pmcs[159:128], 32'h00000000, pmcs[191:160] }, { _014_, _013_, _012_, _011_, _010_, _009_, _008_, _007_, _006_, _005_, _004_, _003_, _002_ });
  assign _016_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd3;
  assign _017_ = \p_in.mtspr  & _016_;
  assign _018_ = pmcs[191:160] + 32'd1;
  assign _019_ = doinc[5] ? _018_ : pmcs[191:160];
  assign _020_ = _017_ ? \p_in.spr_val [31:0] : _019_;
  assign _021_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd4;
  assign _022_ = \p_in.mtspr  & _021_;
  assign _023_ = pmcs[159:128] + 32'd1;
  assign _024_ = doinc[4] ? _023_ : pmcs[159:128];
  assign _025_ = _022_ ? \p_in.spr_val [31:0] : _024_;
  assign _026_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd5;
  assign _027_ = \p_in.mtspr  & _026_;
  assign _028_ = pmcs[127:96] + 32'd1;
  assign _029_ = doinc[3] ? _028_ : pmcs[127:96];
  assign _030_ = _027_ ? \p_in.spr_val [31:0] : _029_;
  assign _031_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd6;
  assign _032_ = \p_in.mtspr  & _031_;
  assign _033_ = pmcs[95:64] + 32'd1;
  assign _034_ = doinc[2] ? _033_ : pmcs[95:64];
  assign _035_ = _032_ ? \p_in.spr_val [31:0] : _034_;
  assign _036_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd7;
  assign _037_ = \p_in.mtspr  & _036_;
  assign _038_ = pmcs[63:32] + 32'd1;
  assign _039_ = doinc[1] ? _038_ : pmcs[63:32];
  assign _040_ = _037_ ? \p_in.spr_val [31:0] : _039_;
  assign _041_ = { 28'h0000000, \p_in.spr_num [3:0] } == 32'd8;
  assign _042_ = \p_in.mtspr  & _041_;
  assign _043_ = pmcs[31:0] + 32'd1;
  assign _044_ = doinc[0] ? _043_ : pmcs[31:0];
  assign _045_ = _042_ ? \p_in.spr_val [31:0] : _044_;
  assign _046_ = \p_in.spr_num [3:0] == 4'hb;
  assign _047_ = \p_in.mtspr  & _046_;
  assign _048_ = doalert ? 1'h1 : mmcr0[7];
  assign _049_ = doalert ? 1'h0 : mmcr0[11];
  assign _050_ = doalert ? 1'h0 : mmcr0[26];
  assign _051_ = doevent & mmcr0[25];
  assign _052_ = ~ mmcr0[13];
  assign _053_ = _051_ & _052_;
  assign _054_ = _053_ ? 1'h1 : mmcr0[31];
  assign _055_ = doevent | pmcs[191];
  assign _056_ = _055_ & mmcr0[13];
  assign _057_ = _056_ ? 1'h0 : mmcr0[13];
  assign _058_ = _047_ ? \p_in.spr_val [6:0] : mmcr0[6:0];
  assign _059_ = _047_ ? \p_in.spr_val [7] : _048_;
  assign _060_ = _047_ ? \p_in.spr_val [10:8] : mmcr0[10:8];
  assign _061_ = _047_ ? \p_in.spr_val [11] : _049_;
  assign _062_ = _047_ ? \p_in.spr_val [12] : mmcr0[12];
  assign _063_ = _047_ ? \p_in.spr_val [13] : _057_;
  assign _064_ = _047_ ? { \p_in.spr_val [25:22], 2'h0, \p_in.spr_val [19:14] } : mmcr0[25:14];
  assign _065_ = _047_ ? \p_in.spr_val [26] : _050_;
  assign _066_ = _047_ ? \p_in.spr_val [30:27] : mmcr0[30:27];
  assign _067_ = _047_ ? \p_in.spr_val [31] : _054_;
  assign _068_ = \p_in.spr_num [3:0] == 4'he;
  assign _069_ = \p_in.mtspr  & _068_;
  assign _070_ = _069_ ? \p_in.spr_val  : mmcr1;
  assign _071_ = \p_in.spr_num [3:0] == 4'h1;
  assign _072_ = \p_in.mtspr  & _071_;
  assign _073_ = _072_ ? \p_in.spr_val  : mmcr2;
  assign _074_ = \p_in.spr_num [3:0] == 4'h2;
  assign _075_ = \p_in.mtspr  & _074_;
  assign _076_ = _075_ ? { \p_in.spr_val [63:1], 1'h0 } : mmcra;
  assign _077_ = \p_in.spr_num [3:0] == 4'hc;
  assign _078_ = \p_in.mtspr  & _077_;
  assign _079_ = doalert ? \p_in.nia  : siar;
  assign _080_ = _078_ ? \p_in.spr_val  : _079_;
  assign _081_ = \p_in.spr_num [3:0] == 4'hd;
  assign _082_ = \p_in.mtspr  & _081_;
  assign _083_ = doalert ? \p_in.addr  : sdar;
  assign _084_ = _082_ ? \p_in.spr_val  : _083_;
  assign _085_ = \p_in.spr_num [3:0] == 4'h0;
  assign _086_ = \p_in.mtspr  & _085_;
  assign _087_ = doalert ? { 38'h0000000000, \p_in.pr_msr , 3'h1, \p_in.addr_v , 21'h000000 } : sier;
  assign _088_ = _086_ ? \p_in.spr_val  : _087_;
  assign _089_ = rst ? pmcs : { _020_, _025_, _030_, _035_, _040_, _045_ };
  assign _090_ = rst ? 32'd2147483648 : { _067_, _066_, _065_, _064_, _063_, _062_, _061_, _060_, _059_, _058_ };
  assign _091_ = rst ? mmcr1 : _070_;
  assign _092_ = rst ? mmcr2 : _073_;
  assign _093_ = rst ? mmcra : _076_;
  assign _094_ = rst ? siar : _080_;
  assign _095_ = rst ? sdar : _084_;
  assign _096_ = rst ? sier : _088_;
  always @(posedge clk)
    _097_ <= _089_;
  always @(posedge clk)
    _098_ <= _090_;
  always @(posedge clk)
    _099_ <= _091_;
  always @(posedge clk)
    _100_ <= _092_;
  always @(posedge clk)
    _101_ <= _093_;
  always @(posedge clk)
    _102_ <= _094_;
  always @(posedge clk)
    _103_ <= _095_;
  always @(posedge clk)
    _104_ <= _096_;
  always @(posedge clk)
    _105_ <= \p_in.tbbits ;
  assign _106_ = ~ prev_tb;
  assign _107_ = \p_in.tbbits  & _106_;
  assign _108_ = 32'd3 - { 30'h00000000, mmcr0[24:23] };
  assign _109_ = _256_ & mmcr0[22];
  assign _110_ = _109_ ? 1'h1 : 1'h0;
  assign _111_ = mmcr0[15] & pmcs[191];
  assign _112_ = _111_ ? 1'h1 : _110_;
  assign _113_ = pmcs[159] | pmcs[127];
  assign _114_ = _113_ | pmcs[95];
  assign _115_ = mmcr0[14] & _114_;
  assign _116_ = _115_ ? 1'h1 : _112_;
  assign _117_ = mmcr0[19:18] != 2'h3;
  assign _118_ = mmcr0[14] & _117_;
  assign _119_ = pmcs[63] | pmcs[31];
  assign _120_ = _118_ & _119_;
  assign _121_ = _120_ ? 1'h1 : _116_;
  assign _122_ = mmcr1[31:24] == 8'hf0;
  assign _123_ = mmcr1[31:24] == 8'hf2;
  assign _124_ = mmcr1[31:24] == 8'hfe;
  assign _125_ = _123_ | _124_;
  assign _126_ = mmcr1[31:24] == 8'hf4;
  assign _127_ = mmcr1[31:24] == 8'hf6;
  assign _128_ = mmcr1[31:24] == 8'hf8;
  assign _129_ = mmcr1[31:24] == 8'hfa;
  assign _130_ = mmcr1[31:24] == 8'hfc;
  function [0:0] \33332 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \33332  = b[0:0];
      7'b?????1?:
        \33332  = b[1:1];
      7'b????1??:
        \33332  = b[2:2];
      7'b???1???:
        \33332  = b[3:3];
      7'b??1????:
        \33332  = b[4:4];
      7'b?1?????:
        \33332  = b[5:5];
      7'b1??????:
        \33332  = b[6:6];
      default:
        \33332  = a;
    endcase
  endfunction
  assign _131_ = \33332 (1'h0, { \p_in.occur [5], \p_in.run , \p_in.occur [0], \p_in.occur [10], \p_in.occur [4:3], 1'h1 }, { _130_, _129_, _128_, _127_, _126_, _125_, _122_ });
  function [0:0] \33337 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \33337  = b[0:0];
      7'b?????1?:
        \33337  = b[1:1];
      7'b????1??:
        \33337  = b[2:2];
      7'b???1???:
        \33337  = b[3:3];
      7'b??1????:
        \33337  = b[4:4];
      7'b?1?????:
        \33337  = b[5:5];
      7'b1??????:
        \33337  = b[6:6];
      default:
        \33337  = a;
    endcase
  endfunction
  assign _132_ = \33337 (1'h0, 7'h01, { _130_, _129_, _128_, _127_, _126_, _125_, _122_ });
  assign _133_ = mmcr1[23:16] == 8'hf0;
  assign _134_ = mmcr1[23:16] == 8'hf2;
  assign _135_ = mmcr1[23:16] == 8'hf4;
  assign _136_ = mmcr1[23:16] == 8'hf6;
  assign _137_ = mmcr1[23:16] == 8'hf8;
  assign _138_ = mmcr1[23:16] == 8'hfa;
  assign _139_ = mmcr1[23:16] == 8'hfc;
  assign _140_ = mmcr1[23:16] == 8'hfe;
  function [0:0] \33373 ;
    input [0:0] a;
    input [7:0] b;
    input [7:0] s;
    (* parallel_case *)
    casez (s)
      8'b???????1:
        \33373  = b[0:0];
      8'b??????1?:
        \33373  = b[1:1];
      8'b?????1??:
        \33373  = b[2:2];
      8'b????1???:
        \33373  = b[3:3];
      8'b???1????:
        \33373  = b[4:4];
      8'b??1?????:
        \33373  = b[5:5];
      8'b?1??????:
        \33373  = b[6:6];
      8'b1???????:
        \33373  = b[7:7];
      default:
        \33373  = a;
    endcase
  endfunction
  assign _141_ = \33373 (1'h0, { \p_in.occur [13:12], \p_in.occur [7], \p_in.occur [2], \p_in.occur [18], \p_in.run , \p_in.occur [1], \p_in.occur [6] }, { _140_, _139_, _138_, _137_, _136_, _135_, _134_, _133_ });
  assign _142_ = mmcr1[15:8] == 8'hf0;
  assign _143_ = mmcr1[15:8] == 8'hf2;
  assign _144_ = \p_in.occur [3] & \p_in.run ;
  assign _145_ = mmcr1[15:8] == 8'hf4;
  assign _146_ = mmcr1[15:8] == 8'hf6;
  assign _147_ = mmcr1[15:8] == 8'hf8;
  assign _148_ = mmcr1[15:8] == 8'hfe;
  function [0:0] \33402 ;
    input [0:0] a;
    input [5:0] b;
    input [5:0] s;
    (* parallel_case *)
    casez (s)
      6'b?????1:
        \33402  = b[0:0];
      6'b????1?:
        \33402  = b[1:1];
      6'b???1??:
        \33402  = b[2:2];
      6'b??1???:
        \33402  = b[3:3];
      6'b?1????:
        \33402  = b[4:4];
      6'b1?????:
        \33402  = b[5:5];
      default:
        \33402  = a;
    endcase
  endfunction
  assign _149_ = \33402 (1'h0, { \p_in.occur [17], _256_, \p_in.occur [15], _144_, \p_in.occur [1], \p_in.occur [16] }, { _148_, _147_, _146_, _145_, _143_, _142_ });
  assign _150_ = mmcr1[7:0] == 8'hf0;
  assign _151_ = mmcr1[7:0] == 8'hf2;
  assign _152_ = mmcr1[7:0] == 8'hf4;
  assign _153_ = mmcr1[7:0] == 8'hf6;
  assign _154_ = mmcr1[7:0] == 8'hf8;
  assign _155_ = \p_in.occur [3] & \p_in.run ;
  assign _156_ = mmcr1[7:0] == 8'hfa;
  assign _157_ = mmcr1[7:0] == 8'hfc;
  assign _158_ = mmcr1[7:0] == 8'hfe;
  function [0:0] \33440 ;
    input [0:0] a;
    input [7:0] b;
    input [7:0] s;
    (* parallel_case *)
    casez (s)
      8'b???????1:
        \33440  = b[0:0];
      8'b??????1?:
        \33440  = b[1:1];
      8'b?????1??:
        \33440  = b[2:2];
      8'b????1???:
        \33440  = b[3:3];
      8'b???1????:
        \33440  = b[4:4];
      8'b??1?????:
        \33440  = b[5:5];
      8'b?1??????:
        \33440  = b[6:6];
      8'b1???????:
        \33440  = b[7:7];
      default:
        \33440  = a;
    endcase
  endfunction
  assign _159_ = \33440 (1'h0, { \p_in.occur [19], \p_in.occur [11], _155_, \p_in.occur [9:8], \p_in.run , \p_in.occur [1], \p_in.occur [14] }, { _158_, _157_, _156_, _154_, _153_, _152_, _151_, _150_ });
  assign _160_ = mmcr0[8] | \p_in.run ;
  assign _161_ = _160_ & \p_in.occur [3];
  assign _162_ = mmcr0[8] | \p_in.run ;
  assign _163_ = ~ \p_in.pr_msr ;
  assign _164_ = mmcr0[30] & _163_;
  assign _165_ = mmcr0[31] | _164_;
  assign _166_ = ~ mmcr0[12];
  assign _167_ = mmcr0[29] & _166_;
  assign _168_ = _167_ & \p_in.pr_msr ;
  assign _169_ = _165_ | _168_;
  assign _170_ = ~ mmcr0[29];
  assign _171_ = _170_ & mmcr0[12];
  assign _172_ = _171_ & \p_in.pr_msr ;
  assign _173_ = _169_ | _172_;
  assign _174_ = mmcr0[28] & \p_in.pmm_msr ;
  assign _175_ = _173_ | _174_;
  assign _176_ = ~ \p_in.pmm_msr ;
  assign _177_ = mmcr0[27] & _176_;
  assign _178_ = _175_ | _177_;
  assign _179_ = _178_ | mmcr0[5];
  assign _180_ = ~ \p_in.run ;
  assign _181_ = mmcr0[1] & _180_;
  assign _182_ = ~ _132_;
  assign _183_ = _181_ & _182_;
  assign _184_ = _179_ | _183_;
  assign _185_ = _184_ ? 1'h0 : _131_;
  assign _186_ = _178_ | mmcr0[5];
  assign _187_ = ~ \p_in.run ;
  assign _188_ = mmcr0[1] & _187_;
  assign _189_ = _186_ | _188_;
  assign _190_ = _189_ ? 3'h0 : { _141_, _149_, _159_ };
  assign _191_ = _178_ | mmcr0[4];
  assign _192_ = _191_ ? 2'h0 : { _161_, _162_ };
  assign _193_ = ~ \p_in.pr_msr ;
  assign _194_ = mmcr2[63] & _193_;
  assign _195_ = mmcr2[62] & \p_in.pr_msr ;
  assign _196_ = _194_ | _195_;
  assign _197_ = mmcr2[60] & \p_in.pmm_msr ;
  assign _198_ = _196_ | _197_;
  assign _199_ = mmcr2[60] & \p_in.pmm_msr ;
  assign _200_ = _198_ | _199_;
  assign _201_ = _200_ ? 1'h0 : _185_;
  assign _202_ = ~ \p_in.pr_msr ;
  assign _203_ = mmcr2[54] & _202_;
  assign _204_ = mmcr2[53] & \p_in.pr_msr ;
  assign _205_ = _203_ | _204_;
  assign _206_ = mmcr2[51] & \p_in.pmm_msr ;
  assign _207_ = _205_ | _206_;
  assign _208_ = mmcr2[51] & \p_in.pmm_msr ;
  assign _209_ = _207_ | _208_;
  assign _210_ = mmcr0[13] ? 1'h0 : _190_[2];
  assign _211_ = _209_ ? 1'h0 : _210_;
  assign _212_ = ~ \p_in.pr_msr ;
  assign _213_ = mmcr2[45] & _212_;
  assign _214_ = mmcr2[44] & \p_in.pr_msr ;
  assign _215_ = _213_ | _214_;
  assign _216_ = mmcr2[42] & \p_in.pmm_msr ;
  assign _217_ = _215_ | _216_;
  assign _218_ = mmcr2[42] & \p_in.pmm_msr ;
  assign _219_ = _217_ | _218_;
  assign _220_ = mmcr0[13] ? 1'h0 : _190_[1];
  assign _221_ = _219_ ? 1'h0 : _220_;
  assign _222_ = ~ \p_in.pr_msr ;
  assign _223_ = mmcr2[36] & _222_;
  assign _224_ = mmcr2[35] & \p_in.pr_msr ;
  assign _225_ = _223_ | _224_;
  assign _226_ = mmcr2[33] & \p_in.pmm_msr ;
  assign _227_ = _225_ | _226_;
  assign _228_ = mmcr2[33] & \p_in.pmm_msr ;
  assign _229_ = _227_ | _228_;
  assign _230_ = mmcr0[13] ? 1'h0 : _190_[0];
  assign _231_ = _229_ ? 1'h0 : _230_;
  assign _232_ = ~ \p_in.pr_msr ;
  assign _233_ = mmcr2[27] & _232_;
  assign _234_ = mmcr2[26] & \p_in.pr_msr ;
  assign _235_ = _233_ | _234_;
  assign _236_ = mmcr2[24] & \p_in.pmm_msr ;
  assign _237_ = _235_ | _236_;
  assign _238_ = mmcr2[24] & \p_in.pmm_msr ;
  assign _239_ = _237_ | _238_;
  assign _240_ = mmcr0[13] ? 1'h0 : _192_[1];
  assign _241_ = _239_ ? 1'h0 : _240_;
  assign _242_ = mmcr0[13] ? 1'h0 : _192_[0];
  assign _243_ = ~ \p_in.pr_msr ;
  assign _244_ = mmcr2[18] & _243_;
  assign _245_ = mmcr2[17] & \p_in.pr_msr ;
  assign _246_ = _244_ | _245_;
  assign _247_ = mmcr2[15] & \p_in.pmm_msr ;
  assign _248_ = _246_ | _247_;
  assign _249_ = mmcr2[15] & \p_in.pmm_msr ;
  assign _250_ = _248_ | _249_;
  assign _251_ = _250_ ? 1'h0 : _242_;
  assign _252_ = mmcr0[19:18] == 2'h3;
  assign _253_ = \p_in.run  & \p_in.occur [3];
  assign _254_ = _252_ ? { _253_, \p_in.run  } : { _241_, _251_ };
  assign _255_ = _121_ & mmcr0[26];
  assign pmcs = _097_;
  assign mmcr0 = _098_;
  assign mmcr1 = _099_;
  assign mmcr2 = _100_;
  assign mmcra = _101_;
  assign siar = _102_;
  assign sdar = _103_;
  assign sier = _104_;
  assign doinc = { _201_, _211_, _221_, _231_, _254_ };
  assign doalert = _255_;
  assign doevent = _121_;
  assign prev_tb = _105_;
  assign \p_out.spr_val  = _015_;
  assign \p_out.intr  = mmcr0[7];
endmodule