#include <stdio.h>
#include <stdlib.h>

unsigned int nperto(int v[], int w[], unsigned int n, unsigned int dist);

int main(void) {
    int v[] = {6,0,-3};
    int w[] = {9,2,-4};
    unsigned int n = 3;
    unsigned int dist = 2;

    int res = nperto(v,w,n,dist);
    printf("%i", res);

    return 0;
}
