#define SIZE 100
 void foo(int* __restrict__ a, int* __restrict__ b)
 {
     float *x = (float*)__builtin_assume_aligned(a, 16);
	float *y = (float*)__builtin_assume_aligned(b, 16);

 	int i;
 	for(i = 0; i < SIZE; ++i)
 	{
 		x[i] += x[i] < y[i] ? y[i] : 0;
 	}

 }

int main()
{
	return 0;
}
