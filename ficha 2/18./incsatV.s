//
//

.include "debug.s"

.global _incsatV // Allow other files to call this routine
.p2align 2


_incsatV: 
	dup V1.4S, W2 //[W2, W2, W2, W2] 4S -> 4 x 32bits
loop:
	cbz w1, fim
	ldr Q0, [x0] 

	sqadd V0.4S, V0.4S, V1.4S //s->com sinal q-> saturação
	str Q0, [x0], 16

	sub w1, w1, 4
	b loop
fim:
	ret