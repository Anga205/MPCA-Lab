; Program1. Write an ALP using ARM7TDMI to to generate a matrix of order 3 to store natural numbers 

.data 
MATA: .WORD 0,0,0,0,0,0,0,0,0 ; Allocate a 3x3 matrix (9 elements) initialized to 0 

.text 
LDR R0, =MATA ;Load the base address of MATA into R0 
MOV R1, #0 ;Initialize the row Index (R1) to 0 
MOV R2,#0 ;Initialize the column index (R2) to 0 
MOV R3, #3 ;Number of rows (3) 
MOV R4, #3 ;Number of columns (3) 
MOV R5, #4 ;Number of bytes per element (4 bytes, since it's a word)
MOV R9, #1 ;nitialize the first element (R9) with 1
 
LOOP1: ;Outer loop to traverse columns (J) and rows (1)
MLA R6, R2, R3, R1  ;Multiply column Index (R2) by number of rows (R3), add the ow index (R1) => re 
MLA R7, R6, R5, R0 ;Multiply the result (R6) by the size of each element (R5, bytes), add the base address (R0) => result in R7 (address of element) 
STR R9, [R7]
ADD R9, R9, #1 
ADD R2, R2, #1 
CMP R2, #3 
BNE LOOP1 
SWI 0x011