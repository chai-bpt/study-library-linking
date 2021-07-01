#include<stdio.h>

int add(int num1, int num2)
{
	int sum = 0;

	printf("\n%s",__func__);

	printf("\n%s\tnum1 = %d",__func__,num1);
	printf("\n%s\tnum2 = %d",__func__,num2);

	sum = num1 + num2;

	printf("\n%s\tsum = %d",__func__,sum);

	printf("\n%s",__func__);

	return sum;
}

	
