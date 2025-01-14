
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double re; double im; } ;
typedef TYPE_1__ FFTComplex ;


 double M_PI ;
 double sin (double) ;

__attribute__((used)) static void preprocess(FFTComplex *in, int len)
{
    double d1, d2, d3, d4, d5, d6, d7, d8, d9, d10;
    int n, i, k;

    d5 = 2.0 * M_PI / len;
    d8 = sin(0.5 * d5);
    d8 = -2.0 * d8 * d8;
    d7 = sin(d5);
    d9 = 1.0 + d8;
    d6 = d7;
    n = len / 2;

    for (i = 1; i < len / 4; i++) {
        k = n - i;
        d2 = 0.5 * (in[i].re + in[k].re);
        d1 = 0.5 * (in[i].im - in[k].im);
        d4 = 0.5 * (in[i].im + in[k].im);
        d3 = 0.5 * (in[k].re - in[i].re);
        in[i].re = d2 + d9 * d4 + d6 * d3;
        in[i].im = d1 + d9 * d3 - d6 * d4;
        in[k].re = d2 - d9 * d4 - d6 * d3;
        in[k].im = -d1 + d9 * d3 - d6 * d4;
        d10 = d9;
        d9 += d9 * d8 - d6 * d7;
        d6 += d6 * d8 + d10 * d7;
    }

    d2 = in[0].re;
    in[0].re = d2 + in[0].im;
    in[0].im = d2 - in[0].im;
}
