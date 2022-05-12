// S0 -> limite
// X0 -> endereço base
// X1 -> número de elementos
.include "debug.s"

.global _conta_inf // Allow other files to call this routine
.p2align 2


_conta_inf: 
	sub V4.2D, V4.2D, V4.2D //dá 0. O mesmo que fazer V3 = 0
loop:
	cbz x1, fim

	ldr q2, [x0], 16
	dup V1.4S, V2.S[0]
	cmlt V2.4S, V2.4S, V1.4S
	addv s3, V2.4S
	fadd s4, s4, s3

	sub x1, x1, 4
	b loop
fim:
	fmov X0, D4
	ret 