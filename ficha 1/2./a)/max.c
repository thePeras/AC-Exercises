#include <stdio.h>
#include <stdlib.h>

extern int MAX(int *a, long int n); 

int main(void){
	int dim = 5;
	long int v[] = {3, -1, 8, 1, 3}; // Para testar : 32 bits int res;
	long int res = MAX(v, dim);
	printf("O valor máximo do vetor é:  %d\n", res);
	return EXIT_SUCCESS;
}