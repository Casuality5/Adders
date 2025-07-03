# Adders in Verilog

This repository contains Verilog implementations of:

- Half Adder
- Full Adder
- 4-bit Ripple Carry Adder

Each module is tested using a separate testbench file.

## Simulation Instructions

You can use Icarus Verilog or ModelSim.

Example using Icarus:
```bash
iverilog full_adder.v full_adder_tb.v -o full_adder
vvp full_adder
