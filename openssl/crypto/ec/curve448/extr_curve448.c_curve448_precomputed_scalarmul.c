
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int scalar1x ;
typedef TYPE_1__* niels_t ;
typedef int ni ;
typedef int mask_t ;
typedef TYPE_1__* curve448_scalar_t ;
struct TYPE_16__ {int * table; } ;
typedef TYPE_3__ curve448_precomputed_s ;
typedef int curve448_point_t ;
struct TYPE_15__ {unsigned int* limb; } ;


 unsigned int C448_SCALAR_BITS ;
 unsigned int COMBS_N ;
 unsigned int COMBS_S ;
 unsigned int COMBS_T ;
 int OPENSSL_cleanse (TYPE_1__*,int) ;
 unsigned int WBITS ;
 int add_niels_to_pt (int ,TYPE_1__*,int) ;
 int cond_neg_niels (TYPE_1__*,int) ;
 int constant_time_lookup_niels (TYPE_1__*,int *,int,int) ;
 int curve448_scalar_add (TYPE_1__*,TYPE_1__* const,int ) ;
 int curve448_scalar_halve (TYPE_1__*,TYPE_1__*) ;
 int niels_to_pt (int ,TYPE_1__*) ;
 int point_double_internal (int ,int ,int ) ;
 int precomputed_scalarmul_adjustment ;

void curve448_precomputed_scalarmul(curve448_point_t out,
                                    const curve448_precomputed_s * table,
                                    const curve448_scalar_t scalar)
{
    unsigned int i, j, k;
    const unsigned int n = COMBS_N, t = COMBS_T, s = COMBS_S;
    niels_t ni;
    curve448_scalar_t scalar1x;

    curve448_scalar_add(scalar1x, scalar, precomputed_scalarmul_adjustment);
    curve448_scalar_halve(scalar1x, scalar1x);

    for (i = s; i > 0; i--) {
        if (i != s)
            point_double_internal(out, out, 0);

        for (j = 0; j < n; j++) {
            int tab = 0;
            mask_t invert;

            for (k = 0; k < t; k++) {
                unsigned int bit = (i - 1) + s * (k + j * t);

                if (bit < C448_SCALAR_BITS)
                    tab |=
                        (scalar1x->limb[bit / WBITS] >> (bit % WBITS) & 1) << k;
            }

            invert = (tab >> (t - 1)) - 1;
            tab ^= invert;
            tab &= (1 << (t - 1)) - 1;

            constant_time_lookup_niels(ni, &table->table[j << (t - 1)],
                                       1 << (t - 1), tab);

            cond_neg_niels(ni, invert);
            if ((i != s) || j != 0)
                add_niels_to_pt(out, ni, j == n - 1 && i != 1);
            else
                niels_to_pt(out, ni);
        }
    }

    OPENSSL_cleanse(ni, sizeof(ni));
    OPENSSL_cleanse(scalar1x, sizeof(scalar1x));
}
