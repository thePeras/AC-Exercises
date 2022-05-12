// X0 -> Endereço base
// W1 -> número de elementos

.include "debug.s"

.global _mirrorSeq // Allow other files to call this routine
.p2align 2

_mirrorSeq: 
loop:	
	cbz w1, fim

	ldr q0, [x0]
	rev64 v0.4S, v0.4S
	str q0, [x0], 16

	sub w1, w1, 4
	b loop
fim:
	ret