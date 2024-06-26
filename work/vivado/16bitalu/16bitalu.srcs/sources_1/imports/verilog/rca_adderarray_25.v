/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rca_adderarray_25 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [(4'hf+0)*16-1:0] M_adderarray_s;
  wire [(4'hf+0)-1:0] M_adderarray_co;
  reg [(4'hf+0)*16-1:0] M_adderarray_a;
  reg [(4'hf+0)*16-1:0] M_adderarray_b;
  reg [(4'hf+0)-1:0] M_adderarray_ci;
  
  genvar GEN_adderarray0;
  generate
  for (GEN_adderarray0=0;GEN_adderarray0<4'hf;GEN_adderarray0=GEN_adderarray0+1) begin: adderarray_gen_0
    sixteenbit_rca_23 adderarray (
      .a(M_adderarray_a[GEN_adderarray0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .b(M_adderarray_b[GEN_adderarray0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .ci(M_adderarray_ci[GEN_adderarray0*(1)+(1)-1-:(1)]),
      .s(M_adderarray_s[GEN_adderarray0*(5'h10)+(5'h10)-1-:(5'h10)]),
      .co(M_adderarray_co[GEN_adderarray0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  integer i;
  
  always @* begin
    M_adderarray_a[0+15-:16] = {{a[0+14-:15]} & {4'hf{b[1+0-:1]}}, 1'h0};
    M_adderarray_a[16+15-:16] = {{a[0+13-:14]} & {4'he{b[2+0-:1]}}, 2'h0};
    M_adderarray_a[32+15-:16] = {{a[0+12-:13]} & {4'hd{b[3+0-:1]}}, 3'h0};
    M_adderarray_a[48+15-:16] = {{a[0+11-:12]} & {4'hc{b[4+0-:1]}}, 4'h0};
    M_adderarray_a[64+15-:16] = {{a[0+10-:11]} & {4'hb{b[5+0-:1]}}, 5'h00};
    M_adderarray_a[80+15-:16] = {{a[0+9-:10]} & {4'ha{b[6+0-:1]}}, 6'h00};
    M_adderarray_a[96+15-:16] = {{a[0+8-:9]} & {4'h9{b[7+0-:1]}}, 7'h00};
    M_adderarray_a[112+15-:16] = {{a[0+7-:8]} & {4'h8{b[8+0-:1]}}, 8'h00};
    M_adderarray_a[128+15-:16] = {{a[0+6-:7]} & {3'h7{b[9+0-:1]}}, 9'h000};
    M_adderarray_a[144+15-:16] = {{a[0+5-:6]} & {3'h6{b[10+0-:1]}}, 10'h000};
    M_adderarray_a[160+15-:16] = {{a[0+4-:5]} & {3'h5{b[11+0-:1]}}, 11'h000};
    M_adderarray_a[176+15-:16] = {{a[0+3-:4]} & {3'h4{b[12+0-:1]}}, 12'h000};
    M_adderarray_a[192+15-:16] = {{a[0+2-:3]} & {2'h3{b[13+0-:1]}}, 13'h0000};
    M_adderarray_a[208+15-:16] = {{a[0+1-:2]} & {2'h2{b[14+0-:1]}}, 14'h0000};
    M_adderarray_a[224+15-:16] = {a[0+0-:1] & b[15+0-:1], 15'h0000};
    M_adderarray_b[0+15-:16] = a & {5'h10{b[0+0-:1]}};
    for (i = 1'h1; i < 4'hf; i = i + 1) begin
      M_adderarray_b[(i)*16+15-:16] = M_adderarray_s[(i - 1'h1)*16+15-:16];
    end
    M_adderarray_ci = 16'h0000;
    out = M_adderarray_s[224+15-:16];
  end
endmodule
