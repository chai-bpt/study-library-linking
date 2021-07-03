#include<stdio.h>


int div(int num1, int num2)
{
	int div = 0;

	printf("\n%s",__func__);

	printf("\n%s\tnum1 = %d",__func__,num1);
	printf("\n%s\tnum2 = %d",__func__,num2);

	div = num1 / num2;

	printf("\n%s\tdiv = %d",__func__,div);

	printf("\n%s",__func__);

	return div;

}

int mul(int num1, int num2)
{
	int mul = 0;

	printf("\n%s",__func__);

	printf("\n%s\tnum1 = %d",__func__,num1);
	printf("\n%s\tnum2 = %d",__func__,num2);

	for(; num2; num2--)
	{
		mul = add(num1, mul);
	}

	printf("\n%s\tmul = %d",__func__,mul);

	printf("\n%s",__func__);

	return mul;
}

	
