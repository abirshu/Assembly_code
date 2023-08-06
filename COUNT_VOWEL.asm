INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA

 STRING DB "ABIR HASAN"
  VOWEL DB ?

.CODE



MAIN PROC    
    
    MOV AX,@DATA
    MOV DS, AX
    
    LEA SI, STRING 
     
      BACK: MOV AL, [SI]
  CMP AL,'$'
  JZ FINAL
  CMP AL,'A'
  JZ COUNT   
  CMP AL,'E'
  JZ COUNT   
  CMP AL,'I'
  JZ COUNT   
  CMP AL,'O'
  JZ COUNT   
  CMP AL,'U'
  JZ COUNT
  CMP AL,'a'
  JZ COUNT   
  CMP AL,'e'
  JZ COUNT   
  CMP AL,'i'
  JZ COUNT   
  CMP AL,'o'
  JZ COUNT   
  CMP AL,'u'
  JZ COUNT   
  INC SI
  JMP BACK 
  COUNT: INC BL
  MOV VOWEL, BL
  INC SI
  JMP BACK
  FINAL:      
  
  mov ah,2
  MOV DL,VOWEL  
  ADD DL, 48
  INT 21H
     
     
   
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
 MAIN ENDP

END MAIN