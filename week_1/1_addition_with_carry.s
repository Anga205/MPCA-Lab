MOV     R0, #0x1000000F        
MOV     R1, #0x10000001       
MOV     R2, #0x00000000        
MOV     R3, #0x00000002  
MOV     R4, #0xF000000F        
MOV     R5, #0xF0000001 

ADDS R2, R0, R2
ADCS R3, R1, R3
ADCS R4, R4, #0
ADCS R5, R5, #0