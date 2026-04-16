%include "io64.inc"

section .data
    number dd 50 ;this is number to guess
 

section .text
global main
main:
    mov rbp, rsp 
    PRINT_STRING "Enter the count of lifes"
    GET_DEC 4, ecx
    jmp lp
    
        
lw:
    PRINT_STRING "Number is lower"
    NEWLINE
    PRINT_STRING "Count of lifes: "
    PRINT_DEC 4, ecx
    NEWLINE
    dec ecx
    jz game_over
    
    jmp lp
    
    
bg:
    PRINT_STRING "Number is bigger"
    NEWLINE
    PRINT_STRING "Count of lifes: "
    PRINT_DEC 4, ecx
    NEWLINE
    dec ecx
    jz game_over
    jmp lp
    
    
lp:
    GET_DEC 4, eax
    cmp eax, [number]
    jl bg
    
    jg lw
    
    je win
    
    
    
game_over:
    PRINT_STRING "You loose"
    jmp end
    
win:
    PRINT_STRING "You win"
    NEWLINE
    PRINT_STRING "Number is: "
    PRINT_DEC 4, [number]
            
end:
    xor eax, eax
    ret
    

    