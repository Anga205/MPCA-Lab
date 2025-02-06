.text
MOVS R1,#-10
MRS R0,CPSR     ; Move CPSR to R0
AND R0,R0,#0000 ; Clear the mode bits
MSR CPSR_F,R0     ; Move R0 to CPSR

.end