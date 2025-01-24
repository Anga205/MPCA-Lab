; Write an ALP using ARM7TDMI  to multiplication of 32X50 without using mul instructions.
; (Hint: barrel shit instructions.)
; (Note :any number can be considered as multiplier)

.TEXT
MOV R1, #32
MOV R2, #50
MOV R3, #0

LOOP:
    CMP R2, #0
    BEQ END
    ADD R3, R3, R1
    SUB R2, R2, #1
    B LOOP

END:
    SWI 0x011