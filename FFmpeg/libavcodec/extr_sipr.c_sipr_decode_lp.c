
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_FILTER_ORDER ;
 int ff_amrwb_lsp2lpc (double*,float*,int) ;

__attribute__((used)) static void sipr_decode_lp(float *lsfnew, const float *lsfold, float *Az,
                           int num_subfr)
{
    double lsfint[LP_FILTER_ORDER];
    int i,j;
    float t, t0 = 1.0 / num_subfr;

    t = t0 * 0.5;
    for (i = 0; i < num_subfr; i++) {
        for (j = 0; j < LP_FILTER_ORDER; j++)
            lsfint[j] = lsfold[j] * (1 - t) + t * lsfnew[j];

        ff_amrwb_lsp2lpc(lsfint, Az, LP_FILTER_ORDER);
        Az += LP_FILTER_ORDER;
        t += t0;
    }
}
