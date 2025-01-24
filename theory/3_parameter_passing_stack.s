; Parameter passing to procedure using stack

LDR R4, =A
MOV R1, #25     ;parameter1
MOV R2, #25     ;parameter2
 STMFD R13!, {R1-R2} ;parameters are pushed on stack
BL LINK
 STR R0, [R4]
  SWI 0x11

LINK: LDMFD R13!, {R4,R5}   ;parameters are popped from stack
      ADD R0, R4, R5
      MOV PC, LR

A: .WORD 0

.END