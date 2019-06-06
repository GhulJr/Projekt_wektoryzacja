// Sortowanie babelkowe
#include <cstdlib>
#include <algorithm>
#define SIZE 100
void sort_babelkowe(float * __restrict__ a)
{
    int i,j;
    float *x =(float*) __builtin_assume_aligned(a, 16);
    for (i = 0; i < SIZE; i++)
        for (j = 1; j < SIZE - i; j++) //pętla wewnętrzna
        {
            if (x[j - 1]>x[j])
                std::swap(x[j-1], x[j]);
        }      
}
int main()
{
    return 0;
}
