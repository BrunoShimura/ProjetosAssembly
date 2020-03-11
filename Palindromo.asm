code segment
start:
    mov ax, data
    mov ds, ax
    
    
    ; Ler palindromo
     lea di, word 
     mov si, di ; di e si iguais.
     add si, tam ; posiciona no ultimo caracter (+1).
     dec si ; and. do ultimo caracter.
     
    
    ; encontrar no de loops.
     mov cx, tam
     shr cx, 1 ; divide por 2.               
     


    ; Loop principal 
next:

    mov al, [di]
    mov bl, [si]
    cmp al, bl
    jne n_pali
    inc di
    dec si
    loop next ; roda qtde de vezes de CX 
     
     
               
    
    ; Eh palindromo.        
     lea dx, pali
     mov ah, 9
     int 21h
     jmp fim        
           
           
n_pali:    ; Nao eh palindromo.       
     lea dx, npali
     mov ah, 9
     int 21h
       
    
fim:    
    mov ax, 4c00h 
    int 21h    
ends  


data segment
    word db "01234566543210"
    tam dw 14 ; data word (16bits/2bytes) usando para INT
    pali db "Eh palindromo...$"
    npali db "Nao eh palindromo...$"
ends


end start ; set entry point and stop the assembler.
