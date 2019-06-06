#include <iostream>
#include <cstdlib>
#define SIZE 100
//scalenie posortowanych podtablic
void scal(float *tab, int lewy, int srodek, int prawy, float *pom)
{
    int i = lewy, j = srodek + 1;
    int k;
    //kopiujemy lewą i prawą część tablicy do tablicy pomocniczej
    for (i = lewy; i <= prawy; i++)
        pom[i] = tab[i];

    //scalenie dwóch podtablic pomocniczych i zapisanie ich
    //we własciwej tablicy
    for (k = lewy; k <= prawy; k++)
        if (i <= srodek)
            if (j <= prawy)
                if (pom[j] < pom[i])
                tab[k] = pom[j++];
                else
                tab[k] = pom[i++];
            else
            tab[k] = pom[i++];
        else
        tab[k] = pom[j++];
}

void sortowanie_przez_scalanie(float *tab, int lewy, int prawy, float *pom)
{
    //gdy mamy jeden element, to jest on już posortowany
    if (prawy <= lewy)
    return;

    //znajdujemy srodek podtablicy
    int srodek = (prawy + lewy) / 2;

    //dzielimy tablice na częsć lewą i prawa
    sortowanie_przez_scalanie(tab, lewy, srodek, pom);
    sortowanie_przez_scalanie(tab, srodek + 1, prawy, pom);

    //scalamy dwie już posortowane tablice
    scal(tab, lewy, srodek, prawy, pom);
}

void sort_scalanie(float *__restrict__ a, float *__restrict__ b)
{
    int i;
    float *tab = (float *)__builtin_assume_aligned(a, 16);
    float *pom = (float *)__builtin_assume_aligned(b, 16);

    sortowanie_przez_scalanie(tab, 0, SIZE - 1, pom);

    //wypisanie wyników
    for (i = 0; i < SIZE; i++)
    std::cout << tab[i] << " ";

}

int main()
{
    return 0;
}