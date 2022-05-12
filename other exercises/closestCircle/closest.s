// X0 number of elements of VP
// X1 base enderece of VP
// X2 number of elements of NC
// X3 base enderence of VC
// X4 enderence of id

// X6 -> guarda o X3

.global _closestCircle	
.p2align 2

_closestCircle:
    SUB D6, D6, D6 //ALWAYS 0
    SUB D7, D7, D7 //D7 guarda o menor raio
    MOV W5, 0 //D8 guarda o index
    MOV W7, 0 //i do loop2

    MOV X6, X3 //guarda o endereço
    MOV X7, X2 //guarda o número de elemnetos
loop1:    
    CBZ X0, fim

    LDR S0, [X1], 4 
    LDR S1, [X1], 4

    SUB X0, X0, 1
loop2: 
    CBZ X2, fim2

    LDR D3, [X3], 8
    LDR D4, [X3], 8
    LDR D5, [X3], 8

    SUB X2, X2, 1

    //convert
    FCVT D0, S0
    FCVT D1, S1

    //distance
    FSUB D0, D3, D0 //x - xc
    FSUB D1, D4, D1 //y - yc
    FMUL D0, D0, D0 //(x - xc)^2
    FMUL D1, D1, D1 //(y - yc)^2
    FADD D0, D0, D1
    FSQRT D0, D0 //final distance

    FSUB D1, D0, D5 // -r
    FCMP D1, 0
    B.LE invalid //passa à frente

    //primeira distância?
    FCMP D7, 0
    B.NE next
    FMOV D7, D0
next:
    FCMP D0, D7 //comparar com a menor distância
    B.GE invalid //distancia maior, passa à frente
    //distancia menor
    FMOV D7, D0 //atualizar a distancia menor
    MOV W5, W7 //atualizar o index
    ADD W7, W7, 1
    B loop2 //passa à frente
fim2: 
    FCMP D7, 0
    B.NE notfound
    B found
notfound:
    MOV W6, -1
    STR W6, [X4], 4
    B fim22
invalid:    
    ADD W7, W7, 1 //incrementa o indíce
    B loop2
found:
    STR W7, [X4], 4
    B loop2

fim22: 
    MOV X3, X6 //resetar o endereço
    MOV X2, X7 //resetar o número de elementos
    MOV W5, 0
    MOV W7, 0
    B loop1
fim:
    RET