org 100h
.model small
.stack 100h
.data 

x db 0
y db 0 
z db 0
a db 0


.code 

mov ah,1
int 21h
mov x,al

mov ah,2
mov dl,20h ;space
int 21h

mov bl,x
sub bl,50
add bl,48
add bl,49
sub bl,48

mov cl,bl
mov ch,x
add cl,ch
sub cl,48



mov ah,2
mov dl,cl
int 21h


    
    
    
    

