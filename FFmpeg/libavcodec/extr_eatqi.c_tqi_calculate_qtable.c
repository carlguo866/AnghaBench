
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int* intra_matrix; } ;
typedef TYPE_1__ TqiContext ;


 int* ff_inv_aanscales ;
 int* ff_mpeg1_default_intra_matrix ;

__attribute__((used)) static void tqi_calculate_qtable(TqiContext *t, int quant)
{
    const int64_t qscale = (215 - 2*quant)*5;
    int i;

    t->intra_matrix[0] = (ff_inv_aanscales[0] * ff_mpeg1_default_intra_matrix[0]) >> 11;
    for(i=1; i<64; i++)
        t->intra_matrix[i] = (ff_inv_aanscales[i] * ff_mpeg1_default_intra_matrix[i] * qscale + 32) >> 14;
}
