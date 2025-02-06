;Q3. Write an ALP using ARM7TDMI to copy a block 128 bytes of data from location A to location B if the rate of data transfer rate is 16 bytes, LDM and STM instructions. and For the same transfer the block with auto-indexing. 

.DATA 
A:.WORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32 
B:.WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.TEXT 
	LDR R9,=A 
	LDR R10,=B 
	MOV R11,#8 
loop: LDMIA R9!, {R0-R3}
	STMIA R10!,{R0-R3}
	SUB R11,R11,#1 
	CMP R11,#0 
	BNE loop 
	SWI 0x11