*Freeze file

RV32I subset:
- Arithmetic: Add, Sub, And, Or, Xor
- Immediate: Addi
- Memory: Lw, Sw
- Control: Beq, Bne, Jal, Jalr
- Upper imm: Lui, Auipa

As it's transformed by a mips-based single cycle processor, i only implemented the instructions in risc-v that has the instruction similiar with it in mips 