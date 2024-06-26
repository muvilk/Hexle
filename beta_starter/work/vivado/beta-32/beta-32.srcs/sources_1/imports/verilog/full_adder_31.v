/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module full_adder_31 (
    input a,
    input b,
    input ci,
    output reg s,
    output reg co
  );
  
  
  
  reg i;
  reg j;
  reg k;
  
  always @* begin
    s = a ^ b ^ ci;
    i = a & b;
    j = a & ci;
    k = b & ci;
    co = i | j | k;
  end
endmodule
