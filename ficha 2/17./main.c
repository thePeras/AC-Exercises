#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

extern long int ocorr_vect(char *V, long int n, char val);
extern long int ocorr_loop(char *V, long int n, char val);
//n é múltiplo de 4

double time_vect(char *V, long int n, char val){
	clock_t begin = clock();
	long int res = ocorr_vect(V, n, val);
    clock_t end = clock();
	return (double)(end - begin) / CLOCKS_PER_SEC;
}

double time_loop(char *V, long int n, char val){
	clock_t begin = clock();
	long int res = ocorr_loop(V, n, val);
    clock_t end = clock();
	return (double)(end - begin) / CLOCKS_PER_SEC;
}

int main(void){
	int n = 10;
	int n_elments = pow(4, n); //4^n elementos
	char to_find = 9;

	char V[n_elments];
	for(int i = 0; i < n_elments; i++){
		V[i] = rand() % 10; //números entre [0, 255]. Neste caso até 20.
	}

	double vectTime = time_vect(V, n_elments, to_find);
	double loopTime = time_loop(V, n_elments, to_find);

	printf("Loop time: %lfms \n", loopTime);
	printf("Vect time: %lfms \n", vectTime);

	//printf("1. With normal loop: \n result: %ld \n time: %lf \n\n", res1, time_spent1);
	//printf("2. With vector: \n result: %ld \n time: %lf \n\n", res2, time_spent2);

	return EXIT_SUCCESS;
}