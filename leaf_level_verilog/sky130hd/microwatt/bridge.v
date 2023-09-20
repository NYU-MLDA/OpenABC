module bridge(wb__dat_w, wb__dat_r, wb__sel, wb__cyc, wb__stb, wb__we, wb__ack, rst, clk, csr__addr, csr__r_stb, csr__w_stb, csr__w_data, csr__r_data, wb__adr);
  reg \$auto$verilog_backend.cc:2083:dump_module$1  = 0;
  wire \$1 ;
  wire \$11 ;
  wire \$13 ;
  wire \$15 ;
  wire \$17 ;
  wire \$3 ;
  wire \$5 ;
  wire \$7 ;
  wire \$9 ;
  input clk;
  wire clk;
  output csr__addr;
  wire csr__addr;
  input [31:0] csr__r_data;
  wire [31:0] csr__r_data;
  output csr__r_stb;
  reg csr__r_stb;
  output [31:0] csr__w_data;
  reg [31:0] csr__w_data;
  output csr__w_stb;
  reg csr__w_stb;
  reg cycle = 1'h0;
  reg \cycle$next ;
  input rst;
  wire rst;
  output wb__ack;
  reg wb__ack = 1'h0;
  reg \wb__ack$next ;
  input wb__adr;
  wire wb__adr;
  input wb__cyc;
  wire wb__cyc;
  output [31:0] wb__dat_r;
  reg [31:0] wb__dat_r = 32'd0;
  reg [31:0] \wb__dat_r$next ;
  input [31:0] wb__dat_w;
  wire [31:0] wb__dat_w;
  input wb__sel;
  wire wb__sel;
  input wb__stb;
  wire wb__stb;
  input wb__we;
  wire wb__we;
  assign \$9  = wb__cyc & wb__stb;
  assign \$11  = wb__sel & wb__we;
  assign \$13  = wb__cyc & wb__stb;
  assign \$15  = wb__cyc & wb__stb;
  assign \$17  = wb__cyc & wb__stb;
  always @(posedge clk)
    cycle <= \cycle$next ;
  assign \$1  = wb__cyc & wb__stb;
  always @(posedge clk)
    wb__dat_r <= \wb__dat_r$next ;
  always @(posedge clk)
    wb__ack <= \wb__ack$next ;
  assign \$3  = ~ wb__we;
  assign \$5  = wb__sel & \$3 ;
  assign \$7  = wb__cyc & wb__stb;
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    csr__r_stb = 1'h0;
    casez (\$1 )
      1'h1:
          casez (cycle)
            1'h0:
                csr__r_stb = \$5 ;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    csr__w_data = 32'd0;
    casez (\$7 )
      1'h1:
          casez (cycle)
            1'h0:
                csr__w_data = wb__dat_w;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    csr__w_stb = 1'h0;
    casez (\$9 )
      1'h1:
          casez (cycle)
            1'h0:
                csr__w_stb = \$11 ;
          endcase
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \cycle$next  = cycle;
    casez (\$13 )
      1'h1:
          casez (cycle)
            1'h0:
                \cycle$next  = 1'h1;
          endcase
    endcase
    casez (wb__ack)
      1'h1:
          \cycle$next  = 1'h0;
    endcase
    casez (rst)
      1'h1:
          \cycle$next  = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \wb__dat_r$next  = wb__dat_r;
    casez (\$15 )
      1'h1:
          (* full_case = 32'd1 *)
          casez (cycle)
            1'h0:
                /* empty */;
            default:
                \wb__dat_r$next  = csr__r_data;
          endcase
    endcase
    casez (rst)
      1'h1:
          \wb__dat_r$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2083:dump_module$1 ) begin end
    \wb__ack$next  = wb__ack;
    casez (\$17 )
      1'h1:
          (* full_case = 32'd1 *)
          casez (cycle)
            1'h0:
                /* empty */;
            default:
                \wb__ack$next  = 1'h1;
          endcase
    endcase
    casez (wb__ack)
      1'h1:
          \wb__ack$next  = 1'h0;
    endcase
    casez (rst)
      1'h1:
          \wb__ack$next  = 1'h0;
    endcase
  end
  assign csr__addr = wb__adr;
endmodule