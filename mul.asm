;MUL - UNSIGNED
; IMUL - SIGNED  
INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA
    
    A DB ?
    B DB ?
    C DB 'ENTER FIRST DIGIT:  $'
    D DB 'ENTER SECOND DIGIT: $'
    E DB 'RESULT: $'
.CODE

MAIN PROC
    
     MOV AX, @DATA
     MOV DS, AX
     
     MOV AH,9
     LEA DX,C
     INT 21H   
     
     
     MOV AH, 1
     INT 21H
     SUB AL,48
     MOV A,AL    
     
     PRINTN
     MOV AH,9
     LEA DX,D
     INT 21H 
     
     
     MOV AH, 1
     INT 21H
     SUB AL,48
     MOV B,AL      
     PRINTN
     
     MOV AH,9
     LEA DX,E
     INT 21H    
     
     MOV AL,A
     MUL B
     
     MOV AH,2
     MOV DL,AL
     ADD DL,48
     INT 21H
     
     
     
         
     
     
     
     
     MOV AH, 4CH
     MAIN ENDP
END MAIN

