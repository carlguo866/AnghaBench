
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static void filter_5x5(uint8_t *dst, int width,
                       float rdiv, float bias, const int *const matrix,
                       const uint8_t *c[], int peak, int radius,
                       int dstride, int stride)
{
    int x;

    for (x = 0; x < width; x++) {
        int i, sum = 0;

        for (i = 0; i < 25; i++)
            sum += c[i][x] * matrix[i];

        sum = (int)(sum * rdiv + bias + 0.5f);
        dst[x] = av_clip_uint8(sum);
    }
}
