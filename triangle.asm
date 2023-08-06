INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
        N DB ?
.CODE    


MAIN PROC
    
    
 MOV AX, @DATA
 MOV DS, AX
 
 MOV AH,1
 INT 21H  
 SUB AL,48
 MOV N,AL
 
 MOV BH,1  ; I=1  
 PRINTN
 
 MOV CH,N
 
 LOOP1:
 CMP BH,N
 JG LOOP1_EXIT
 
 MOV BL,1  ; J =1
 LOOP2:
 CMP BL,CH ; N ER JAIGA BH DILE TRIANGLE PRINT KORE
 JG LOOP2_EXIT
 MOV AH,2         
 MOV DL, "*"
 INT 21H    
 INC BL
 JMP LOOP2  
  
  LOOP2_EXIT:
 
  PRINTN    
  INC BH     
  DEC CH
  JMP LOOP1
  
  LOOP1_EXIT:
    
    



MOV AH,4CH
INT 21H


MAIN ENDP


END MAIN