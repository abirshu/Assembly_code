INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
 
 NUM DB 1,2,3,4,5
 
 KEY DB 5   
 COUNTER DB ?
 
 .CODE
 
 
 
 MAIN PROC
    
    
    MOV AX, @DATA
    MOV DS, AX 
    
    LEA SI,NUM   
    
    
   
    
    MOV CX,5
    
    MOV  AL,KEY
   
    MOV AH,2 
    
    FOR:   
    INC COUNTER ;POSITION
    
    MOV BL, [SI] 
   
    
    CMP    AL, BL
    
    JE RESULT 
    INC SI
    
    
    LOOP FOR
    
    
     PRINT "NUMBER NOT FOUND" 
     
     
     ;.EXIT
    
  
    
    
    RESULT:
    PRINT "NUMBER FOUND"    
    PRINTN    
    MOV AH,2
    MOV DL,COUNTER 
    ADD DL,48        
    INT 21H
    
          
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN