module FAdder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);
    wire sum1, carry1, carry2;

    assign sum1= a ^ b;
    assign carry1 = a & b;

    assign sum =sum1 ^ cin;
    assign carry2 =sum1 & cin;

    assign cout =carry1 | carry2;

endmodule
