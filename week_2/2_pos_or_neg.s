; Write an ALP using ARM7TDMI to Classify the given set of numbers as
; positive OR negative and also store them in different memory lacations.

.DATA
A: .WORD 1,2,3,4,-1,5,-2,-3,6,0
POS: .WORD 0,0,0,0,0,0,0,0,0,0
NEG: .WORD 0,0,0,0,0,0,0,0,0,0

.TEXT
LDR R0,=A
LDR R1,=POS
LDR R2,=NEG

MOV R4,#10;  COUNT

LOOP1: CMP R4,#0
    BEQ EXIT
    LDR R8,[R0]
    CMP R8,#0
    BPL POSNO

    STR R8,[R2]
    ADD R2,R2,#4
    B NEXT
POSNO: STR R8,[R1]
    ADD R1,R1,#4
NEXT: ADD R0,R0,#4
    SUB R4,R4,#1
    B LOOP1
EXIT: SWI 0X011