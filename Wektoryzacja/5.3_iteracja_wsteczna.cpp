 #define SIZE 100
 void no_backward_loop_carried_dependencies(float* __restrict__ a, float* __restrict__ b)
 {

    float *x =(float*) __builtin_assume_aligned(a, 16);
   	float *y =(float*)__builtin_assume_aligned(b, 16);

 	int i;
 	for (i = 0; i < SIZE; i++)
 	{
 		x[SIZE-i-1] += y[SIZE-i-1];
 	}
 }

int main()
{
	return 0;
}
