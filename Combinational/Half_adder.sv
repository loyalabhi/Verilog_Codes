//Design for Half adder
module Half_adder (
  input a,
  input b,
  output sum,
  output carry
);

  always @(*) begin
    sum = a ^ b;
    carry = a & b;
  end
endmodule


//TestBench for Half adder
module Half_adder_tb;
  reg a;
  reg b;
  wire sum;
  wire carry;

  Half_adder dut(a,b,sum,carry);

  initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
  end 
endmodule
