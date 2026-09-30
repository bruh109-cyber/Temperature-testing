# Temperature-testing

A 32-bit ARM assembly repository for testing hardware data processing, register operations, and memory addressing mechanics.

---

## Overview

This project demonstrates low-level memory access and register manipulation using ARM assembly (`GNU AS` syntax). It illustrates array-style offset addressing, loading values from literal pools into registers, and performing arithmetic data aggregation.

## Code Snippet

.global _start
_start:
    LDR R0, =list        @ R0 = address of 1st element
    LDR R1, [R0]         @ R1 = 1st value
    LDR R2, [R0, #4]     @ R2 = 2nd value (R0 + 4 bytes offset)
    ADD R3, R1, R2       @ R3 = combine data points
Features
Memory Addressing: Uses base register displacement addressing ([R0, #4]) to read sequential data elements from memory.

Register Operations: Uses LDR (Load Register) and ADD instructions to execute arithmetic operations directly on hardware registers.

GNU Assembler Compatible: Designed using standard GNU syntax (@ inline comments and .global directives).

Tech Stack & Toolchain
Architecture: ARM 32-bit (ARMv7 / AArch32)

Assembler: arm-none-eabi-as / GNU Assembler (gas)

Linker: arm-none-eabi-ld

Build & Execution
Assemble the source file:

Bash
arm-none-eabi-as -g "Temperature test.s" -o "Temperature test.o"
Link the object file:

Bash
arm-none-eabi-ld "Temperature test.o" -o temperature_test
Debug with GDB:

Bash
gdb-multiarch temperature_test
Repository Structure
Plaintext
├── Temperature test.s    # Main ARM assembly source file
└── README.md             # Project documentation
