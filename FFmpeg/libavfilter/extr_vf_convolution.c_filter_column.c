
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static void filter_column(uint8_t *dst, int height,
                          float rdiv, float bias, const int *const matrix,
                          const uint8_t *c[], int peak, int radius,
                          int dstride, int stride)
{
    int y;

    for (y = 0; y < height; y++) {
        int i, sum = 0;

        for (i = 0; i < 2 * radius + 1; i++)
            sum += c[i][0 + y * stride] * matrix[i];

        sum = (int)(sum * rdiv + bias + 0.5f);
        dst[0] = av_clip_uint8(sum);
        dst += dstride;
    }
}
