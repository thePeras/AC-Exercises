//
// void altV(float *P, int n, float k)
//
// X0 - endereço base de P
// W1 - n
// S0 - float k

.global _altV
.p2align2

_altV:
    DUP V1.4S, V0.S[0]
loop:
    CBZ W1, fim

    LDR Q0, [X0] // P
    
    FMUL V0.4S, V0.4S, V1.4S
    STR Q0, [X0], 16

    SUB W1, W1, 4
    B loop
fim:
    RET
    BX LR