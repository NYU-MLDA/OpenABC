module controller
(
  clk_i,
  rst_ni,
  set_pc_commit_o,
  flush_if_o,
  flush_unissued_instr_o,
  flush_id_o,
  flush_ex_o,
  flush_icache_o,
  flush_dcache_o,
  flush_dcache_ack_i,
  flush_tlb_o,
  halt_csr_i,
  halt_o,
  eret_i,
  ex_valid_i,
  set_debug_pc_i,
  resolved_branch_i,
  flush_csr_i,
  fence_i_i,
  fence_i,
  sfence_vma_i,
  flush_commit_i
);

  input [133:0] resolved_branch_i;
  input clk_i;
  input rst_ni;
  input flush_dcache_ack_i;
  input halt_csr_i;
  input eret_i;
  input ex_valid_i;
  input set_debug_pc_i;
  input flush_csr_i;
  input fence_i_i;
  input fence_i;
  input sfence_vma_i;
  input flush_commit_i;
  output set_pc_commit_o;
  output flush_if_o;
  output flush_unissued_instr_o;
  output flush_id_o;
  output flush_ex_o;
  output flush_icache_o;
  output flush_dcache_o;
  output flush_tlb_o;
  output halt_o;
  wire set_pc_commit_o,flush_if_o,flush_unissued_instr_o,flush_id_o,flush_ex_o,
  flush_icache_o,flush_tlb_o,halt_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,flush_if_o,flush_ex_o,
  fence_active_d,flush_dcache,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  reg flush_dcache_o,fence_active_q;
  assign flush_unissued_instr_o = flush_if_o;
  assign flush_id_o = flush_ex_o;

  always @(posedge clk_i or posedge N31) begin
    if(N31) begin
      flush_dcache_o <= 1'b0;
    end else if(1'b1) begin
      flush_dcache_o <= flush_dcache;
    end 
  end


  always @(posedge clk_i or posedge N31) begin
    if(N31) begin
      fence_active_q <= 1'b0;
    end else if(1'b1) begin
      fence_active_q <= fence_active_d;
    end 
  end

  assign N11 = (N0)? 1'b1 : 
               (N1)? resolved_branch_i[5] : 1'b0;
  assign N0 = fence_i;
  assign N1 = N10;
  assign N12 = (N0)? 1'b1 : 
               (N1)? fence_active_q : 1'b0;
  assign N14 = (N2)? 1'b1 : 
               (N3)? N11 : 1'b0;
  assign N2 = flush_icache_o;
  assign N3 = N13;
  assign N15 = (N2)? 1'b1 : 
               (N3)? fence_i : 1'b0;
  assign N16 = (N2)? 1'b1 : 
               (N3)? N12 : 1'b0;
  assign fence_active_d = (N4)? 1'b0 : 
                          (N20)? N16 : 
                          (N5)? N16 : 1'b0;
  assign N4 = N17;
  assign N5 = 1'b0;
  assign flush_dcache = (N4)? N15 : 
                        (N30)? 1'b1 : 
                        (N19)? N15 : 1'b0;
  assign N22 = (N6)? 1'b1 : 
               (N7)? N14 : 1'b0;
  assign N6 = flush_tlb_o;
  assign N7 = N21;
  assign N23 = (N6)? 1'b1 : 
               (N7)? N15 : 1'b0;
  assign N26 = (N8)? 1'b1 : 
               (N25)? N22 : 1'b0;
  assign N8 = N24;
  assign N27 = (N8)? 1'b1 : 
               (N25)? N23 : 1'b0;
  assign set_pc_commit_o = (N9)? 1'b0 : 
                           (N29)? N27 : 1'b0;
  assign N9 = N28;
  assign flush_if_o = (N9)? 1'b1 : 
                      (N29)? N26 : 1'b0;
  assign flush_ex_o = (N9)? 1'b1 : 
                      (N29)? N27 : 1'b0;
  assign N10 = ~fence_i;
  assign N13 = ~fence_i_i;
  assign flush_icache_o = fence_i_i;
  assign N17 = flush_dcache_ack_i & fence_active_q;
  assign N18 = fence_active_q | N17;
  assign N19 = ~N18;
  assign N20 = ~N17;
  assign N21 = ~sfence_vma_i;
  assign flush_tlb_o = sfence_vma_i;
  assign N24 = flush_csr_i | flush_commit_i;
  assign N25 = ~N24;
  assign N28 = N32 | set_debug_pc_i;
  assign N32 = ex_valid_i | eret_i;
  assign N29 = ~N28;
  assign N30 = fence_active_q & N20;
  assign halt_o = halt_csr_i | fence_active_q;
  assign N31 = ~rst_ni;

endmodule