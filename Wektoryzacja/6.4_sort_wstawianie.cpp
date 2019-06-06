// Sortowanie przez wstawianie
#include<cstdio>
#define SIZE 100

void sort_wstawianie(float * __restrict__ a)
{
    float *tab = (float*)__builtin_assume_aligned(a, 16);
    float pom;

    int i, j;
    for (i = 1; i < SIZE; i++)
    {
    //wstawienie elementu w odpowiednie miejsce
        pom = tab[i]; //ten element będzie wstawiony w odpowiednie miejsce
        j = i - 1;
    

//przesuwanie elementów większych od pom
        while (j >= 0 && tab[j]>pom)
        {
            tab[j + 1] = tab[j]; //przesuwanie elementów
            --j;
        }
        tab[j + 1] = pom; //wstawienie pom w odpowiednie miejsce
    }
}
int main()
{
    return 0;
}