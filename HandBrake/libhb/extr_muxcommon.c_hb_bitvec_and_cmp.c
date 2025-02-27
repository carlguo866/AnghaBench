
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int* vec; } ;
typedef TYPE_1__ hb_bitvec_t ;



__attribute__((used)) static int hb_bitvec_and_cmp(hb_bitvec_t *bv1, hb_bitvec_t *bv2, hb_bitvec_t *bv3)
{
    if (bv1->size != bv2->size)
        return 0;

    int ii;
    int words = (bv1->size + 31) >> 5;
    for (ii = 0; ii < words; ii++)
        if ((bv1->vec[ii] & bv2->vec[ii]) != bv3->vec[ii])
            return 0;
    return 1;
}
