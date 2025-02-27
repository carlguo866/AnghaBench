
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int srcW; } ;
typedef TYPE_1__ SwsContext ;


 int av_assert0 (int) ;
 int output_pixel (int ,int) ;

__attribute__((used)) static int planar8ToP01xleWrapper(SwsContext *c, const uint8_t *src[],
                                  int srcStride[], int srcSliceY,
                                  int srcSliceH, uint8_t *dstParam8[],
                                  int dstStride[])
{
    uint16_t *dstY = (uint16_t*)(dstParam8[0] + dstStride[0] * srcSliceY);
    uint16_t *dstUV = (uint16_t*)(dstParam8[1] + dstStride[1] * srcSliceY / 2);
    int x, y, t;

    av_assert0(!(dstStride[0] % 2 || dstStride[1] % 2));

    for (y = 0; y < srcSliceH; y++) {
        uint16_t *tdstY = dstY;
        const uint8_t *tsrc0 = src[0];
        for (x = c->srcW; x > 0; x--) {
            t = *tsrc0++;
            output_pixel(tdstY++, t | (t << 8));
        }
        src[0] += srcStride[0];
        dstY += dstStride[0] / 2;

        if (!(y & 1)) {
            uint16_t *tdstUV = dstUV;
            const uint8_t *tsrc1 = src[1];
            const uint8_t *tsrc2 = src[2];
            for (x = c->srcW / 2; x > 0; x--) {
                t = *tsrc1++;
                output_pixel(tdstUV++, t | (t << 8));
                t = *tsrc2++;
                output_pixel(tdstUV++, t | (t << 8));
            }
            src[1] += srcStride[1];
            src[2] += srcStride[2];
            dstUV += dstStride[1] / 2;
        }
    }

    return srcSliceH;
}
