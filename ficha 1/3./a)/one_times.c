#include <stdio.h>
#include <stdlib.h>

extern int N1_BITS(long n); 

int main(void){
	long v = 7;
	int res;
	res = N1_BITS(v);
	printf("Número de 1 bits:  %d\n", res);
	return EXIT_SUCCESS;
}