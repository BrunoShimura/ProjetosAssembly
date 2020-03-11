code segment
start:
    mov ax, data
    mov ds, ax  
    
    lea si, msg
    mov cx, tam 
    
subst:
    mov dl,[si]
    cmp dl,' '
    jne nespaco
    mov dl,'_'
    
nespaco:
    mov ah,2h
    int 21h
    inc si  
    
loop subst
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

data segment
   msg db "aa aa aa$"
   tam dw 8
ends
         
         
end start ; set entry point and stop the assembler.