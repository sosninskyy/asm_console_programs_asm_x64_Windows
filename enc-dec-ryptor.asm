extern printf  
extern scanf
extern exit
section .data
    fmt db "%s", 10, 0
    st db "Some word", 0
section .text
global main  




encryptor:
    xor rcx, rcx
.loop:
    cmp byte[rdi + rcx], 0
    je .end
    
    add byte[rdi + rcx], 26
    xor byte[rdi + rcx], 5
    xor byte[rdi + rcx], 5
    inc rcx
    jmp .loop
.end:
    ret
    
decryptor:
    xor rcx, rcx
.loop:
    cmp byte[rdi + rcx], 0
    je .end
    
    xor byte[rdi + rcx], 5
    xor byte[rdi + rcx], 5
    sub byte[rdi + rcx], 26
    inc rcx
    jmp .loop
.end:
    ret

main:
    sub rsp, 40
    
    lea rcx, [fmt]
    lea rdx, [st]
    call printf
    lea rdi, [st]
    call encryptor
    
    lea rcx, [fmt]
    lea rdx, [st]
    call printf
    lea rdi, [st]
    call decryptor
    
    lea rcx, [fmt]
    lea rdx, [st]
    call printf
    
    
    add rsp, 40
    xor rax, rax
    call exit
    ret
    