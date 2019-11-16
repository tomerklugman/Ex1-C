#include <stdio.h>
#include "myMath.h"


int main()

{
  
double x;

printf("please insert a real number:");

scanf("%lf",&x);

int roundown=x;

printf("‫‪i.the value of f(x)=e^x+x^3-2 at the point of %g is:%0.4lf \n",x,sub(add(Exp(roundown),Pow(x,3)),2));
printf("‫‪ii.the value of f(x)=3x+2x^2 at the point of %g is:%0.4lf \n",x,add(mul(3,x),mul(2,Pow(x,2))));
printf("‫‪iii.the value of f(x)=(4x^3)/5-2x at the point of %g is:%0.4lf \n",x,sub(div(mul(4,Pow(x,3)),5),mul(2,x)));

 
   return 0;

}
