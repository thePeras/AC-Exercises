//
// Assembler program to calculate the product inter between two vectors
// X0 end vetor R
// X1 end vetor S
// W2 Número de elementos
// W3 acumulador
//

.global _prodintV	     // Allow other files to call this routine
.p2align 2

_prodintV: 
	sub V3.4S, V3.4S, V3.4S //dá 0. O mesmo que fazer V3 = 0
loop: cbz W2, fim
	ldr Q0, [X0], 16
	ldr Q1, [X1], 16

	mul V2.4S, V0.4S, V1.4S
	add V3.4S, V3.4S, V2.4S

	sub W2, W2, 4
	b loop

fim:
	addv S3, V3.4S
	
	fmov W0, S3
	sxtw X0, W0
	RET

