;Program3
.data 
matrix: .word 1, 2, 3 ;Original 3x3 matrix 
	      .word 4,5,6 
	      .word 7,8,9 
transpose: .word 0,0,0 ; Space for transposed matrix 
	   .word 0,0,0 
	   .word 0,0,0 
.text 
LDR R0, =matrix ;Load address of the original matrix 
LDR R1, =transpose ;Load address of the transposed matrix 
MOV R2, #3 ;Number of rows/columns (3x3 matrix) 
MOV R3, #0 ;Initialize row counter (i) 
outer_loop: 
	MOV R4, #0 ;Initialize column counter (j) 
inner_loop: 
	MLA R5, R3, R2, R4 ; Calculate offset for matrix[i][j]: R5 =i*3+j 
	LDR R6, [R0, R5, LSL #2] ;Load matrix[i][j] into R6 
	MLA R7, R4, R2, R3 ;Calculate offset for transpose[j][1]: R7 =J*3+1 
	STR R6, [R1, R7, LSL #2] ;Store matrix[i][j] into transpose[][ 
	ADD R4, R4, #1 ; Increment column counter (j) 
	CMP R4, R2 ; Compare j with 3 
BLT inner_loop ; If j <3, repeat inner loop 
	ADD R3, R3, #1 ;Increment row counter (1) 
	CMP R3, R2 ;Compare i with 3 
	BLT outer_loop ;if i<3, repeat outer loop
	B end_program	;End of program
end_program:
	SWI 0x11 ;tERMINATE PROGRAM