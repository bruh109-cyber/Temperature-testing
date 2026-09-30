.global _start
_start:
    LDR R0, =list       @ R0 = address of 1st element (4)
    LDR R1, [R0]        @ R1 = 4

    LDR R2, [R0, #4]    @ R2 = address of (R0 + 4 bytes), which is the 2nd element (5)
    
    ADD R3, R1, R2      @ R3 = 4 + 5 = 9 (combining the two data points)
























