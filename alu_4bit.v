// ============================================================
// Project   : 4-bit Arithmetic Logic Unit (ALU)
// Author    : Yashganesh Bachhav
// College   : LGNSCOE, Nashik (SPPU)
// Domain    : VLSI Design | Verilog HDL
// Tool      : EDA Playground / ModelSim / Xilinx Vivado
// ============================================================

module alu_4bit (
    input  [3:0] A,       // Operand A
    input  [3:0] B,       // Operand B
    input  [2:0] sel,     // Operation select
    output reg [7:0] result, // Result (8-bit to handle multiply)
    output reg zero,      // Zero flag
    output reg carry      // Carry flag
);

    always @(*) begin
        carry = 0;
        case (sel)
            3'b000: {carry, result[3:0]} = A + B;        // Addition
            3'b001: {carry, result[3:0]} = A - B;        // Subtraction
            3'b010: result = A * B;                       // Multiplication
            3'b011: result[3:0] = A & B;                 // AND
            3'b100: result[3:0] = A | B;                 // OR
            3'b101: result[3:0] = A ^ B;                 // XOR
            3'b110: result[3:0] = ~A;                    // NOT A
            3'b111: result[3:0] = A >> 1;                // Right Shift A
            default: result = 8'b0;
        endcase
        zero = (result == 8'b0) ? 1 : 0;
    end

endmodule
