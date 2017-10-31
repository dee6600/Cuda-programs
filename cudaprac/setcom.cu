#include<stdio.h>
#include<cuda.h>

int main()
{
cudaDeviceProp p;
int count,i,flag=0;

cudaGetDeviceCount(&count);

for(i=0;i<count;i++)
{
    cudaGetDeviceProperties(&p,i);


        if(p.major==1 && p.minor==2)
        {
            cudaSetDevice(i);
            printf("GPU with Compute Capability 1.2 is set as current GPU on your system.\n");
            flag=1;
        }




