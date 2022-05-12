#include <stdio.h>
#include <stdlib.h>

extern void calc_poly_tab(float *tab);

int main(void){

    float tab[101] = {0.0};
    calc_poly_tab(tab);

	return EXIT_SUCCESS;
}