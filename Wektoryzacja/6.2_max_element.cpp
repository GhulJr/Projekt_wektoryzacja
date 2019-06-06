#include<iostream>
#include<cstdlib>

#define SIZE 100
void max_element(float * __restrict__ a)
{
    float max;
    int i;
    float *tab = (float*)__builtin_assume_aligned(a, 16);
    max = tab[0]; //pierwszą liczbę przypisujemy do zmiennej max
    for(i=1;i<SIZE;i++) //przeszukanie pozostałych 9 liczb
        if(max<tab[i])
        max = tab[i];
    std::cout<<"Najwieksza wczytaną liczbą jest "<<max<<std::endl;
}
int main()
{
    return 0;
}
