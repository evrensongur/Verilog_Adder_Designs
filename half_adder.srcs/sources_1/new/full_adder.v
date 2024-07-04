`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 19:26:50
// Design Name: 
// Module Name: full_adder
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


module full_adder(
   input a_i,
   input b_i,
   input cin_i,
   output sum_o,
   output cout_o
    );
    wire ha1sum,ha1cout,ha2cout;
    //instantiation
  half_adder HA1(
  .a_i (a_i),
  .b_i (b_i),
  .sum_o (ha1sum),
  .cout_o (ha1cout)
  );
  half_adder HA2 (
  .a_i (ha1sum),
  .b_i (cin_i),
  .sum_o (sum_O),
  .cout_o (ha2cout)  
  );
  or G1 (cout_o,ha2cout,ha1cout);
endmodule
