.global _start
_start:
    LDR R0, =list       @ R0 is the address of the first element (4)
    LDR R1, [R0]        @ R1 = 4
    
    LDR R2, [R0, #4]    @ R2 is the address of (R0 + 4), i.e., the second element (5)

    ADD R3, R1, R2      @ R3 = 4 + 5 = 9 (Combining two data points)
