// a. Dataflow Level
  module half_adder_dataflow (S, C, A, B);
   input A, B;
   output S, C;
 
   assign S = A ^ B; // XOR for sum
   assign C = A & B; // AND for carry
  endmodule
 
  // b. Behavioral Level
 
//   module half_adder_behaviora l (S, C, A, B);
//    input A, B;
//   output reg S, C;
 
//    always @(*) begin
//      S = A ^ B; // XOR for sum
//      C = A & B; // AND for carry
//    end
//   endmodule
 
//   // c. Gate-Level
 
//   module half_adder_gate (S, C, A, B);
//    input A, B;
//    output S, C;
 
//    // Instantiating gates
//    xor u1 (S, A, B); // XOR gate for sum
//    and u2 (C, A, B); // AND gate for carry
//   endmodule