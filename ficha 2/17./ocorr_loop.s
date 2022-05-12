//
// Assembler program to calculate the product inter between two vectors
// X0 end vetor M
// X1 número de elementos
// X2 valor a procurar
// X3 acumulador
//

.include "debug.s"

.global _ocorr_loop // Allow other files to call this routine
.p2align 2

_ocorr_loop: 
	mov X3, 0
loop: 
	cbz W1, fim

	ldr W4, [X0], 1 // load de 32 bits
	sub X1, X1, 1

	//Limpar os 24 bits à direita que não interessam
	LSR W4, W4, 24

	CMP W4, W2
	B.NE loop 

	add X3, X3, 1

	b loop
fim:
	mov X0, X3
	ret