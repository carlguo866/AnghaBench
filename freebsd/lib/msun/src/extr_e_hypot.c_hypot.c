
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int GET_LOW_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;
 double fabs (double) ;
 double fabsl (double) ;
 double sqrt (double) ;

double
__ieee754_hypot(double x, double y)
{
 double a,b,t1,t2,y1,y2,w;
 int32_t j,k,ha,hb;

 GET_HIGH_WORD(ha,x);
 ha &= 0x7fffffff;
 GET_HIGH_WORD(hb,y);
 hb &= 0x7fffffff;
 if(hb > ha) {a=y;b=x;j=ha; ha=hb;hb=j;} else {a=x;b=y;}
 a = fabs(a);
 b = fabs(b);
 if((ha-hb)>0x3c00000) {return a+b;}
 k=0;
 if(ha > 0x5f300000) {
    if(ha >= 0x7ff00000) {
        u_int32_t low;

        w = fabsl(x+0.0L)-fabs(y+0);
        GET_LOW_WORD(low,a);
        if(((ha&0xfffff)|low)==0) w = a;
        GET_LOW_WORD(low,b);
        if(((hb^0x7ff00000)|low)==0) w = b;
        return w;
    }

    ha -= 0x25800000; hb -= 0x25800000; k += 600;
    SET_HIGH_WORD(a,ha);
    SET_HIGH_WORD(b,hb);
 }
 if(hb < 0x20b00000) {
     if(hb <= 0x000fffff) {
         u_int32_t low;
  GET_LOW_WORD(low,b);
  if((hb|low)==0) return a;
  t1=0;
  SET_HIGH_WORD(t1,0x7fd00000);
  b *= t1;
  a *= t1;
  k -= 1022;
     } else {
         ha += 0x25800000;
  hb += 0x25800000;
  k -= 600;
  SET_HIGH_WORD(a,ha);
  SET_HIGH_WORD(b,hb);
     }
 }

 w = a-b;
 if (w>b) {
     t1 = 0;
     SET_HIGH_WORD(t1,ha);
     t2 = a-t1;
     w = sqrt(t1*t1-(b*(-b)-t2*(a+t1)));
 } else {
     a = a+a;
     y1 = 0;
     SET_HIGH_WORD(y1,hb);
     y2 = b - y1;
     t1 = 0;
     SET_HIGH_WORD(t1,ha+0x00100000);
     t2 = a - t1;
     w = sqrt(t1*y1-(w*(-w)-(t1*y2+t2*b)));
 }
 if(k!=0) {
     u_int32_t high;
     t1 = 1.0;
     GET_HIGH_WORD(high,t1);
     SET_HIGH_WORD(t1,high+(k<<20));
     return t1*w;
 } else return w;
}
