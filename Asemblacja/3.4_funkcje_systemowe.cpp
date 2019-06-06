#include <math.h>
#define SIZE 100
void sqrt_test(float *__restrict__ a, float *__restrict__ b)
{
 	int i;
 	float *x = (float*) __builtin_assume_aligned(a, 16);
	float *y = (float*) __builtin_assume_aligned(b, 16);
 	for(i=0; i<SIZE; i++)
 	{
 		x[i] = sqrtf(y[i]);
	 }
 }


