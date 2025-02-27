
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int const AV_RN16A (int const*) ;
 int av_clip (int,int ,int) ;

__attribute__((used)) static void filter16_3x3(uint8_t *dstp, int width,
                         float rdiv, float bias, const int *const matrix,
                         const uint8_t *c[], int peak, int radius,
                         int dstride, int stride)
{
    uint16_t *dst = (uint16_t *)dstp;
    int x;

    for (x = 0; x < width; x++) {
        int sum = AV_RN16A(&c[0][2 * x]) * matrix[0] +
                  AV_RN16A(&c[1][2 * x]) * matrix[1] +
                  AV_RN16A(&c[2][2 * x]) * matrix[2] +
                  AV_RN16A(&c[3][2 * x]) * matrix[3] +
                  AV_RN16A(&c[4][2 * x]) * matrix[4] +
                  AV_RN16A(&c[5][2 * x]) * matrix[5] +
                  AV_RN16A(&c[6][2 * x]) * matrix[6] +
                  AV_RN16A(&c[7][2 * x]) * matrix[7] +
                  AV_RN16A(&c[8][2 * x]) * matrix[8];
        sum = (int)(sum * rdiv + bias + 0.5f);
        dst[x] = av_clip(sum, 0, peak);
    }
}
