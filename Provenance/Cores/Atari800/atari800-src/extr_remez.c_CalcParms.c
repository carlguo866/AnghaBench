
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const Pi2 ;
 double cos (double const) ;
 double fabs (double) ;

__attribute__((used)) static void CalcParms(int r, const int Ext[], const double Grid[],
                      const double D[], const double W[],
                      double ad[], double x[], double y[])
{
 int i, j, k, ld;
 double sign, xi, delta, denom, numer;


 for (i = 0; i <= r; i++)
  x[i] = cos(Pi2 * Grid[Ext[i]]);


 ld = (r - 1) / 15 + 1;
 for (i = 0; i <= r; i++) {
  denom = 1.0;
  xi = x[i];
  for (j = 0; j < ld; j++) {
   for (k = j; k <= r; k += ld)
    if (k != i)
     denom *= 2.0 * (xi - x[k]);
  }
  if (fabs(denom) < 0.00001)
   denom = 0.00001;
  ad[i] = 1.0 / denom;
 }


 numer = denom = 0;
 sign = 1;
 for (i = 0; i <= r; i++) {
  numer += ad[i] * D[Ext[i]];
  denom += sign * ad[i] / W[Ext[i]];
  sign = -sign;
 }
 delta = numer / denom;
 sign = 1;


 for (i = 0; i <= r; i++) {
  y[i] = D[Ext[i]] - sign * delta / W[Ext[i]];
  sign = -sign;
 }
}
