; write a program to display a string on the screen using ARM ALP

.TEXT
LDR R1, =A
LOOP: LDRB R0, [R1], #1
      CMP R0, #0
      SWINE 0X00    ; display a character on the screen
      BNE LOOP
        SWI 0X11    ; terminate the program

.DATA
A: .ASCIZ "Hello World"
