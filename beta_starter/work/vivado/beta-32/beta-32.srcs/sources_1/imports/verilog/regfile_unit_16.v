/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module regfile_unit_16 (
    input clk,
    input rst,
    input [4:0] ra,
    input [4:0] rb,
    input [4:0] rc,
    input wasel,
    input ra2sel,
    input werf,
    input [31:0] wdsel_out,
    input slowclk,
    output reg z,
    output reg [31:0] reg_data_1,
    output reg [31:0] reg_data_2,
    output reg [31:0] mwd
  );
  
  
  
  wire [32-1:0] M_regfile_reg_data_1;
  wire [32-1:0] M_regfile_reg_data_2;
  reg [5-1:0] M_regfile_read_address_1;
  reg [5-1:0] M_regfile_read_address_2;
  reg [5-1:0] M_regfile_write_address;
  reg [32-1:0] M_regfile_write_data;
  reg [1-1:0] M_regfile_write_enable;
  regfile_memory_27 regfile (
    .clk(clk),
    .rst(rst),
    .read_address_1(M_regfile_read_address_1),
    .read_address_2(M_regfile_read_address_2),
    .write_address(M_regfile_write_address),
    .write_data(M_regfile_write_data),
    .write_enable(M_regfile_write_enable),
    .reg_data_1(M_regfile_reg_data_1),
    .reg_data_2(M_regfile_reg_data_2)
  );
  
  reg [4:0] ra2sel_out;
  
  reg [4:0] wasel_out;
  
  always @* begin
    ra2sel_out = 1'h0;
    wasel_out = 1'h0;
    z = 1'h0;
    mwd = 1'h0;
    M_regfile_write_enable = 1'h0;
    if (slowclk) begin
      M_regfile_write_enable = werf;
    end
    
    case (ra2sel)
      1'h0: begin
        ra2sel_out = rb;
      end
      1'h1: begin
        ra2sel_out = rc;
      end
      default: begin
        ra2sel_out = rb;
      end
    endcase
    
    case (wasel)
      1'h0: begin
        wasel_out = rc;
      end
      1'h1: begin
        wasel_out = 5'h1e;
      end
      default: begin
        wasel_out = rc;
      end
    endcase
    M_regfile_read_address_2 = ra2sel_out;
    M_regfile_read_address_1 = ra;
    M_regfile_write_address = wasel_out;
    M_regfile_write_data = wdsel_out;
    z = ~(|M_regfile_reg_data_1);
    reg_data_1 = M_regfile_reg_data_1;
    reg_data_2 = M_regfile_reg_data_2;
    mwd = M_regfile_reg_data_2;
  end
endmodule
