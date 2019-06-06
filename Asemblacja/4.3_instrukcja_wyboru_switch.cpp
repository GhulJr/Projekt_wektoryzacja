 #define SIZE 100
 void switch_test(float* __restrict__ a, float* __restrict__ b)
 {
 	int i, z;
 	for(i=0; i<SIZE; i++)
 	{
		 z = i % 2;
		 switch (z)
 		{
 			case 0: { a[i] -= b[i]; break; }
 			case 1: { a[i]+=b[i]; break; }
 			default: return;
		 }
 	}
 }


