//int v[], int w[], unsigned int n, unsigned int dist)

// X0 endereço base de V
// X1 endereço base de W
// W2 n
// W3 dist

.global _nperto
.p2align 2

_nperto:
    MOV W6, 0
loop:
    CBZ W2, fim
    SUB W2, W2, 1

    LDR W4, [X0], 4
    LDR W5, [X1], 4

    SUB W4, W4, W5
    CMP W4, 0
    B.GT next
    NEG W4, W4
next:
    CMP W4, W3
    B.GT loop
    ADD W6, W6, 1
    B loop
fim:
    MOV W0, W6
    ret