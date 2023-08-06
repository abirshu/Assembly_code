INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
     
     A DB ?
     B DB ?            
     
.CODE

MAIN PROC
    
        
        CALL MULTI
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP               


    MULTI PROC     
        
        MOV AX, @DATA
        MOV DS, AX         
        
        ;INPUT
        
        PRINT "FIRST NUMBER : "
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV A,AL     
        PRINTN
        
        PRINT "SECOND NUMBER : "
        MOV AH,1
        INT 21H
        
        SUB AL,48 
        MOV B,AL
        
        PRINTN 
        
        
        MOV AL,A
        MUL B
        
        
        MOV AH,2
        MOV DL,AL   
        ADD DL,48
        INT 21H     
        
        
        
     

        
        RET
     MULTI ENDP



END MAIN