/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module control_unit_14 (
    input clk,
    input irq,
    input z,
    input rst,
    input [5:0] opcode,
    input slowclk,
    input ia31,
    output reg [2:0] pcsel,
    output reg wasel,
    output reg asel,
    output reg ra2sel,
    output reg bsel,
    output reg [5:0] alufn,
    output reg [1:0] wdsel,
    output reg werf,
    output reg wr
  );
  
  
  
  localparam CU_ROM = 1088'h7001018d80c2c06067001015980bcc0586700101dd80eac0736700138008082c04067001008d8042c020670010059803cc0186700100dd806ac0336700138008002c000608d5046882344e00248d1380081802040a700138009c004e002700138009c004e002700138009c004e002700138009c004e002700138009c004e002700138009c004e002;
  
  reg M_irq_sampler_d, M_irq_sampler_q = 1'h0;
  
  always @* begin
    M_irq_sampler_d = M_irq_sampler_q;
    
    if (~M_irq_sampler_q) begin
      M_irq_sampler_d = irq;
    end
    pcsel = CU_ROM[(opcode)*17+14+2-:3];
    wasel = CU_ROM[(opcode)*17+13+0-:1];
    asel = CU_ROM[(opcode)*17+12+0-:1];
    ra2sel = CU_ROM[(opcode)*17+11+0-:1];
    bsel = CU_ROM[(opcode)*17+10+0-:1];
    alufn = CU_ROM[(opcode)*17+4+5-:6];
    wdsel = CU_ROM[(opcode)*17+2+1-:2];
    werf = CU_ROM[(opcode)*17+1+0-:1];
    wr = CU_ROM[(opcode)*17+0+0-:1];
    
    case (opcode)
      6'h1d: begin
        
        case (z)
          1'h0: begin
            pcsel = 3'h0;
          end
          1'h1: begin
            pcsel = 3'h1;
          end
        endcase
      end
      6'h1e: begin
        
        case (z)
          1'h0: begin
            pcsel = 3'h1;
          end
          1'h1: begin
            pcsel = 3'h0;
          end
        endcase
      end
    endcase
    if (M_irq_sampler_q & slowclk & ~ia31) begin
      pcsel = 3'h4;
      wasel = 1'h1;
      werf = 1'h1;
      wdsel = 2'h0;
      wr = 1'h0;
      M_irq_sampler_d = 1'h0;
    end
    if (rst) begin
      wr = 1'h0;
    end
  end
  
  always @(posedge clk) begin
    M_irq_sampler_q <= M_irq_sampler_d;
  end
  
endmodule
