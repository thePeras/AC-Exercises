// void cifra(unsigned int N, char *S);
// W0 - número de elementos
// X1 - endereço de base 

.global _cifra
.p2align 2

_cifra: 
    MOV W2, 13
    DUP V1.16B, W2
loop:
    CBZ W0, fim
    
    LDR Q0, [X1]
    ADD V0.16B, V0.16B, V1.16B

    STR Q0, [X1], 16

    NEG V1.16B, V1.16B
    SUB W0, W0, 16
    B loop
fim:
    RET