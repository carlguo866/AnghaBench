
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void rearrange_lsp(int order, float *lsp, float min_dist)
{
    int i;
    float min_dist2 = min_dist * 0.5;
    for (i = 1; i < order; i++)
        if (lsp[i] - lsp[i - 1] < min_dist) {
            float avg = (lsp[i] + lsp[i - 1]) * 0.5;

            lsp[i - 1] = avg - min_dist2;
            lsp[i] = avg + min_dist2;
        }
}
