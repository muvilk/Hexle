/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_9 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn_signal,
    output reg [15:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [16-1:0] M_rca_s;
  wire [1-1:0] M_rca_co;
  reg [16-1:0] M_rca_a;
  reg [16-1:0] M_rca_b;
  reg [1-1:0] M_rca_ci;
  sixteenbit_rca_23 rca (
    .a(M_rca_a),
    .b(M_rca_b),
    .ci(M_rca_ci),
    .s(M_rca_s),
    .co(M_rca_co)
  );
  
  always @* begin
    M_rca_a = a;
    M_rca_b = b ^ {5'h10{alufn_signal[0+0-:1]}};
    M_rca_ci = alufn_signal[0+0-:1];
    out = M_rca_s;
    v = (a[15+0-:1] & ((b[15+0-:1] ^ alufn_signal[0+0-:1])) & ~M_rca_s[15+0-:1]) | (~a[15+0-:1] & ~(b[15+0-:1] ^ alufn_signal[0+0-:1]) & M_rca_s[15+0-:1]);
    z = ((~((|M_rca_s))) == 1'h1) ? 1'h1 : 1'h0;
    n = (M_rca_s[15+0-:1] == 1'h1) ? 1'h1 : 1'h0;
  end
endmodule
