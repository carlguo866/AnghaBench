
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long double lo; long double hi; } ;


 double A10 ;
 long double A2 ;
 long double A3 ;
 long double A4 ;
 long double A5 ;
 double A6 ;
 double A7 ;
 double A8 ;
 double A9 ;
 unsigned int INTERVALS ;
 double INV_L ;
 double L1 ;
 double L2 ;
 int LOG2_INTERVALS ;
 int irint (double) ;
 double rnint (double) ;
 TYPE_1__* tbl ;

__attribute__((used)) static inline void
__k_expl(long double x, long double *hip, long double *lop, int *kp)
{
 long double q, r, r1, t;
 double dr, fn, r2;
 int n, n2;


 fn = rnint((double)x * INV_L);
 n = irint(fn);
 n2 = (unsigned)n % INTERVALS;

 *kp = n >> LOG2_INTERVALS;
 r1 = x - fn * L1;
 r2 = fn * -L2;
 r = r1 + r2;


 dr = r;
 q = r2 + r * r * (A2 + r * (A3 + r * (A4 + r * (A5 + r * (A6 +
     dr * (A7 + dr * (A8 + dr * (A9 + dr * A10))))))));
 t = tbl[n2].lo + tbl[n2].hi;
 *hip = tbl[n2].hi;
 *lop = tbl[n2].lo + t * (q + r1);
}
