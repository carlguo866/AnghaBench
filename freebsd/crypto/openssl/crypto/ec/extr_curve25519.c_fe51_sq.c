
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u128 ;
typedef int* fe51 ;


 int MASK51 ;
 int fe51_mul (int*,int* const,int* const) ;

__attribute__((used)) static void fe51_sq(fe51 h, const fe51 f)
{




    uint64_t g0 = f[0];
    uint64_t g1 = f[1];
    uint64_t g2 = f[2];
    uint64_t g3 = f[3];
    uint64_t g4 = f[4];
    u128 h0, h1, h2, h3, h4;

    h0 = (u128)g0 * g0; g0 *= 2;
    h1 = (u128)g0 * g1;
    h2 = (u128)g0 * g2;
    h3 = (u128)g0 * g3;
    h4 = (u128)g0 * g4;

    g0 = g4;
    h3 += (u128)g0 * (g4 *= 19);

    h2 += (u128)g1 * g1; g1 *= 2;
    h3 += (u128)g1 * g2;
    h4 += (u128)g1 * g3;
    h0 += (u128)g1 * g4;

    g0 = g3;
    h1 += (u128)g0 * (g3 *= 19);
    h2 += (u128)(g0 * 2) * g4;

    h4 += (u128)g2 * g2; g2 *= 2;
    h0 += (u128)g2 * g3;
    h1 += (u128)g2 * g4;


    h3 += (uint64_t)(h2 >> 51); g2 = (uint64_t)h2 & MASK51;
    h1 += (uint64_t)(h0 >> 51); g0 = (uint64_t)h0 & MASK51;

    h4 += (uint64_t)(h3 >> 51); g3 = (uint64_t)h3 & MASK51;
    g2 += (uint64_t)(h1 >> 51); g1 = (uint64_t)h1 & MASK51;

    g0 += (uint64_t)(h4 >> 51) * 19; g4 = (uint64_t)h4 & MASK51;
    g3 += g2 >> 51; g2 &= MASK51;
    g1 += g0 >> 51; g0 &= MASK51;

    h[0] = g0;
    h[1] = g1;
    h[2] = g2;
    h[3] = g3;
    h[4] = g4;

}
