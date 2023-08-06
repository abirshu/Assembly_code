INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA

STR DB "DEPARTMEN $"

.CODE



MAIN PROC    
    
    MOV AX,@DATA
    MOV DS, AX
    
    LEA SI, STR 
    PRINT "BEFORE REVERSE: "
     
     
    LEA DX, STR 
    MOV AH,9
    INT 21H 
    
    MOV AL, [SI+3]
    MOV AH, [SI+6]
    
    
    MOV [SI+6],AL
    MOV [SI+3], AH   
    
     PRINTN
     PRINT "AFTER  REVERSE: "
    
    LEA DX, STR 
    MOV AH,9
    INT 21H
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
 MAIN ENDP

END MAIN