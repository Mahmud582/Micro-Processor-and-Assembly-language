org 100h
.model small
.stack 100h
.data 

MSG1 db "Enter 1st Number $ "
MSG2 db "Enter 1st Number $ "
MSG db "Sum :  $ " 

a db 0
b db 0


.code 

mov ax,@data
mov ds,ax

mov ah,9
lea dx,MSG1
int 21h

mov ah,2
mov dl,013 ; for space
int 21h
mov dl,010
int 21h

mov ah,1
int 21h
mov a,al ;for 1st input

          

mov ah,2
mov dl,013 ; for space
int 21h
mov dl,010
int 21h

mov ah,9
lea dx,MSG2
int 21h

mov ah,2
mov dl,013
int 21h      ;space
mov dl,010
int 21h

mov ah,1
int 21h     ; 2nd input
mov b,al 



add al,a

mov ah,0    ; ax reg has two part al and ah 
aaa         ; we used al reg but we do not use
            ; so ah reg bring some useless value for delete useless value we use ah,0
 
add ah,48
add al,48
 


mov bx,ax   ;
  
mov ah,2
mov dl,013
int 21h      ;space
mov dl,010
int 21h 

mov ah,9
lea dx,MSG
int 21h 



mov ah,2
mov dl,bh  ;high bit print 
int 21h

mov ah,2
mov dl,bl   ;low bit print
int 21h






