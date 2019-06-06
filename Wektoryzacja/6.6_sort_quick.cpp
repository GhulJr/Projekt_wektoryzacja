#include<iostream>
#define SIZE 100
void quick_sort(float *tab, int lewy, int prawy)
{
    if(prawy <= lewy) return;
    int i = lewy - 1, j = prawy + 1,
    pivot = tab[(lewy+prawy)/2]; //wybieramy punkt odniesienia
 
    while(1)
    {
//szukam elementu wiekszego lub rownego piwot stojacego
//po prawej stronie wartosci pivot
    while(pivot>tab[++i]);
//szukam elementu mniejszego lub rownego pivot stojacego
//po lewej stronie wartosci pivot
    while(pivot<tab[--j]);
    if( i <= j)
        std::swap(tab[i],tab[j]);
    else
        break;
    }
    if(j > lewy)
        quick_sort(tab, lewy, j);
    if(i < prawy)
        quick_sort(tab, i, prawy);
}
void sort_quick_test(float * __restrict__ a)
{
    int i;
    float *tab = (float*)__builtin_assume_aligned(a, 16);
    quick_sort(tab,0, SIZE-1);
    //wypisanie posortowanych elementów
    for(int i=0;i<SIZE;i++)
    std::cout<<tab[i]<<" ";
}
int main()
{
    return 0;
}
