#include<stdio.h>
__global__ void hellofromGPU(void)
{
	printf("hello world  \n");
}
int main(void)
{
//printf("hello world from cpu \n");
hellofromGPU <<<1,10>>>();
cudaDeviceReset();
return 0;

}
