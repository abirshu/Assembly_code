.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
  
   MOV AH,10001B
   MOV AL,00101B
   
   OR AL,AH      
   
   MOV AH,2
   MOV DL, AL  
   ADD DL,48
   INT 21H
          
  
   
    
MOV AH, 4CH
INT 21H    
MAIN ENDP    
    
END MAIN