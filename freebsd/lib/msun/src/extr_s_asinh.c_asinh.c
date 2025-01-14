
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 double __ieee754_log (double) ;
 double __ieee754_sqrt (double) ;
 double fabs (double) ;
 double huge ;
 double ln2 ;
 double log1p (double) ;
 double one ;

double
asinh(double x)
{
 double t,w;
 int32_t hx,ix;
 GET_HIGH_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7ff00000) return x+x;
 if(ix< 0x3e300000) {
     if(huge+x>one) return x;
 }
 if(ix>0x41b00000) {
     w = __ieee754_log(fabs(x))+ln2;
 } else if (ix>0x40000000) {
     t = fabs(x);
     w = __ieee754_log(2.0*t+one/(__ieee754_sqrt(x*x+one)+t));
 } else {
     t = x*x;
     w =log1p(fabs(x)+t/(one+__ieee754_sqrt(one+t)));
 }
 if(hx>0) return w; else return -w;
}
