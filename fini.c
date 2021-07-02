#include<stdio.h>

void _fini(void)
{
	printf("\n%s",__func__);

	printf("\n%s\tcalled when the executable or shared object is unloaded",__func__);

	printf("\n%s\n",__func__);

	return;
}

	
