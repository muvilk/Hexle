/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mux_2_25 (
    input s0,
    input g0,
    input g1,
    output reg out
  );
  
  
  
  always @* begin
    
    case (s0)
      1'h0: begin
        out = g0;
      end
      1'h1: begin
        out = g1;
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule
