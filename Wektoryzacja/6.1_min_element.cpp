#include<iostream>
#include<cstdlib>

#define SIZE 100
void min_element(float * __restrict__ a)
{
    float min;
    int i;
    float *tab = (float*)__builtin_assume_aligned(a, 16);
    min = tab[0]; //pierwszą liczbę przypisujemy do zmiennej min
    for(i=1;i<SIZE;i++)
        if(min>tab[i])
        min = tab[i];
    std::cout<<"Najmniejszą liczbą jest "<<min<<std::endl;
}
int main()
{
    return 0;
}