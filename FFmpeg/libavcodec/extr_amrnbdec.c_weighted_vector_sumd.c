
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void weighted_vector_sumd(double *out, const double *in_a,
                                 const double *in_b, double weight_coeff_a,
                                 double weight_coeff_b, int length)
{
    int i;

    for (i = 0; i < length; i++)
        out[i] = weight_coeff_a * in_a[i]
               + weight_coeff_b * in_b[i];
}
