module rotator(rs, ra, shift, insn, is_32bit, right_shift, arith, clear_left, clear_right, sign_ext_rs, result, carry_out);
  wire [31:0] _000_;
  wire [31:0] _001_;
  wire [5:0] _002_;
  wire [5:0] _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire [63:0] _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire [63:0] _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire [63:0] _015_;
  wire _016_;
  wire _017_;
  wire [6:0] _018_;
  wire _019_;
  wire [6:0] _020_;
  wire [6:0] _021_;
  wire [6:0] _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire [5:0] _026_;
  wire [6:0] _027_;
  wire [6:0] _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
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
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
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
  wire _190_;
  wire _191_;
  wire _192_;
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
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire [63:0] _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire _290_;
  wire _291_;
  wire _292_;
  wire _293_;
  wire [1:0] _294_;
  wire [63:0] _295_;
  wire [63:0] _296_;
  wire [63:0] _297_;
  wire [63:0] _298_;
  wire [63:0] _299_;
  wire [63:0] _300_;
  wire _301_;
  wire [63:0] _302_;
  wire [63:0] _303_;
  wire [63:0] _304_;
  wire [63:0] _305_;
  wire [63:0] _306_;
  wire [63:0] _307_;
  wire _308_;
  wire [63:0] _309_;
  wire _310_;
  wire [63:0] _311_;
  wire [63:0] _312_;
  wire [63:0] _313_;
  wire _314_;
  wire [63:0] _315_;
  wire [63:0] _316_;
  wire _317_;
  wire _318_;
  input arith;
  wire arith;
  output carry_out;
  wire carry_out;
  input clear_left;
  wire clear_left;
  input clear_right;
  wire clear_right;
  input [31:0] insn;
  wire [31:0] insn;
  input is_32bit;
  wire is_32bit;
  wire [6:0] mb;
  wire [6:0] me;
  wire [63:0] ml;
  wire [63:0] mr;
  wire [1:0] output_mode;
  input [63:0] ra;
  wire [63:0] ra;
  wire [63:0] repl32;
  output [63:0] result;
  wire [63:0] result;
  input right_shift;
  wire right_shift;
  wire [63:0] rot;
  wire [63:0] rot1;
  wire [63:0] rot2;
  wire [5:0] rot_count;
  input [63:0] rs;
  wire [63:0] rs;
  wire [6:0] sh;
  input [6:0] shift;
  wire [6:0] shift;
  input sign_ext_rs;
  wire sign_ext_rs;
  assign _000_ = sign_ext_rs ? { rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31], rs[31] } : rs[63:32];
  assign _001_ = is_32bit ? rs[31:0] : _000_;
  assign _002_ = - $signed(shift[5:0]);
  assign _003_ = right_shift ? _002_ : shift[5:0];
  assign _004_ = rot_count[1:0] == 2'h0;
  assign _005_ = rot_count[1:0] == 2'h1;
  assign _006_ = rot_count[1:0] == 2'h2;
  function [63:0] \27865 ;
    input [63:0] a;
    input [191:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \27865  = b[63:0];
      3'b?1?:
        \27865  = b[127:64];
      3'b1??:
        \27865  = b[191:128];
      default:
        \27865  = a;
    endcase
  endfunction
  assign _007_ = \27865 ({ repl32[60:0], repl32[63:61] }, { repl32[61:0], repl32[63:62], repl32[62:0], repl32[63], repl32 }, { _006_, _005_, _004_ });
  assign _008_ = rot_count[3:2] == 2'h0;
  assign _009_ = rot_count[3:2] == 2'h1;
  assign _010_ = rot_count[3:2] == 2'h2;
  function [63:0] \27883 ;
    input [63:0] a;
    input [191:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \27883  = b[63:0];
      3'b?1?:
        \27883  = b[127:64];
      3'b1??:
        \27883  = b[191:128];
      default:
        \27883  = a;
    endcase
  endfunction
  assign _011_ = \27883 ({ rot1[51:0], rot1[63:52] }, { rot1[55:0], rot1[63:56], rot1[59:0], rot1[63:60], rot1 }, { _010_, _009_, _008_ });
  assign _012_ = rot_count[5:4] == 2'h0;
  assign _013_ = rot_count[5:4] == 2'h1;
  assign _014_ = rot_count[5:4] == 2'h2;
  function [63:0] \27901 ;
    input [63:0] a;
    input [191:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \27901  = b[63:0];
      3'b?1?:
        \27901  = b[127:64];
      3'b1??:
        \27901  = b[191:128];
      default:
        \27901  = a;
    endcase
  endfunction
  assign _015_ = \27901 ({ rot2[15:0], rot2[63:16] }, { rot2[31:0], rot2[63:32], rot2[47:0], rot2[63:48], rot2 }, { _014_, _013_, _012_ });
  assign _016_ = ~ is_32bit;
  assign _017_ = shift[6] & _016_;
  assign _018_ = is_32bit ? { 2'h1, insn[10:6] } : { 1'h0, insn[5], insn[10:6] };
  assign _019_ = ~ sh[5];
  assign _020_ = is_32bit ? { sh[5], _019_, sh[4:0] } : sh;
  assign _021_ = right_shift ? _020_ : { 1'h0, is_32bit, 5'h00 };
  assign _022_ = clear_left ? _018_ : _021_;
  assign _023_ = clear_right & is_32bit;
  assign _024_ = ~ clear_left;
  assign _025_ = clear_right & _024_;
  assign _026_ = ~ sh[5:0];
  assign _027_ = _025_ ? { 1'h0, insn[5], insn[10:6] } : { sh[6], _026_ };
  assign _028_ = _023_ ? { 2'h1, insn[5:1] } : _027_;
  assign _029_ = $signed(32'd0) >= $signed({ 25'h0000000, mb });
  assign _030_ = _029_ ? 1'h1 : 1'h0;
  assign _031_ = $signed(32'd1) >= $signed({ 25'h0000000, mb });
  assign _032_ = _031_ ? 1'h1 : 1'h0;
  assign _033_ = $signed(32'd2) >= $signed({ 25'h0000000, mb });
  assign _034_ = _033_ ? 1'h1 : 1'h0;
  assign _035_ = $signed(32'd3) >= $signed({ 25'h0000000, mb });
  assign _036_ = _035_ ? 1'h1 : 1'h0;
  assign _037_ = $signed(32'd4) >= $signed({ 25'h0000000, mb });
  assign _038_ = _037_ ? 1'h1 : 1'h0;
  assign _039_ = $signed(32'd5) >= $signed({ 25'h0000000, mb });
  assign _040_ = _039_ ? 1'h1 : 1'h0;
  assign _041_ = $signed(32'd6) >= $signed({ 25'h0000000, mb });
  assign _042_ = _041_ ? 1'h1 : 1'h0;
  assign _043_ = $signed(32'd7) >= $signed({ 25'h0000000, mb });
  assign _044_ = _043_ ? 1'h1 : 1'h0;
  assign _045_ = $signed(32'd8) >= $signed({ 25'h0000000, mb });
  assign _046_ = _045_ ? 1'h1 : 1'h0;
  assign _047_ = $signed(32'd9) >= $signed({ 25'h0000000, mb });
  assign _048_ = _047_ ? 1'h1 : 1'h0;
  assign _049_ = $signed(32'd10) >= $signed({ 25'h0000000, mb });
  assign _050_ = _049_ ? 1'h1 : 1'h0;
  assign _051_ = $signed(32'd11) >= $signed({ 25'h0000000, mb });
  assign _052_ = _051_ ? 1'h1 : 1'h0;
  assign _053_ = $signed(32'd12) >= $signed({ 25'h0000000, mb });
  assign _054_ = _053_ ? 1'h1 : 1'h0;
  assign _055_ = $signed(32'd13) >= $signed({ 25'h0000000, mb });
  assign _056_ = _055_ ? 1'h1 : 1'h0;
  assign _057_ = $signed(32'd14) >= $signed({ 25'h0000000, mb });
  assign _058_ = _057_ ? 1'h1 : 1'h0;
  assign _059_ = $signed(32'd15) >= $signed({ 25'h0000000, mb });
  assign _060_ = _059_ ? 1'h1 : 1'h0;
  assign _061_ = $signed(32'd16) >= $signed({ 25'h0000000, mb });
  assign _062_ = _061_ ? 1'h1 : 1'h0;
  assign _063_ = $signed(32'd17) >= $signed({ 25'h0000000, mb });
  assign _064_ = _063_ ? 1'h1 : 1'h0;
  assign _065_ = $signed(32'd18) >= $signed({ 25'h0000000, mb });
  assign _066_ = _065_ ? 1'h1 : 1'h0;
  assign _067_ = $signed(32'd19) >= $signed({ 25'h0000000, mb });
  assign _068_ = _067_ ? 1'h1 : 1'h0;
  assign _069_ = $signed(32'd20) >= $signed({ 25'h0000000, mb });
  assign _070_ = _069_ ? 1'h1 : 1'h0;
  assign _071_ = $signed(32'd21) >= $signed({ 25'h0000000, mb });
  assign _072_ = _071_ ? 1'h1 : 1'h0;
  assign _073_ = $signed(32'd22) >= $signed({ 25'h0000000, mb });
  assign _074_ = _073_ ? 1'h1 : 1'h0;
  assign _075_ = $signed(32'd23) >= $signed({ 25'h0000000, mb });
  assign _076_ = _075_ ? 1'h1 : 1'h0;
  assign _077_ = $signed(32'd24) >= $signed({ 25'h0000000, mb });
  assign _078_ = _077_ ? 1'h1 : 1'h0;
  assign _079_ = $signed(32'd25) >= $signed({ 25'h0000000, mb });
  assign _080_ = _079_ ? 1'h1 : 1'h0;
  assign _081_ = $signed(32'd26) >= $signed({ 25'h0000000, mb });
  assign _082_ = _081_ ? 1'h1 : 1'h0;
  assign _083_ = $signed(32'd27) >= $signed({ 25'h0000000, mb });
  assign _084_ = _083_ ? 1'h1 : 1'h0;
  assign _085_ = $signed(32'd28) >= $signed({ 25'h0000000, mb });
  assign _086_ = _085_ ? 1'h1 : 1'h0;
  assign _087_ = $signed(32'd29) >= $signed({ 25'h0000000, mb });
  assign _088_ = _087_ ? 1'h1 : 1'h0;
  assign _089_ = $signed(32'd30) >= $signed({ 25'h0000000, mb });
  assign _090_ = _089_ ? 1'h1 : 1'h0;
  assign _091_ = $signed(32'd31) >= $signed({ 25'h0000000, mb });
  assign _092_ = _091_ ? 1'h1 : 1'h0;
  assign _093_ = $signed(32'd32) >= $signed({ 25'h0000000, mb });
  assign _094_ = _093_ ? 1'h1 : 1'h0;
  assign _095_ = $signed(32'd33) >= $signed({ 25'h0000000, mb });
  assign _096_ = _095_ ? 1'h1 : 1'h0;
  assign _097_ = $signed(32'd34) >= $signed({ 25'h0000000, mb });
  assign _098_ = _097_ ? 1'h1 : 1'h0;
  assign _099_ = $signed(32'd35) >= $signed({ 25'h0000000, mb });
  assign _100_ = _099_ ? 1'h1 : 1'h0;
  assign _101_ = $signed(32'd36) >= $signed({ 25'h0000000, mb });
  assign _102_ = _101_ ? 1'h1 : 1'h0;
  assign _103_ = $signed(32'd37) >= $signed({ 25'h0000000, mb });
  assign _104_ = _103_ ? 1'h1 : 1'h0;
  assign _105_ = $signed(32'd38) >= $signed({ 25'h0000000, mb });
  assign _106_ = _105_ ? 1'h1 : 1'h0;
  assign _107_ = $signed(32'd39) >= $signed({ 25'h0000000, mb });
  assign _108_ = _107_ ? 1'h1 : 1'h0;
  assign _109_ = $signed(32'd40) >= $signed({ 25'h0000000, mb });
  assign _110_ = _109_ ? 1'h1 : 1'h0;
  assign _111_ = $signed(32'd41) >= $signed({ 25'h0000000, mb });
  assign _112_ = _111_ ? 1'h1 : 1'h0;
  assign _113_ = $signed(32'd42) >= $signed({ 25'h0000000, mb });
  assign _114_ = _113_ ? 1'h1 : 1'h0;
  assign _115_ = $signed(32'd43) >= $signed({ 25'h0000000, mb });
  assign _116_ = _115_ ? 1'h1 : 1'h0;
  assign _117_ = $signed(32'd44) >= $signed({ 25'h0000000, mb });
  assign _118_ = _117_ ? 1'h1 : 1'h0;
  assign _119_ = $signed(32'd45) >= $signed({ 25'h0000000, mb });
  assign _120_ = _119_ ? 1'h1 : 1'h0;
  assign _121_ = $signed(32'd46) >= $signed({ 25'h0000000, mb });
  assign _122_ = _121_ ? 1'h1 : 1'h0;
  assign _123_ = $signed(32'd47) >= $signed({ 25'h0000000, mb });
  assign _124_ = _123_ ? 1'h1 : 1'h0;
  assign _125_ = $signed(32'd48) >= $signed({ 25'h0000000, mb });
  assign _126_ = _125_ ? 1'h1 : 1'h0;
  assign _127_ = $signed(32'd49) >= $signed({ 25'h0000000, mb });
  assign _128_ = _127_ ? 1'h1 : 1'h0;
  assign _129_ = $signed(32'd50) >= $signed({ 25'h0000000, mb });
  assign _130_ = _129_ ? 1'h1 : 1'h0;
  assign _131_ = $signed(32'd51) >= $signed({ 25'h0000000, mb });
  assign _132_ = _131_ ? 1'h1 : 1'h0;
  assign _133_ = $signed(32'd52) >= $signed({ 25'h0000000, mb });
  assign _134_ = _133_ ? 1'h1 : 1'h0;
  assign _135_ = $signed(32'd53) >= $signed({ 25'h0000000, mb });
  assign _136_ = _135_ ? 1'h1 : 1'h0;
  assign _137_ = $signed(32'd54) >= $signed({ 25'h0000000, mb });
  assign _138_ = _137_ ? 1'h1 : 1'h0;
  assign _139_ = $signed(32'd55) >= $signed({ 25'h0000000, mb });
  assign _140_ = _139_ ? 1'h1 : 1'h0;
  assign _141_ = $signed(32'd56) >= $signed({ 25'h0000000, mb });
  assign _142_ = _141_ ? 1'h1 : 1'h0;
  assign _143_ = $signed(32'd57) >= $signed({ 25'h0000000, mb });
  assign _144_ = _143_ ? 1'h1 : 1'h0;
  assign _145_ = $signed(32'd58) >= $signed({ 25'h0000000, mb });
  assign _146_ = _145_ ? 1'h1 : 1'h0;
  assign _147_ = $signed(32'd59) >= $signed({ 25'h0000000, mb });
  assign _148_ = _147_ ? 1'h1 : 1'h0;
  assign _149_ = $signed(32'd60) >= $signed({ 25'h0000000, mb });
  assign _150_ = _149_ ? 1'h1 : 1'h0;
  assign _151_ = $signed(32'd61) >= $signed({ 25'h0000000, mb });
  assign _152_ = _151_ ? 1'h1 : 1'h0;
  assign _153_ = $signed(32'd62) >= $signed({ 25'h0000000, mb });
  assign _154_ = _153_ ? 1'h1 : 1'h0;
  assign _155_ = $signed(32'd63) >= $signed({ 25'h0000000, mb });
  assign _156_ = _155_ ? 1'h1 : 1'h0;
  assign _157_ = ~ me[6];
  assign _158_ = $signed(32'd0) <= $signed({ 25'h0000000, me });
  assign _159_ = _158_ ? 1'h1 : 1'h0;
  assign _160_ = $signed(32'd1) <= $signed({ 25'h0000000, me });
  assign _161_ = _160_ ? 1'h1 : 1'h0;
  assign _162_ = $signed(32'd2) <= $signed({ 25'h0000000, me });
  assign _163_ = _162_ ? 1'h1 : 1'h0;
  assign _164_ = $signed(32'd3) <= $signed({ 25'h0000000, me });
  assign _165_ = _164_ ? 1'h1 : 1'h0;
  assign _166_ = $signed(32'd4) <= $signed({ 25'h0000000, me });
  assign _167_ = _166_ ? 1'h1 : 1'h0;
  assign _168_ = $signed(32'd5) <= $signed({ 25'h0000000, me });
  assign _169_ = _168_ ? 1'h1 : 1'h0;
  assign _170_ = $signed(32'd6) <= $signed({ 25'h0000000, me });
  assign _171_ = _170_ ? 1'h1 : 1'h0;
  assign _172_ = $signed(32'd7) <= $signed({ 25'h0000000, me });
  assign _173_ = _172_ ? 1'h1 : 1'h0;
  assign _174_ = $signed(32'd8) <= $signed({ 25'h0000000, me });
  assign _175_ = _174_ ? 1'h1 : 1'h0;
  assign _176_ = $signed(32'd9) <= $signed({ 25'h0000000, me });
  assign _177_ = _176_ ? 1'h1 : 1'h0;
  assign _178_ = $signed(32'd10) <= $signed({ 25'h0000000, me });
  assign _179_ = _178_ ? 1'h1 : 1'h0;
  assign _180_ = $signed(32'd11) <= $signed({ 25'h0000000, me });
  assign _181_ = _180_ ? 1'h1 : 1'h0;
  assign _182_ = $signed(32'd12) <= $signed({ 25'h0000000, me });
  assign _183_ = _182_ ? 1'h1 : 1'h0;
  assign _184_ = $signed(32'd13) <= $signed({ 25'h0000000, me });
  assign _185_ = _184_ ? 1'h1 : 1'h0;
  assign _186_ = $signed(32'd14) <= $signed({ 25'h0000000, me });
  assign _187_ = _186_ ? 1'h1 : 1'h0;
  assign _188_ = $signed(32'd15) <= $signed({ 25'h0000000, me });
  assign _189_ = _188_ ? 1'h1 : 1'h0;
  assign _190_ = $signed(32'd16) <= $signed({ 25'h0000000, me });
  assign _191_ = _190_ ? 1'h1 : 1'h0;
  assign _192_ = $signed(32'd17) <= $signed({ 25'h0000000, me });
  assign _193_ = _192_ ? 1'h1 : 1'h0;
  assign _194_ = $signed(32'd18) <= $signed({ 25'h0000000, me });
  assign _195_ = _194_ ? 1'h1 : 1'h0;
  assign _196_ = $signed(32'd19) <= $signed({ 25'h0000000, me });
  assign _197_ = _196_ ? 1'h1 : 1'h0;
  assign _198_ = $signed(32'd20) <= $signed({ 25'h0000000, me });
  assign _199_ = _198_ ? 1'h1 : 1'h0;
  assign _200_ = $signed(32'd21) <= $signed({ 25'h0000000, me });
  assign _201_ = _200_ ? 1'h1 : 1'h0;
  assign _202_ = $signed(32'd22) <= $signed({ 25'h0000000, me });
  assign _203_ = _202_ ? 1'h1 : 1'h0;
  assign _204_ = $signed(32'd23) <= $signed({ 25'h0000000, me });
  assign _205_ = _204_ ? 1'h1 : 1'h0;
  assign _206_ = $signed(32'd24) <= $signed({ 25'h0000000, me });
  assign _207_ = _206_ ? 1'h1 : 1'h0;
  assign _208_ = $signed(32'd25) <= $signed({ 25'h0000000, me });
  assign _209_ = _208_ ? 1'h1 : 1'h0;
  assign _210_ = $signed(32'd26) <= $signed({ 25'h0000000, me });
  assign _211_ = _210_ ? 1'h1 : 1'h0;
  assign _212_ = $signed(32'd27) <= $signed({ 25'h0000000, me });
  assign _213_ = _212_ ? 1'h1 : 1'h0;
  assign _214_ = $signed(32'd28) <= $signed({ 25'h0000000, me });
  assign _215_ = _214_ ? 1'h1 : 1'h0;
  assign _216_ = $signed(32'd29) <= $signed({ 25'h0000000, me });
  assign _217_ = _216_ ? 1'h1 : 1'h0;
  assign _218_ = $signed(32'd30) <= $signed({ 25'h0000000, me });
  assign _219_ = _218_ ? 1'h1 : 1'h0;
  assign _220_ = $signed(32'd31) <= $signed({ 25'h0000000, me });
  assign _221_ = _220_ ? 1'h1 : 1'h0;
  assign _222_ = $signed(32'd32) <= $signed({ 25'h0000000, me });
  assign _223_ = _222_ ? 1'h1 : 1'h0;
  assign _224_ = $signed(32'd33) <= $signed({ 25'h0000000, me });
  assign _225_ = _224_ ? 1'h1 : 1'h0;
  assign _226_ = $signed(32'd34) <= $signed({ 25'h0000000, me });
  assign _227_ = _226_ ? 1'h1 : 1'h0;
  assign _228_ = $signed(32'd35) <= $signed({ 25'h0000000, me });
  assign _229_ = _228_ ? 1'h1 : 1'h0;
  assign _230_ = $signed(32'd36) <= $signed({ 25'h0000000, me });
  assign _231_ = _230_ ? 1'h1 : 1'h0;
  assign _232_ = $signed(32'd37) <= $signed({ 25'h0000000, me });
  assign _233_ = _232_ ? 1'h1 : 1'h0;
  assign _234_ = $signed(32'd38) <= $signed({ 25'h0000000, me });
  assign _235_ = _234_ ? 1'h1 : 1'h0;
  assign _236_ = $signed(32'd39) <= $signed({ 25'h0000000, me });
  assign _237_ = _236_ ? 1'h1 : 1'h0;
  assign _238_ = $signed(32'd40) <= $signed({ 25'h0000000, me });
  assign _239_ = _238_ ? 1'h1 : 1'h0;
  assign _240_ = $signed(32'd41) <= $signed({ 25'h0000000, me });
  assign _241_ = _240_ ? 1'h1 : 1'h0;
  assign _242_ = $signed(32'd42) <= $signed({ 25'h0000000, me });
  assign _243_ = _242_ ? 1'h1 : 1'h0;
  assign _244_ = $signed(32'd43) <= $signed({ 25'h0000000, me });
  assign _245_ = _244_ ? 1'h1 : 1'h0;
  assign _246_ = $signed(32'd44) <= $signed({ 25'h0000000, me });
  assign _247_ = _246_ ? 1'h1 : 1'h0;
  assign _248_ = $signed(32'd45) <= $signed({ 25'h0000000, me });
  assign _249_ = _248_ ? 1'h1 : 1'h0;
  assign _250_ = $signed(32'd46) <= $signed({ 25'h0000000, me });
  assign _251_ = _250_ ? 1'h1 : 1'h0;
  assign _252_ = $signed(32'd47) <= $signed({ 25'h0000000, me });
  assign _253_ = _252_ ? 1'h1 : 1'h0;
  assign _254_ = $signed(32'd48) <= $signed({ 25'h0000000, me });
  assign _255_ = _254_ ? 1'h1 : 1'h0;
  assign _256_ = $signed(32'd49) <= $signed({ 25'h0000000, me });
  assign _257_ = _256_ ? 1'h1 : 1'h0;
  assign _258_ = $signed(32'd50) <= $signed({ 25'h0000000, me });
  assign _259_ = _258_ ? 1'h1 : 1'h0;
  assign _260_ = $signed(32'd51) <= $signed({ 25'h0000000, me });
  assign _261_ = _260_ ? 1'h1 : 1'h0;
  assign _262_ = $signed(32'd52) <= $signed({ 25'h0000000, me });
  assign _263_ = _262_ ? 1'h1 : 1'h0;
  assign _264_ = $signed(32'd53) <= $signed({ 25'h0000000, me });
  assign _265_ = _264_ ? 1'h1 : 1'h0;
  assign _266_ = $signed(32'd54) <= $signed({ 25'h0000000, me });
  assign _267_ = _266_ ? 1'h1 : 1'h0;
  assign _268_ = $signed(32'd55) <= $signed({ 25'h0000000, me });
  assign _269_ = _268_ ? 1'h1 : 1'h0;
  assign _270_ = $signed(32'd56) <= $signed({ 25'h0000000, me });
  assign _271_ = _270_ ? 1'h1 : 1'h0;
  assign _272_ = $signed(32'd57) <= $signed({ 25'h0000000, me });
  assign _273_ = _272_ ? 1'h1 : 1'h0;
  assign _274_ = $signed(32'd58) <= $signed({ 25'h0000000, me });
  assign _275_ = _274_ ? 1'h1 : 1'h0;
  assign _276_ = $signed(32'd59) <= $signed({ 25'h0000000, me });
  assign _277_ = _276_ ? 1'h1 : 1'h0;
  assign _278_ = $signed(32'd60) <= $signed({ 25'h0000000, me });
  assign _279_ = _278_ ? 1'h1 : 1'h0;
  assign _280_ = $signed(32'd61) <= $signed({ 25'h0000000, me });
  assign _281_ = _280_ ? 1'h1 : 1'h0;
  assign _282_ = $signed(32'd62) <= $signed({ 25'h0000000, me });
  assign _283_ = _282_ ? 1'h1 : 1'h0;
  assign _284_ = $signed(32'd63) <= $signed({ 25'h0000000, me });
  assign _285_ = _284_ ? 1'h1 : 1'h0;
  assign _286_ = _157_ ? { _159_, _161_, _163_, _165_, _167_, _169_, _171_, _173_, _175_, _177_, _179_, _181_, _183_, _185_, _187_, _189_, _191_, _193_, _195_, _197_, _199_, _201_, _203_, _205_, _207_, _209_, _211_, _213_, _215_, _217_, _219_, _221_, _223_, _225_, _227_, _229_, _231_, _233_, _235_, _237_, _239_, _241_, _243_, _245_, _247_, _249_, _251_, _253_, _255_, _257_, _259_, _261_, _263_, _265_, _267_, _269_, _271_, _273_, _275_, _277_, _279_, _281_, _283_, _285_ } : 64'h0000000000000000;
  assign _287_ = ~ clear_right;
  assign _288_ = clear_left & _287_;
  assign _289_ = _288_ | right_shift;
  assign _290_ = arith & repl32[63];
  assign _291_ = mb[5:0] > me[5:0];
  assign _292_ = clear_right & _291_;
  assign _293_ = _292_ ? 1'h1 : 1'h0;
  assign _294_ = _289_ ? { 1'h1, _290_ } : { 1'h0, _293_ };
  assign _295_ = mr & ml;
  assign _296_ = rot & _295_;
  assign _297_ = mr & ml;
  assign _298_ = ~ _297_;
  assign _299_ = ra & _298_;
  assign _300_ = _296_ | _299_;
  assign _301_ = output_mode == 2'h0;
  assign _302_ = mr | ml;
  assign _303_ = rot & _302_;
  assign _304_ = mr | ml;
  assign _305_ = ~ _304_;
  assign _306_ = ra & _305_;
  assign _307_ = _303_ | _306_;
  assign _308_ = output_mode == 2'h1;
  assign _309_ = rot & mr;
  assign _310_ = output_mode == 2'h2;
  assign _311_ = ~ mr;
  assign _312_ = rot | _311_;
  function [63:0] \28963 ;
    input [63:0] a;
    input [191:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \28963  = b[63:0];
      3'b?1?:
        \28963  = b[127:64];
      3'b1??:
        \28963  = b[191:128];
      default:
        \28963  = a;
    endcase
  endfunction
  assign _313_ = \28963 (_312_, { _309_, _307_, _300_ }, { _310_, _308_, _301_ });
  assign _314_ = output_mode == 2'h3;
  assign _315_ = ~ ml;
  assign _316_ = rs & _315_;
  assign _317_ = | _316_;
  assign _318_ = _314_ ? _317_ : 1'h0;
  assign repl32 = { _001_, rs[31:0] };
  assign rot_count = _003_;
  assign rot1 = _007_;
  assign rot2 = _011_;
  assign rot = _015_;
  assign sh = { _017_, shift[5:0] };
  assign mb = _022_;
  assign me = _028_;
  assign mr = { _030_, _032_, _034_, _036_, _038_, _040_, _042_, _044_, _046_, _048_, _050_, _052_, _054_, _056_, _058_, _060_, _062_, _064_, _066_, _068_, _070_, _072_, _074_, _076_, _078_, _080_, _082_, _084_, _086_, _088_, _090_, _092_, _094_, _096_, _098_, _100_, _102_, _104_, _106_, _108_, _110_, _112_, _114_, _116_, _118_, _120_, _122_, _124_, _126_, _128_, _130_, _132_, _134_, _136_, _138_, _140_, _142_, _144_, _146_, _148_, _150_, _152_, _154_, _156_ };
  assign ml = _286_;
  assign output_mode = _294_;
  assign result = _313_;
  assign carry_out = _318_;
endmodule