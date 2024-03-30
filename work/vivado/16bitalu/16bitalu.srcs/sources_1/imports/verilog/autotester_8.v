/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module autotester_8 (
    output reg [15:0] alu_a,
    output reg [15:0] alu_b,
    output reg [15:0] alu_output,
    output reg [5:0] alu_alufn,
    input clk,
    input rst
  );
  
  
  
  localparam Z_state = 6'd0;
  localparam I_state = 6'd1;
  localparam II_state = 6'd2;
  localparam III_state = 6'd3;
  localparam IV_state = 6'd4;
  localparam V_state = 6'd5;
  localparam VI_state = 6'd6;
  localparam VII_state = 6'd7;
  localparam VIII_state = 6'd8;
  localparam IX_state = 6'd9;
  localparam X_state = 6'd10;
  localparam XI_state = 6'd11;
  localparam XII_state = 6'd12;
  localparam XIII_state = 6'd13;
  localparam XIV_state = 6'd14;
  localparam XV_state = 6'd15;
  localparam XVI_state = 6'd16;
  localparam XVII_state = 6'd17;
  localparam XVIII_state = 6'd18;
  localparam XIX_state = 6'd19;
  localparam XX_state = 6'd20;
  localparam XXI_state = 6'd21;
  localparam XXII_state = 6'd22;
  localparam XXIII_state = 6'd23;
  localparam XXIV_state = 6'd24;
  localparam XXV_state = 6'd25;
  localparam XXVI_state = 6'd26;
  localparam XXVII_state = 6'd27;
  localparam XXVIII_state = 6'd28;
  localparam XXIX_state = 6'd29;
  localparam XXX_state = 6'd30;
  localparam XXXI_state = 6'd31;
  localparam XXXII_state = 6'd32;
  localparam XXXIII_state = 6'd33;
  localparam XXXIV_state = 6'd34;
  localparam XXXV_state = 6'd35;
  localparam XXXVI_state = 6'd36;
  localparam XXXVII_state = 6'd37;
  localparam XXXVIII_state = 6'd38;
  localparam XXXIX_state = 6'd39;
  localparam XXXX_state = 6'd40;
  localparam XXXXI_state = 6'd41;
  localparam XXXXII_state = 6'd42;
  
  reg [5:0] M_state_d, M_state_q = Z_state;
  reg [5:0] M_address_d, M_address_q = 1'h0;
  
  wire [16-1:0] M_rom_auto_ans;
  wire [16-1:0] M_rom_auto_a;
  wire [16-1:0] M_rom_auto_b;
  wire [6-1:0] M_rom_auto_alufn;
  reg [6-1:0] M_rom_test;
  autotester_rom_22 rom (
    .test(M_rom_test),
    .auto_ans(M_rom_auto_ans),
    .auto_a(M_rom_auto_a),
    .auto_b(M_rom_auto_b),
    .auto_alufn(M_rom_auto_alufn)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_address_d = M_address_q;
    
    M_rom_test = M_address_q;
    alu_a = M_rom_auto_a;
    alu_b = M_rom_auto_b;
    alu_output = M_rom_auto_ans;
    alu_alufn = M_rom_auto_alufn;
    
    case (M_state_q)
      Z_state: begin
        M_address_d = 6'h00;
        M_state_d = I_state;
      end
      I_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = II_state;
      end
      II_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = III_state;
      end
      III_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = IV_state;
      end
      IV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = V_state;
      end
      V_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = VI_state;
      end
      VI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = VII_state;
      end
      VII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = VIII_state;
      end
      VIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = IX_state;
      end
      IX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = X_state;
      end
      X_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XI_state;
      end
      XI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XII_state;
      end
      XII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XIII_state;
      end
      XIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XIV_state;
      end
      XIV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XV_state;
      end
      XV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XVI_state;
      end
      XVI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XVII_state;
      end
      XVII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XVIII_state;
      end
      XVIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XIX_state;
      end
      XIX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XX_state;
      end
      XX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXI_state;
      end
      XXI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXII_state;
      end
      XXII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXIII_state;
      end
      XXIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXIV_state;
      end
      XXIV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXV_state;
      end
      XXV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXVI_state;
      end
      XXVI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXVII_state;
      end
      XXVII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXVIII_state;
      end
      XXVIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXIX_state;
      end
      XXIX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXX_state;
      end
      XXX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXI_state;
      end
      XXXI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXII_state;
      end
      XXXII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXIII_state;
      end
      XXXIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXIV_state;
      end
      XXXIV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXV_state;
      end
      XXXV_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXVI_state;
      end
      XXXVI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXVII_state;
      end
      XXXVII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXVIII_state;
      end
      XXXVIII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXIX_state;
      end
      XXXIX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXX_state;
      end
      XXXX_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXXI_state;
      end
      XXXXI_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = XXXXII_state;
      end
      XXXXII_state: begin
        M_address_d = M_address_q + 6'h01;
        M_state_d = Z_state;
      end
      default: begin
        M_address_d = 6'h00;
        M_state_d = Z_state;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_address_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_address_q <= M_address_d;
      M_state_q <= M_state_d;
    end
  end
  
endmodule