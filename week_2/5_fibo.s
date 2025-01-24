; Write an ALP using ARM7TDMI to generate Fibonacci series of n numbers
; and store it in the memory location.


.DATA
    N: .WORD 10
    FIB: .SPACE 40

.TEXT
    LDR R0, =N
    LDR R1, [R0]
    LDR R2, =FIB

    MOV R3, #0
    MOV R4, #1

    STR R3, [R2], #4
    STR R4, [R2], #4

    SUBS R1, R1, #2
    BEQ END

LOOP:
    ADD R5, R3, R4
    STR R5, [R2], #4

    MOV R3, R4
    MOV R4, R5

    SUBS R1, R1, #1
    BNE LOOP

END:
    SWI 0x011
