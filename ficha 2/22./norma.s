// X0 endereço base X
// X1 endereço base Y
// X2 número de elementos
// S0 da

.include "debug.s"

.global _ajuste_s // Allow other files to call this routine
.p2align 2


_ajuste_s: 
	DUP V2.4S, V0.S[0]
loop:
	CBZ X2, fim

	LDR Q0, [X0], 16 // X
	LDR Q1, [X1] // Y

	FABS V0.4S, V0.4S

	FMUL V0.4S, V0.4S, V2.4S
	FSUB V1.4S, V1.4S, V0.4S

	STR Q1, [X1], 16

	SUB X2, X2, 4
	B loop
fim:
	RET
	