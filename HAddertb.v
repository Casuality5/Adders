`timescale 1ns/1ns
`include "HAdder.v"

module HAddertb;

reg a, b;
wire sum, carry;

HAdder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin

$dumpfile("HAddertb.vcd");
$dumpvars(0, HAddertb);

a=0; b=0; #20;
a=0; b=1; #20;
a=1; b=0; #20;
a=1; b=1; #20;
$finish;
end
endmodule