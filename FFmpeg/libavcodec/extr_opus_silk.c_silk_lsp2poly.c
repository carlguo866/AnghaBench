
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int ROUND_MULL (int const,int,int) ;

__attribute__((used)) static void silk_lsp2poly(const int32_t lsp[16], int32_t pol[16], int half_order)
{
    int i, j;

    pol[0] = 65536;
    pol[1] = -lsp[0];

    for (i = 1; i < half_order; i++) {
        pol[i + 1] = pol[i - 1] * 2 - ROUND_MULL(lsp[2 * i], pol[i], 16);
        for (j = i; j > 1; j--)
            pol[j] += pol[j - 2] - ROUND_MULL(lsp[2 * i], pol[j - 1], 16);

        pol[1] -= lsp[2 * i];
    }
}
