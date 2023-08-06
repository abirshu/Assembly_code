INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

 SUM DB ?
 CRD DB ?
 
 N DB ?
 
 NUM1 DW ?
 NUM2 DW ?

.CODE 

MAIN PROC
   
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINTN
    PRINTN "******WELCOME TO OUR CGPA CALCULATOR******"
   ; PRINTN 
    PRINT "ENTER HOW MANY SUBJECT YOU HAVE: " 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV NUM1,0 
    MOV NUM2,0
    ;PRINTN
    ;PRINTN 
    
    MOV CL,AL
    ;MOV SUM,AL
    MOV BL,10
    MOV CRD,BL 
    ;MOV BX,0
    
    FOR: 
    SUB CL,1
    PRINTN
    PRINT "ENTER THE GRADE: "
    MOV AH,1
    INT 21H
    CMP AL,41H
    JE A
    CMP AL,42H
    JE B
    CMP AL,43H
    JE C 
    CMP AL,44H
    JE D
    CMP AL,46H
    JE F 
    
    A: 
    MOV AH,1
    INT 21H
                                             
                                             
                                             
                                       
    CMP AL,2BH
    JE A1
    CMP AL,0DH
    JE A2
    CMP AL,2DH
    JE A3
    
    
    
    
    A1:
    ;MOV BX,40
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE A11
    CMP AL,32H
    JE A12
    CMP AL,33H
    JE A13 
    CMP AL,34H
    JE A14
     
    
    A11:
    ADD NUM1,1200
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A12:
    ADD NUM1,800
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A13:
    ADD NUM1,600
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A14:
    ADD NUM1,280
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
 
 
 
  
    A2:
    ;MOV BX,37
    PRINTN                    
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  : "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE A21
    CMP AL,32H
    JE A22
    CMP AL,33H
    JE A23 
    CMP AL,34H
    JE A24
     
    
    A21:
    ADD NUM1,1110
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A22:
    ADD NUM1,740
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A23:
    ADD NUM1,555
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A24:
    ADD NUM1,259
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A3:
    ;MOV BX,35
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE A31
    CMP AL,32H
    JE A32
    CMP AL,33H
    JE A33 
    CMP AL,34H
    JE A34
     
    
    A31:
    ADD NUM1,1050
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A32:
    ADD NUM1,700
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A33:
    ADD NUM1,525
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    A34:
    ADD NUM1,245
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT 
    
    
    B: 
    MOV AH,1
    INT 21H
    
    CMP AL,2BH
    JE B1
    CMP AL,0DH
    JE B2
    CMP AL,2DH
    JE B3
    
    
    B1:
    ;MOV BX,32
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE B11
    CMP AL,32H
    JE B12
    CMP AL,33H
    JE B13 
    CMP AL,34H
    JE B14
     
    
    B11:
    ADD NUM1,960
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B12:
    ADD NUM1,640
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B13:
    ADD NUM1,480
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B14:
    ADD NUM1,224
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B2:
    ;MOV BX,30
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE B21
    CMP AL,32H
    JE B22
    CMP AL,33H
    JE B23 
    CMP AL,34H
    JE B24
     
    
    B21:
    ADD NUM1,900
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B22:
    ADD NUM1,600
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B23:
    ADD NUM1,450
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B24:
    ADD NUM1,210
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    
    
    B3:
    ;MOV BX,27
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE B31
    CMP AL,32H
    JE B32
    CMP AL,33H
    JE B33 
    CMP AL,34H
    JE B34
     
    
    B31:
    ADD NUM1,810
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B32:
    ADD NUM1,540
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B33:
    ADD NUM1,405
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    B34:
    ADD NUM1,189
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT  
    
    
    
    C: 
    MOV AH,1
    INT 21H 
    
    CMP AL,2BH
    JE C1
    CMP AL,0DH
    JE C2
    
    
    C1:
     ;MOV BX,25
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE C11
    CMP AL,32H
    JE C12
    CMP AL,33H
    JE C13 
    CMP AL,34H
    JE C14
     
    
    C11:
    ADD NUM1,750
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C12:
    ADD NUM1,500
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C13:
    ADD NUM1,375
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C14:
    ADD NUM1,175
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT 
    
    C2:
     MOV BX,22
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE C21
    CMP AL,32H
    JE C22
    CMP AL,33H
    JE C23 
    CMP AL,34H
    JE C24
     
    
    C21:
    ADD NUM1,660
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C22:
    ADD NUM1,440
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C23:
    ADD NUM1,330
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    C24:
    ADD NUM1,154
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT 
    
    D:
     ;MOV BX,20
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE D11
    CMP AL,32H
    JE D12
    CMP AL,33H
    JE D13 
    CMP AL,34H
    JE D14
     
    
    D11:
    ADD NUM1,600
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    D12:
    ADD NUM1,400
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    D13:
    ADD NUM1,300
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    D14:
    ADD NUM1,140
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT 
    
    F:
     MOV BX,0
    PRINTN
    PRINT "SELECT THE CREDIT: "
    PRINT "1) 3    2) 2    3) 1.5    4) 0.7  :  "
    MOV AH,1
    INT 21H
    
    CMP AL,31H
    JE F11
    CMP AL,32H
    JE F12
    CMP AL,33H
    JE F13 
    CMP AL,34H
    JE F14
     
    
    F11:
    ADD NUM1,0
    ADD NUM2,30
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    F12:
    ADD NUM1,0
    ADD NUM2,20
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    F13:
    ADD NUM1,0
    ADD NUM2,15
    
    CMP CL,0
    JNE FOR
    JE RESULT
    
    F14:
    ADD NUM1,0
    ADD NUM2,7
    ;MUL BX 
    ;ADD NUM1,AX
    
    CMP CL,0
    JNE FOR
    JE RESULT  
    
    
    RESULT: 
    
     ;MOV AH,0
     MOV AX,NUM1
     DIV NUM2
     MOV AH,0
     DIV CRD
     MOV N,AH
     
     MOV Dl,Al
     ADD Dl,48 
     PRINTN
     PRINT "YOUR CGPA IS: "
     MOV AH,2
     INT 21H
     PRINT "." 
     
   
     MOV AH,2
     MOV DL,N
     ADD Dl,48
     
     INT 21H
    
    
             
    EXIT:
    MOV AH,4CH
    INT 21H         
             
             
             
    MAIN ENDP
END MAIN