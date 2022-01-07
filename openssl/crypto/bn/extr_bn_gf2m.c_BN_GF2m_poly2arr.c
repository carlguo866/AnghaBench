
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_TBIT ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;

int BN_GF2m_poly2arr(const BIGNUM *a, int p[], int max)
{
    int i, j, k = 0;
    BN_ULONG mask;

    if (BN_is_zero(a))
        return 0;

    for (i = a->top - 1; i >= 0; i--) {
        if (!a->d[i])

            continue;
        mask = BN_TBIT;
        for (j = BN_BITS2 - 1; j >= 0; j--) {
            if (a->d[i] & mask) {
                if (k < max)
                    p[k] = BN_BITS2 * i + j;
                k++;
            }
            mask >>= 1;
        }
    }

    if (k < max) {
        p[k] = -1;
        k++;
    }

    return k;
}
