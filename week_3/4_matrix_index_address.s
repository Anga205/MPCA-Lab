;Q4. Write an ALP using ARM7TDMI, for the given matrix arranged in row major order, find the index of an element if coordinates of a matrix is given and also find the address of the indexed element. (Using MLA instruction)

.DATA 
A:.WORD 1,2,3,4,5,6,7,8,9 

.TEXT 
LDR R9,=A 
MOV R1,#3	;NO OF ROWS 
MOV R2,#3 	;NO OF COLUMN 
MOV R3,#0 	;X COORDINATE 
MOV R4,#1 	;Y COORDINATE 
MLA R5,R3,R2,R4 
MOV R6,R5,LSL #2 
ADD R6,R9,R6	; ADDRESS LOCATION OF INDEXED ELEMENT 
SWI 0x11