INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA             

STR1 DB  'HELLO'
STR2 DB 5 DUP (?)


.CODE


MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX
    
    MOV ES,AX   ; EI LINE TA BUJHLAM NA
    
    LEA SI, STR1
    LEA DI, STR2 
    
    CLD
    MOV CX,5   
    
   
    REP MOVSB           
    
   
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP

END MAIN