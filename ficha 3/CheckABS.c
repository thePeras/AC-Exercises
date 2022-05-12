#include <stdio.h>
#include <stdlib.h>

extern int CheckABS( int numx, int tam, int *seq);

int main(void)
{
   int x = 20, tamanho = 8;
   int ve[] = {7, 8, 23, 56, 20, 10, 0, 40};
   //20,8,[7,8,23,56,20,10,0,40
   int res;         

   res = CheckABS(x, tamanho, ve);
   printf("Foram modificados %d elementos da sequencia ve[]", res);
   // para o exemplo fornecido o output deve indicar que foram alterados 3 elementos
   // no final da execução a sequência ve[] = {7, -8, 0, 0, 20, -10, 0, 0} (podem verificar
   //o seu conteúdo durante a execução em modo debug)
   return EXIT_SUCCESS;
}