# 4-bit Arithmetic Logic Unit (ALU) — Verilog HDL

## Overview
A fully functional 4-bit ALU designed using Verilog HDL. The ALU supports 8 operations selected via a 3-bit control signal. Designed and simulated as part of the VLSI internship at CODTECH IT Solutions.

## Operations Table

| SEL | Operation      | Description         |
|-----|---------------|---------------------|
| 000 | Addition       | A + B               |
| 001 | Subtraction    | A - B               |
| 010 | Multiplication | A × B               |
| 011 | AND            | A & B (bitwise)     |
| 100 | OR             | A \| B (bitwise)   |
| 101 | XOR            | A ^ B (bitwise)     |
| 110 | NOT            | ~A (bitwise)        |
| 111 | Right Shift    | A >> 1              |

## Files
| File | Description |
|------|-------------|
| `alu_4bit.v` | RTL Design (DUT) |
| `alu_4bit_tb.v` | Testbench with all 8 operations |

## Simulation Output (Expected)
```
==============================================
 4-bit ALU Simulation - Yashganesh Bachhav
==============================================
  A    |  B   | SEL | Result | Zero | Carry
-------|------|-----|--------|------|------
  0101 | 0011 | 000 |  00001000 |  0   |  0   // ADD: 5+3=8
  1001 | 0100 | 001 |  00000101 |  0   |  0   // SUB: 9-4=5
  0011 | 0011 | 010 |  00001001 |  0   |  0   // MUL: 3*3=9
  1100 | 1010 | 011 |  00001000 |  0   |  0   // AND
  1100 | 1010 | 100 |  00001110 |  0   |  0   // OR
  1100 | 1010 | 101 |  00000110 |  0   |  0   // XOR
  1010 | 0000 | 110 |  00000101 |  0   |  0   // NOT A
  1000 | 0000 | 111 |  00000100 |  0   |  0   // RSH A
==============================================
 Simulation Complete!
==============================================
```

## How to Run

### EDA Playground (Recommended — Free, No Install)
1. Go to [https://www.edaplayground.com](https://www.edaplayground.com)
2. Select **Icarus Verilog 0.9.7** as the simulator
3. Paste `alu_4bit.v` in the **Design** tab
4. Paste `alu_4bit_tb.v` in the **Testbench** tab
5. Check **Open EPWave after run** → Click **Run**

### ModelSim
```bash
vlog alu_4bit.v alu_4bit_tb.v
vsim alu_4bit_tb
run -all
```

### Xilinx Vivado
- Add both files as sources → Set `alu_4bit_tb` as top for simulation → Run Behavioral Simulation

## Author
**Yash Ganesh Bachhav**  
TE Electronics & Telecommunication Engineering  
LGNSCOE, Nashik | SPPU  
VLSI Internship — CODTECH IT Solutions (Jan–Feb 2025)
