//
//

.include "debug.s"

.global _norma // Allow other files to call this routine
.p2align 2


_norma: 
	sub V1.2D, V1.2D, V1.2D
loop:
	cbz x1, fim
	ldr Q0, [x0], 16

	fmul V0.2D, V0.2D, V0.2D
	fadd V1.2D, V1.2D, V0.2D

	sub X1, X1, 1 
	b loop
fim:
	faddv D1, V1.2
	fsqrt D0, D1
	ret