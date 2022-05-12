#include <stdio.h>
#include <stdlib.h>

extern int MIN(int *a, int n); 

int main(void){
	int dim = 5;
	int v[] = {3, -1, 8, 1, 3}; // Para testar : 32 bits int res;
	int res; 
	res = MIN(v, dim);
	printf("O valor mínimo do vetor é:  %d\n", res);
	return EXIT_SUCCESS;
}