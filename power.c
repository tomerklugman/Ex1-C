#include "myMath.h"



double Exp(int x)
{
    
return Pow(EXP,x);

}

double Pow(double x , int y)
{
if (x==0) return 0;
if(y==0) return 1;
else if(y<0) return Pow(x,y+1)/x;    
return x*Pow(x,y-1);

}
