
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void deinterleaveBytes_c(const uint8_t *src, uint8_t *dst1, uint8_t *dst2,
                                int width, int height, int srcStride,
                                int dst1Stride, int dst2Stride)
{
    int h;

    for (h = 0; h < height; h++) {
        int w;
        for (w = 0; w < width; w++) {
            dst1[w] = src[2 * w + 0];
            dst2[w] = src[2 * w + 1];
        }
        src += srcStride;
        dst1 += dst1Stride;
        dst2 += dst2Stride;
    }
}
