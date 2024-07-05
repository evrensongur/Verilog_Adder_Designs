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
  assign {cout_o,sum_o}=a_i + b_i + cin_i;
endmodule

module full_adder_tb;
 reg a_i;
 reg b_i;
 reg cin_i;
 wire sum_o;
 wire cout_o;
 full_adder uut (
    .a_i(a_i), 
    .b_i(b_i), 
    .cin_i(cin_i), 
    .sum_o(sum_o), 
    .cout_o(cout_o)
  );
  
  initial begin 
  a_i=1'b0;b_i=1'b0;cin_i=1'b0;
  #10;
  a_i=1'b0;b_i=1'b0;cin_i=1'b1;
  #10;
  a_i=1'b0;b_i=1'b1;cin_i=1'b0;
  #10;
  a_i=1'b0;b_i=1'b1;cin_i=1'b1;
  #10;
  a_i=1'b1;b_i=1'b0;cin_i=1'b0;
  #10;
  a_i=1'b1;b_i=1'b0;cin_i=1'b1;
  #10;
  a_i=1'b1;b_i=1'b1;cin_i=1'b0;
  #10;
  a_i=1'b1;b_i=1'b1;cin_i=1'b1;
  #10;
  $finish;
  
  
  
  end
endmodule

