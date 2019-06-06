void foo(int* __restrict__ a, int* __restrict__ b, int rozmiar)
 {
 	int i;
 	float *x = (float*)__builtin_assume_aligned(a, 16);
 	float *y = (float*)__builtin_assume_aligned(b, 16);
 	for (i = 0; i < rozmiar; i++)
 	{
 		x[i]+=y[i];
 	}
 }

int main()
{
	return 0;
}
