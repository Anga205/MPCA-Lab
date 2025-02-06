;Program2: Write an ALP using ARM7TDMI to find the sum of 2 bcd numbers in a function using stack parameter passing technique. 

MOV R1, #0X54 ;Load the first BCD number (0x54) into register R1 (stack parameter passing) 
MOV R4, #0 ;Initialize R4 to 0 (to store sum of BCD digits) 
STMIA R131, {R1} ; Store R1 on the stack (parameter passing for the function SUM) 
BL SUM ;Branch to the SUM function to compute the sum of the BCD numbers 
LDR R6, [R13] ; Load the result from the stack into R6 (this is the sum) 
SWI 0X011 ;Software interrupt to indicate program completion (exit) 

SUM: ; Function to compute the sum of two BCD numbers 
SUB R13, R13, #4 ; Adjust the stack pointer to retrieve the parameter passed (R1) 
LDR R2, [R13] ; Load the parameter (first BCD number) into R2 
AND R3, R2, #0X0F ; Mask the lower nibble of R2 (extract the lower BCD digit) 
ADD R4, R4, R3 ; Add the lower digit to R4 (sum so far) 
MOV R2, R2, LSR #4 ; Logical shift right by 4 bits to get the upper nibble (next BCD digit) 
ADD R5, R4, R2 ;Add the upper digit to the sum in R4 (final sum of both digits) 
STR R5, [R13] ; Store the result (sum) back on the stack 
MOV PC, LR ;Return from the SUM function by loading the link register into PC