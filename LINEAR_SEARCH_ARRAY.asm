INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC           
    
    
      CALL ADD_FUNCTION 
 
    
             
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP  







      ADD_FUNCTION PROC
                    
           
  MOV BH,4   
  MOV BL,2
  
  ADD BH,BL
  
  
  ADD BH,48
  MOV  AH,2
  MOV DL,BH
  INT 21H
               RET
   ADD_FUNCTION ENDP        
                    

END MAIN