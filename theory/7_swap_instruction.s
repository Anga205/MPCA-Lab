.text
LDR R1,=a
MOV R1,#5
SWP R1,R1,[R2]

.DATA
a: .WORD 0