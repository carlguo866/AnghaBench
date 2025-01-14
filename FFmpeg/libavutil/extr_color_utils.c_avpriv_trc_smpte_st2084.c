
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double const,double const) ;

__attribute__((used)) static double avpriv_trc_smpte_st2084(double Lc)
{
    const double c1 = 3424.0 / 4096.0;
    const double c2 = 32.0 * 2413.0 / 4096.0;
    const double c3 = 32.0 * 2392.0 / 4096.0;
    const double m = 128.0 * 2523.0 / 4096.0;
    const double n = 0.25 * 2610.0 / 4096.0;
    const double L = Lc / 10000.0;
    const double Ln = pow(L, n);

    return (0.0 > Lc) ? 0.0
         : pow((c1 + c2 * Ln) / (1.0 + c3 * Ln), m);

}
