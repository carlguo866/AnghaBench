
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef int u_int32_t ;
typedef scalar_t__ man_t ;
typedef int int32_t ;


 int DESW (int) ;
 int ESW (int) ;
 int GET_HIGH_WORD (int,long double) ;
 int GET_LDBL_MAN (scalar_t__,scalar_t__,long double) ;
 scalar_t__ LDBL_NBIT ;
 int MANT_DIG ;
 int MAX_EXP ;
 int SET_HIGH_WORD (long double,int) ;
 long double fabsl (long double) ;
 long double sqrtl (long double) ;

long double
hypotl(long double x, long double y)
{
 long double a=x,b=y,t1,t2,y1,y2,w;
 int32_t j,k,ha,hb;

 GET_HIGH_WORD(ha,x);
 ha &= 0x7fff;
 GET_HIGH_WORD(hb,y);
 hb &= 0x7fff;
 if(hb > ha) {a=y;b=x;j=ha; ha=hb;hb=j;} else {a=x;b=y;}
 a = fabsl(a);
 b = fabsl(b);
 if((ha-hb)>DESW(MANT_DIG+7)) {return a+b;}
 k=0;
 if(ha > ESW(MAX_EXP/2-12)) {
    if(ha >= ESW(MAX_EXP)) {
        man_t manh, manl;

        w = fabsl(x+0.0L)-fabsl(y+0);
        GET_LDBL_MAN(manh,manl,a);
        if (manh == LDBL_NBIT && manl == 0) w = a;
        GET_LDBL_MAN(manh,manl,b);
        if (hb >= ESW(MAX_EXP) && manh == LDBL_NBIT && manl == 0) w = b;
        return w;
    }

    ha -= DESW(MAX_EXP/2+88); hb -= DESW(MAX_EXP/2+88);
    k += MAX_EXP/2+88;
    SET_HIGH_WORD(a,ha);
    SET_HIGH_WORD(b,hb);
 }
 if(hb < ESW(-(MAX_EXP/2-12))) {
     if(hb <= 0) {
         man_t manh, manl;
  GET_LDBL_MAN(manh,manl,b);
  if((manh|manl)==0) return a;
  t1=0;
  SET_HIGH_WORD(t1,ESW(MAX_EXP-2));
  b *= t1;
  a *= t1;
  k -= MAX_EXP-2;
     } else {
  ha += DESW(MAX_EXP/2+88);
  hb += DESW(MAX_EXP/2+88);
  k -= MAX_EXP/2+88;
  SET_HIGH_WORD(a,ha);
  SET_HIGH_WORD(b,hb);
     }
 }

 w = a-b;
 if (w>b) {
     t1 = a;
     union IEEEl2bits uv;
     uv.e = t1; uv.bits.manl = 0; t1 = uv.e;
     t2 = a-t1;
     w = sqrtl(t1*t1-(b*(-b)-t2*(a+t1)));
 } else {
     a = a+a;
     y1 = b;
     union IEEEl2bits uv;
     uv.e = y1; uv.bits.manl = 0; y1 = uv.e;
     y2 = b - y1;
     t1 = a;
     uv.e = t1; uv.bits.manl = 0; t1 = uv.e;
     t2 = a - t1;
     w = sqrtl(t1*y1-(w*(-w)-(t1*y2+t2*b)));
 }
 if(k!=0) {
     u_int32_t high;
     t1 = 1.0;
     GET_HIGH_WORD(high,t1);
     SET_HIGH_WORD(t1,high+DESW(k));
     return t1*w;
 } else return w;
}
