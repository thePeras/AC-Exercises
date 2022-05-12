//
// void somaV(float *P, float *Q, float *R, int n)
//
// X0 - endereço base de P
// X1 - endereço base de Q
// X2 - endereço base de T
// W3 - n

.global _somaV
.p2align2

_somaV:
    CBZ W3, fim

    LDR Q0, [X0], 16 // P
    LDR Q1, [X1], 16 // Q
    
    FADD V2.4S, V0.4S, V1.4S
    STR Q2, [X2], 16

    SUB W3, W3, 4
    B _somaV
fim:
