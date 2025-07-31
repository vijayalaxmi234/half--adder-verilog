 `timescale 1ns/1ns
  `include "halfadder.v"
 
  module halfadder_tb;
 
  // module tb_half_adder_datafl ow
   reg A, B;
   wire S, C;
 
   // Instantiate the Half Adder module
   half_adder_dataflow uut (S, C, A, B);
 
   initial begin
     $display("Time\tA B | S C");
     $monitor("%g\t%b %b | %b %b", $time, A, B, S, C);
 
     // Test cases
     A = 0; B = 0; #10;
     A = 0; B = 1; #10;
     A = 1; B = 0; #10;
     A = 1; B = 1; #10;
 
     $finish;
   end
 
 
//   // module tb_half_adder_behavi oral
//    reg A, B;
//   wire S, C;
 
//    // Instantiate the Half Adder module
//    half_adder_behaviora l uut (S, C, A, B);
 
//    initial begin
 
// $display("Time\tA B | S C");
//      $monitor("%g\t%b %b | %b %b", $time, A, B, S, C);
 
//      // Test cases
//      A = 0; B = 0; #10;
//      A = 0; B = 1; #10;
//      A = 1; B = 0; #10;
//      A = 1; B = 1; #10;
 
//      $finish;
//    end
 
 
//   // module tb_half_adder_gate
//    reg A, B;
//    wire S, C;
 
//    // Instantiate the Half Adder module
//    half_adder_gate uut (S, C, A, B);
 
//    initial begin
//      $display("Time\tA B | S C");
//     $monitor("%g\t%b %b | %b %b", $time, A, B, S, C);
 
//      // Test cases
//      A = 0; B = 0; #10;
//      A = 0; B = 1; #10;
//      A = 1; B = 0; #10;
//      A = 1; B = 1; #10;
 
//      $finish;
//   end
  initial begin 
    #500 $dumpfile("halfadder.vcd");
    $dumpvars(0,halfadder_tb);
  end
  endmodule
  

