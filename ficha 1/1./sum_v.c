#include <stdio.h>
#include <stdlib.h>

extern int SOMA_V(int *a, int n); 

int main(void){
	int dim = 5;
	int v[] = {3, -1, 8, 0, -3}; // Para testar : 32 bits int res;
	int res; 
	res = SOMA_V(v, dim);
	printf("Soma dos elementos = %d\n", res);
	return EXIT_SUCCESS;
}