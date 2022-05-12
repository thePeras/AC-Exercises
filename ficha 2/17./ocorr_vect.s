//
// Assembler program to calculate the product inter between two vectors
// X0 end vetor M
// W1 número de elementos
// W2 valor a procurar
// x3 acumulador
//

.include "debug.s"

.global _ocorr_vect // Allow other files to call this routine
.p2align 2

_ocorr_vect: 
	mov X3, 0
	dup V1.16B, W2 //criar o vetor | dizemos 16B logo só vai buscar o byte menos significativo de W2
loop: 
	cbz W1, fim
	ldr Q0, [X0], 16
	cmeq V2.16B, V0.16B, V1.16B

	addv B2, V2.16B //B2 é o byte menos significativo de V2
	smov X4, V2.B[0]

	add x3, x3, x4

	sub x1, x1, 16
	b loop
fim:
	neg x0, x3
	ret