#define SIZE 100
void foo(int* __restrict__ a, int* __restrict__ b)
{
	int i;
 	for(i = 0; i < SIZE; ++i)
 	{
 		if(a[i] == b[i]) break; //Przerwanie pętli
 		a[i] += b[i];
 	}
}

