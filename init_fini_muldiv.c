#include<stdio.h>

void _init(void)
{
	printf("\n%s",__func__);

	printf("\n%s\tmuldiv::called when the executable or shared object is loaded",__func__);
	
	printf("\n%s\n",__func__);

	return;
}

	
void _fini(void)
{
	printf("\n%s",__func__);
	
	printf("\n%s\tmuldiv::called when the executable or shared object is unloaded",__func__);
	
	printf("\n%s\n",__func__);

	return;
}
