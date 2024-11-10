
            .MODEL SMALL
.STACK 100H
.DATA

a db "please enter first number  : $"
b db "please enter second number : $"

SUM DB "THE SUM: $" 

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

MOV AH, 9
LEA DX, a
INT 21H

MOV AH, 1
INT 21H

SUB AL, '0'      
MOV BL, AL

mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h


MOV AH, 9
LEA DX, b
INT 21H

MOV AH, 1
INT 21H

SUB AL, '0'
MOV CL, AL 


ADD CL, BL

ADD CL, '0'





mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h


MOV AH, 9
LEA DX, SUM
INT 21H 
       
MOV DL, CL
MOV AH, 2
INT 21H

















 



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN