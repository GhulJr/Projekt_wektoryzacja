 #define SIZE 100
 void foo(float* __restrict__ a)
 {
 	float c = 0;
 	int i;
 	for(i = 0; i < SIZE; ++i)
 	{
 		c+=a[i];
	 }
}



