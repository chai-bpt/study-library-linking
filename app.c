#include<stdio.h>

int main(void)
{
       int num1 = 3;
       int num2 = 1;
       int sum = 0;
       
       int diff = 0;
       int ret = 0;
       
       printf("\n%s",__func__);


       printf("\n%s\tnum1 = %d",__func__,num1);
       printf("\n%s\tnum2 = %d",__func__,num2);     
       printf("\n%s\tsum = %d",__func__,sum);
  

       sum = add(num1, num2);
 
       printf("\n%s\tsum = %d",__func__,sum);
      

       printf("\n%s\tnum1 address = 0x%x",__func__,&num1);
       printf("\n%s\tnum2 address = 0x%x",__func__,&num2);  
       printf("\n%s\tdiff address = 0x%x",__func__,&diff);
       printf("\n%s\tdiff = %d",__func__,diff);
       

       ret = sub(&num1, &num2, &diff);  

       printf("\n%s\tdiff = %d",__func__,diff);
     
      
       printf("\n%s\n",__func__);

       return 0;
}
