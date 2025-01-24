; Write an ALP using ARM7TDMI to add only negative numbers stored in 
; memory location for a given set of numbers (having both positive and)
; negative numbers) and store the sum of negative numbers in a memory 
; location.

.DATA
    ARRAY:.WORD 1,2,3,4,-1,5,-2,-3,6,0
    negsum:.WORD

.TEXT

    LDR R0, = ARRAY
    LDR R1,= negsum
    MOV R6, #10
    MOV R5, #0

    LOOP3:
        LDR R3, [R0]
        CMP R3, #0
        BMI LOOP1
        B LOOP2

    LOOP1:
        ADD R5, R5, R3
    LOOP2:
        ADD R0, R0, #4
        SUBS R6, R6, #1
        BNE LOOP3
        STR R5, [R1]

SWI 0X011