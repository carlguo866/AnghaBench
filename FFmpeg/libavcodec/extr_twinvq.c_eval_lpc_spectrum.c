
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float eval_lpc_spectrum(const float *lsp, float cos_val, int order)
{
    int j;
    float p = 0.5f;
    float q = 0.5f;
    float two_cos_w = 2.0f * cos_val;

    for (j = 0; j + 1 < order; j += 2 * 2) {

        q *= lsp[j] - two_cos_w;
        p *= lsp[j + 1] - two_cos_w;

        q *= lsp[j + 2] - two_cos_w;
        p *= lsp[j + 3] - two_cos_w;
    }

    p *= p * (2.0f - two_cos_w);
    q *= q * (2.0f + two_cos_w);

    return 0.5 / (p + q);
}
