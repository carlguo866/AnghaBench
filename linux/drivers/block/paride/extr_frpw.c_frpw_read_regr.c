
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int cec4 ;
 int* cont_map ;
 int j44 (int,int) ;
 int r1 () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static int frpw_read_regr( PIA *pi, int cont, int regr )

{ int h,l,r;

 r = regr + cont_map[cont];

 w2(4);
 w0(r); cec4;
 w2(6); l = r1();
 w2(4); h = r1();
 w2(4);

 return j44(l,h);

}
