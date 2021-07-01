#include<stdio.h>

int sub(int* pnum1, int* pnum2, int* pdiff)
{

	printf("\n%s",__func__);	
	
	printf("\n%s\tpnum1 address = 0x%x",__func__,pnum1);
	printf("\n%s\tpnum1 value = %d",__func__,*pnum1);
	
	printf("\n%s\tpnum2 address = 0x%x",__func__,pnum2);
	printf("\n%s\tpnum2 value = %d",__func__,*pnum2);

	printf("\n%s\tpdiff address = 0x%x",__func__,pdiff);
	printf("\n%s\tpdiff value = %d",__func__,*pdiff);

	(*pdiff) = ((*pnum1) - (*pnum2));

	printf("\n%s\tpdiff address = 0x%x",__func__,pdiff);	
	printf("\n%s\tpdiff value = %d",__func__,*pdiff);
	
	printf("\n%s",__func__);	
	
	return (0);
}

	
