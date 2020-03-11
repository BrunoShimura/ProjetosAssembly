code segment
start:

mov ax, data ; end. da area de dados
mov ds, ax   ; ponteiro da area de dados
; qualquer variavel disponivel a partir daqui!


inicio:
lea dx, msg
mov ah, 9
int 21h

; le do teclado um caracter
mov ah, 1  ; resultado al(vindo do teclado | ascii)
int 21h

cmp al,'0'
jl zyka

cmp al,'9'
jg zyka

cmp al,'5'
jl la_menor
jg la_maior
je la_igual



la_menor:
lea dx,menor
mov ah, 9
int 21h
jmp inicio

la_maior:
lea dx,maior
mov ah, 9
int 21h
jmp inicio

la_igual:
lea dx,igual
mov ah, 9
int 21h
jmp inicio


zyka:
lea dx,dif
mov ah, 9
int 21h
jmp inicio


fim:
; saida do DOS
mov ax, 4c00h
int 21h

ends

data segment
msg db "Digite o numero (0-9) : $"
maior db 0AH,0DH,"Eh maior ",0AH,0DH,"$"
menor db 0AH,0DH,"Eh menor ",0AH,0DH,"$"
igual db 0AH,0DH,"Eh igual ",0AH,0DH,"$"
dif db 0AH,0DH,"Caracter invalido",0AH,0DH,"$"
ends

end start






; [SOURCE]: C:\emu8086\MySource\exe2.asm
