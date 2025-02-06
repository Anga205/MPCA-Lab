;1. Write an ALP using ARM7TDMI τo ing the remainder of a number. 

.DATA 
A: .word 10 
B: .word 3 

.TEXT 
	LDR R0, =A 
	LDR R1,=B 
	LDR R2, [R0] ;DIVIDENT 
	LDR R3, [R1] ;DIVISOR 
UP: SUB R4,R2,R3 
	CMP R4,#0 
	BGT DOWN 
	BEQ QUIT 
	ADDLT R4, R4,R3 ;REMAINDER IN R4 
	B QUIT 
DOWN:MOV R2,R4 
	B UP 
QUIT:SWI 0X011