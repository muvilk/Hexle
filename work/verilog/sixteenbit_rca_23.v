/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteenbit_rca_23 (
    input [15:0] a,
    input [15:0] b,
    input ci,
    output reg [15:0] s,
    output reg co
  );
  
  
  
  wire [(5'h10+0)-1:0] M_fa_s;
  wire [(5'h10+0)-1:0] M_fa_co;
  reg [(5'h10+0)-1:0] M_fa_a;
  reg [(5'h10+0)-1:0] M_fa_b;
  reg [(5'h10+0)-1:0] M_fa_ci;
  
  genvar GEN_fa0;
  generate
  for (GEN_fa0=0;GEN_fa0<5'h10;GEN_fa0=GEN_fa0+1) begin: fa_gen_0
    full_adder_27 fa (
      .a(M_fa_a[GEN_fa0*(1)+(1)-1-:(1)]),
      .b(M_fa_b[GEN_fa0*(1)+(1)-1-:(1)]),
      .ci(M_fa_ci[GEN_fa0*(1)+(1)-1-:(1)]),
      .s(M_fa_s[GEN_fa0*(1)+(1)-1-:(1)]),
      .co(M_fa_co[GEN_fa0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_fa_a = a;
    M_fa_b = b;
    M_fa_ci = ci;
    M_fa_ci[1+14-:15] = M_fa_co[0+14-:15];
    s = M_fa_s;
    co = M_fa_co[15+0-:1];
  end
endmodule
