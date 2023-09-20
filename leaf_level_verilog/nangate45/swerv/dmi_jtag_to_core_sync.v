module dmi_jtag_to_core_sync
(
  rd_en,
  wr_en,
  rst_n,
  clk,
  reg_en,
  reg_wr_en
);

  input rd_en;
  input wr_en;
  input rst_n;
  input clk;
  output reg_en;
  output reg_wr_en;
  wire reg_en,reg_wr_en,c_rd_en,N0,N1,N2;
  reg [2:0] wren,rden;

  always @(posedge clk or posedge N0) begin
    if(N0) begin
      wren[2] <= 1'b0;
    end else if(1'b1) begin
      wren[2] <= wren[1];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      wren[1] <= 1'b0;
    end else if(1'b1) begin
      wren[1] <= wren[0];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      wren[0] <= 1'b0;
    end else if(1'b1) begin
      wren[0] <= wr_en;
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      rden[2] <= 1'b0;
    end else if(1'b1) begin
      rden[2] <= rden[1];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      rden[1] <= 1'b0;
    end else if(1'b1) begin
      rden[1] <= rden[0];
    end
  end


  always @(posedge clk or posedge N0) begin
    if(N0) begin
      rden[0] <= 1'b0;
    end else if(1'b1) begin
      rden[0] <= rd_en;
    end
  end

  assign reg_en = reg_wr_en | c_rd_en;
  assign N0 = ~rst_n;
  assign c_rd_en = rden[1] & N1;
  assign N1 = ~rden[2];
  assign reg_wr_en = wren[1] & N2;
  assign N2 = ~wren[2];

endmodule