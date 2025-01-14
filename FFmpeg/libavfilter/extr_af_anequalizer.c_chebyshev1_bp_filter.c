
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int a0; int b0; } ;
struct TYPE_4__ {TYPE_2__* section; } ;
typedef TYPE_1__ EqualizatorFilter ;


 double M_PI ;
 int chebyshev1_fo_section (TYPE_2__*,double,double,double,double,double,double,double,double) ;
 double cos (double) ;
 double ff_exp10 (double) ;
 double pow (double,double) ;
 double sin (double) ;
 double sqrt (int) ;
 double tan (double) ;

__attribute__((used)) static void chebyshev1_bp_filter(EqualizatorFilter *f,
                                 int N, double w0, double wb,
                                 double G, double Gb, double G0)
{
    double a, b, c0, g0, alfa, beta, tetta_b;
    double epsilon;
    int r = N % 2;
    int L = (N - r) / 2;
    int i;

    if (G == 0 && G0 == 0) {
        f->section[0].a0 = 1;
        f->section[0].b0 = 1;
        f->section[1].a0 = 1;
        f->section[1].b0 = 1;
        return;
    }

    G = ff_exp10(G/20);
    Gb = ff_exp10(Gb/20);
    G0 = ff_exp10(G0/20);

    epsilon = sqrt((G*G - Gb*Gb) / (Gb*Gb - G0*G0));
    g0 = pow(G0,1.0/N);
    alfa = pow(1.0/epsilon + sqrt(1 + 1/(epsilon*epsilon)), 1.0/N);
    beta = pow(G/epsilon + Gb * sqrt(1 + 1/(epsilon*epsilon)), 1.0/N);
    a = 0.5 * (alfa - 1.0/alfa);
    b = 0.5 * (beta - g0*g0*(1/beta));
    tetta_b = tan(wb/2);
    c0 = cos(w0);

    for (i = 1; i <= L; i++) {
        double ui = (2.0*i-1.0)/N;
        double ci = cos(M_PI*ui/2.0);
        double si = sin(M_PI*ui/2.0);
        double Di = (a*a + ci*ci)*tetta_b*tetta_b + 2.0*a*si*tetta_b + 1;

        chebyshev1_fo_section(&f->section[i - 1], a, ci, tetta_b, g0, si, b, Di, c0);
    }
}
