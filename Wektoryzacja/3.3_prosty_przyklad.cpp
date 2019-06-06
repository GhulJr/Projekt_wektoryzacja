 #define SIZE 100
  void foo(float* __restrict__ a, float* __restrict__ b)
 {
 	float *x = (float*)__builtin_assume_aligned(a, 16);
 	float *y = (float*)__builtin_assume_aligned(b, 16);
	int i;
	 for(i = 0; i < SIZE; ++i)
	 {
 		x[i]+=y[i];
 	}
 }

int main()
{
	return 0;
}
