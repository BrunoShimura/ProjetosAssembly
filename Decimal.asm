code segment
start:

    mov ax, data
    mov ds, ax
    

    
    mov bl, 10 ; Decimal.
    mov cx, 8  ; Contagem de 1 byte. 
    
next:
    
    test bl, 10000000b
    jz zero
    
    mov dl, '1' ; Imprime UM.
    mov ah, 2
    int 21h
    jmp pula


zero:
    mov dl, '0' ; Imprime ZERO.
    mov ah, 2
    int 21h
      
        
pula:
    shl bl, 1
    loop next     
    

    mov dl,'b' ; frescura
     mov ah,2
     int 21h
    
        
           
    lea dx, pkey
    mov ah, 9
    int 21h        
    
       
    mov ah, 1
    int 21h
    
    mov ax, 4c00h
    int 21h    
ends



data segment
    
    pkey db "b$"
ends



end start ; set entry point and stop the assembler.
