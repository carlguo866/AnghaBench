
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int* cont_map ;
 int j44 (int,int) ;
 int r1 () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static int ktti_read_regr( PIA *pi, int cont, int regr )

{ int a, b, r;

        r = regr + cont_map[cont];

        w0(r); w2(0xb); w2(0xa); w2(9); w2(0xc); w2(9);
 a = r1(); w2(0xc); b = r1(); w2(9); w2(0xc); w2(9);
 return j44(a,b);

}
