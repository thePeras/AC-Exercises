// x0 - unsigned word número a verificar
// x1 - nímero de elementos
// x2 - endereço base

.global _CheckABS	 // Allow other files to call this routine
.p2align 2

_CheckABS:
	mov w4, 0
ciclo:
   cbz w1, fim
	ldr w5, [x2]
	cmp w5, 0
	b.ge pos
 	neg w5, w5
pos:
   cmp  w0, w5
   b.ge prox
   mov w5, 0
   str w5, [x2]
   add w4, w4, 1
prox:
   add x2, x2, 4
   sub w1, w1, 1
   b ciclo
fim:
   mov w0, w4
	ret