#include <stdio.h>
#include <stdlib.h>

extern void CHAR_TO_LONG(char *v, unsigned long z, unsigned int n); 

int main(void){
	unsigned char v[4] = {31, 12, 16, 21};
	unsigned long z[4];
	int dim = 4;

	CHAR_TO_LONG(v, z, dim);

	return EXIT_SUCCESS;
}