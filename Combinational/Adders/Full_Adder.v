//Design for Half adder
module Half_adder (
  input a,
  input b,
  input cin,
  output reg sum,
  output reg carry
);

  always @(*) begin
    sum = a ^ b ^ cin;
    carry = (a & b) + cin & (a ^ b);;
  end
endmodule


//TestBench for Half adder
module Half_adder_tb;
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire carry;

  Half_adder dut(a,b,.cin,sum,carry);

  initial begin
    a = 0; b = 0;
    cin = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    cin = 1;
    #10 a = 1; b = 1;
  end 
endmodule
