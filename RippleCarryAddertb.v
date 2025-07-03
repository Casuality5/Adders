`timescale 1ns/1ns
`include "RippleCarryAdder.v"

module RippleCarryAddertb;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    RippleCarryAdder utt(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        $dumpfile("RippleCarryAdder.vcd");
        $dumpvars(0, RippleCarryAddertb);

        a=4'd0; b=4'd0; cin=0; #10;
        a=4'd1; b=4'd1; cin=0; #10;
        a=4'd2; b=4'd2; cin=0; #10;
        a=4'd3; b=4'd3; cin=0; #10;
        a=4'd4; b=4'd4; cin=0; #10;
        a=4'd5; b=4'd5; cin=1; #10;
        a=4'd6; b=4'd6; cin=1; #10;
        a=4'd7; b=4'd7; cin=1; #10;
        a=4'd8; b=4'd8; cin=1; #10;
        a=4'd8; b=4'd9; cin=1; #10;
        $finish;
        end
        endmodule