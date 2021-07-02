#include<stdio.h>

void _init(void)
{
	printf("\n%s",__func__);

	printf("\n%s\tcalled when the executable or shared object is loaded",__func__);

	printf("\n%s\n",__func__);

	return;
}

	
