#include<stdio.h>
#include<dlfcn.h>
#include<stdlib.h>

int main(void)
{
       int num1 = 3;
       int num2 = 1;
       int sum = 0;
       
       int diff = 0;
       int ret = 0;

       int mulval = 0;
       int divval = 0;

       int (*add)(int,int);
       int (*sub)(int*,int*,int*);
       void* handleAddSub = NULL;
       
       int (*mul)(int,int);
       int (*div)(int,int);
       void* handleMulDiv = NULL;

       printf("\n%s",__func__);


       handleMulDiv = dlopen("./libMulDiv.so",RTLD_LAZY);
       if(handleMulDiv == NULL)
       {
	       printf("\n%s\tFail to load libMulDiv.so\n",__func__);
	       exit(-1);
       }
       printf("\n%s\thandleMulDiv = 0x%x",__func__,handleMulDiv);
       

       mul = dlsym(handleMulDiv,"mul");
       div = dlsym(handleMulDiv,"div");  
       printf("\n%s\tmul = 0x%x",__func__,mul);
       printf("\n%s\tdiv = 0x%x",__func__,div);


       printf("\n%s\tnum1 = %d",__func__,num1);
       printf("\n%s\tnum2 = %d",__func__,num2);
       
       divval = div(num1, num2);
       printf("\n%s\tdivval = %d",__func__,divval);

//       mulval = mul(num1, num2); 
//       printf("\n%s\tmulval = %d",__func__,mulval);

//       dlclose(handleMulDiv);

       handleAddSub = dlopen("./libAddSub.so",RTLD_NOW|RTLD_GLOBAL);
       if(handleAddSub == NULL)
       {
	       printf("\n%s\tFail to load libAddSub.so\n",__func__);
	       exit(-1);
       }
       printf("\n%s\thandleAddSub = 0x%x",__func__,handleAddSub);

       mulval = mul(num1, num2); 
       printf("\n%s\tmulval = %d",__func__,mulval);
       dlclose(handleMulDiv);

       add = dlsym(handleAddSub,"add");
       sub = dlsym(handleAddSub,"sub");
       printf("\n%s\tadd = 0x%x",__func__,add);
       printf("\n%s\tsub = 0x%x",__func__,sub);

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
     
       dlclose(handleAddSub);

       printf("\n%s\n",__func__);

       return 0;
}
