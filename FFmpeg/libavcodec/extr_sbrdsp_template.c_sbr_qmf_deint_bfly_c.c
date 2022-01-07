
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INTFLOAT ;



__attribute__((used)) static void sbr_qmf_deint_bfly_c(INTFLOAT *v, const INTFLOAT *src0, const INTFLOAT *src1)
{
    int i;
    for (i = 0; i < 64; i++) {




        v[ i] = src0[i] - src1[63 - i];
        v[127 - i] = src0[i] + src1[63 - i];

    }
}
