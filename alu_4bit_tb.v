// ============================================================
// Testbench : 4-bit ALU
// ============================================================

`timescale 1ns/1ps

module alu_4bit_tb;

    reg  [3:0] A, B;
    reg  [2:0] sel;
    wire [7:0] result;
    wire zero, carry;

    // Instantiate DUT
    alu_4bit uut (
        .A(A), .B(B), .sel(sel),
        .result(result), .zero(zero), .carry(carry)
    );

    initial begin
        $display("==============================================");
        $display(" 4-bit ALU Simulation - Yashganesh Bachhav");
        $display("==============================================");
        $display("  A    |  B   | SEL | Result | Zero | Carry");
        $display("-------|------|-----|--------|------|------");

        A=4'b0101; B=4'b0011; sel=3'b000; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // ADD: 5+3=8", A, B, sel, result, zero, carry);

        A=4'b1001; B=4'b0100; sel=3'b001; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // SUB: 9-4=5", A, B, sel, result, zero, carry);

        A=4'b0011; B=4'b0011; sel=3'b010; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // MUL: 3*3=9", A, B, sel, result, zero, carry);

        A=4'b1100; B=4'b1010; sel=3'b011; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // AND", A, B, sel, result, zero, carry);

        A=4'b1100; B=4'b1010; sel=3'b100; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // OR", A, B, sel, result, zero, carry);

        A=4'b1100; B=4'b1010; sel=3'b101; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // XOR", A, B, sel, result, zero, carry);

        A=4'b1010; B=4'b0000; sel=3'b110; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // NOT A", A, B, sel, result, zero, carry);

        A=4'b1000; B=4'b0000; sel=3'b111; #10;
        $display("  %b | %b | %b  |  %08b |  %b   |  %b   // RSH A", A, B, sel, result, zero, carry);

        $display("==============================================");
        $display(" Simulation Complete!");
        $display("==============================================");
        $finish;
    end

endmodule
