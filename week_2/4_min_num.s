; Write an ALP using ARM7TDMI to find the smallest number from a given set
; of numbers.

.data
A: .word 10,50,41,55,30,20,11,5,100,77
SMALLEST: .word

.text
    LDR R0,=A
    LDR R1,=SMALLEST
    MOV R2,#10
    MOV R3,#0
    LDR R4,[R0]
    MOV R3,R4
LOOP1: ADD R0,R0,#4
    LDR R4,[R0]
    CMP R3,R4
    MOVGT R3,R4
    SUBS R2,R2,#1
    BNE LOOP1
  STR R3,[R1]
SWI 0X011
