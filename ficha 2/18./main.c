#include <stdio.h>
#include <stdlib.h>

extern void incsatV(int *Z, int n, int x);
//n é múltiplo de 4

int main(void){
	int Z[] = {1, 2, 3, 8};
	int x = 4;
	
	incsatV(Z, 4, x);

	//printf("1. With normal loop: \n result: %ld \n time: %lf \n\n", res1, time_spent1);
	//printf("2. With vector: \n result: %ld \n time: %lf \n\n", res2, time_spent2);

	return EXIT_SUCCESS;
}