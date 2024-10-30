
            .MODEL SMALL
.STACK 100H
.DATA

a db "please enter first number  : $"
b db "please enter second number : $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

lea dx, a ; outputs string a
mov ah, 9
int 21h

mov bl, al


mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h



 



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN