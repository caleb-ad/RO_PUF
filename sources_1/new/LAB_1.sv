`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2022 09:57:49 AM
// Design Name: 
// Module Name: LAB_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LAB_1(
   input CLK,
   input BTNC,
   input [15:0] SWITCHES,
   output logic [15:0] LEDS,
   output [6:0] CATHODES,
   output [3:0] ANODES
   );
    
   logic [7:0] response;
   logic done;
   logic [15:0] display;
   logic [127:0] hash;
   logic [3:0] hash_switches;
   logic dec_en, hasher_en;
    
   RO_PUF my_ro_puf (
   .CLK         (CLK),
   .RESET       (BTNC),
   .CHALLENGE   (SWITCHES[7:0]),
   .RESPONSE    (response),
   .DONE        (done)
   );
   
   assign LEDS[7:0] = response;
   assign LEDS[14] = done; 
   
   sha128_simple hasher (
   .CLK      (CLK),
   .DATA_IN    ({SWITCHES[7:0], response}),
   .RESET      (0),
   .START      (done),
   .READY      (LEDS[15]),
   .DATA_OUT   (hash)
   );
   
   always_comb
   begin
   if (SWITCHES[15:12] == 4'b0) begin
      display = {SWITCHES[7:0], response};
   end
   else if (SWITCHES[15:12] > 8) display = 16'b0;
   else begin
      case(SWITCHES[15:12])
         1: display = hash[15:0];
         2: display = hash[31:16];
         3: display = hash[47:32];
         4: display = hash[63:48];
         5: display = hash[79:64];
         6: display = hash[95:80];
         7: display = hash[111:96];
         8: display = hash[127:112];
      endcase
   end
   end
 
   sseg_des dec (
   .COUNT        (display),
   .CLK          (CLK),
   .VALID        (done),
   .DISP_EN      (ANODES),
   .SEGMENTS     (CATHODES)
   ); 
   
endmodule