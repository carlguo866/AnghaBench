
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int uint16_t ;


 int AV_RL16 (unsigned int*) ;
 int AV_WL16 (unsigned int*,int) ;

__attribute__((used)) static void blend_pixel16(uint8_t *dst, unsigned src, unsigned alpha,
                          const uint8_t *mask, int mask_linesize, int l2depth,
                          unsigned w, unsigned h, unsigned shift, unsigned xm0)
{
    unsigned xm, x, y, t = 0;
    unsigned xmshf = 3 - l2depth;
    unsigned xmmod = 7 >> l2depth;
    unsigned mbits = (1 << (1 << l2depth)) - 1;
    unsigned mmult = 255 / mbits;
    uint16_t value = AV_RL16(dst);

    for (y = 0; y < h; y++) {
        xm = xm0;
        for (x = 0; x < w; x++) {
            t += ((mask[xm >> xmshf] >> ((~xm & xmmod) << l2depth)) & mbits)
                 * mmult;
            xm++;
        }
        mask += mask_linesize;
    }
    alpha = (t >> shift) * alpha;
    AV_WL16(dst, ((0x10001 - alpha) * value + alpha * src) >> 16);
}
