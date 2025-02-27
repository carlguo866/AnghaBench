
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;
typedef int NNEDIContext ;


 float FFABS (float) ;

__attribute__((used)) static void compute_network0new(NNEDIContext *s, const float *datai, const float *weights, uint8_t *d)
{
    int16_t *data = (int16_t *)datai;
    int16_t *ws = (int16_t *)weights;
    float *wf = (float *)&ws[4 * 64];
    float vals[8];
    int mask, i, j;

    for (i = 0; i < 4; i++) {
        int sum = 0;
        float t;

        for (j = 0; j < 64; j++)
            sum += data[j] * ws[(i << 3) + ((j >> 3) << 5) + (j & 7)];
        t = sum * wf[i] + wf[4 + i];
        vals[i] = t / (1.0f + FFABS(t));
    }

    for (i = 0; i < 4; i++) {
        float sum = 0.0f;

        for (j = 0; j < 4; j++)
            sum += vals[j] * wf[8 + i + (j << 2)];
        vals[4 + i] = sum + wf[8 + 16 + i];
    }

    mask = 0;
    for (i = 0; i < 4; i++) {
        if (vals[4 + i] > 0.0f)
            mask |= (0x1 << (i << 3));
    }

    ((int *)d)[0] = mask;
}
