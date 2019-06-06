#define SIZE 100
void no_backward_loop_carried_dependencies(float* __restrict__ a, float* __restrict__ b, float* __restrict__ c, float* __restrict__ d, int* __restrict__ e)
{
    	int i;
	float *x = (float*)__builtin_assume_aligned(a, 16);
    	float *y = (float*)__builtin_assume_aligned(b, 16);
	float *z = (float*)__builtin_assume_aligned(c, 16);
   	float *m = (float*)__builtin_assume_aligned(d, 16);
	float *n = (float*)__builtin_assume_aligned(e, 16);
 	for (i=1; i<SIZE; i++)
   	{
      		x[i] = y[i] + z[i];
        	m[i] = n[i] - x[i-1];
   	}
}

