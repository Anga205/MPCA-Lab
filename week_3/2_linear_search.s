;Q2. Write an ALP using ARM7TDMI to search for an element in an array of 16 bit each using Linear search technique.

.DATA
A:.hword 1,2,3,4,5,6,7,8,9 
.TEXT 
LDR R0, =A 
MOV R1,#10	;SEARCH ELEMENT 
MOV R2,#0	; FLAG REGISTER. Contains 1, IF FOUND. Else 0, NOT FOUND. 
MOV R3,#10 
LOOP1: LDRH R4, [R0] 
	CMP R4,R1 
	BEQ LOOP2 
	ADD R0,R0,#2 
	SUB R3,R3,#1 
	CMP R3,#0 
	BNE LOOP1 
	SWI 0X11 
LOOP2: 
	MOV R2,#1 
	SWI 0X11