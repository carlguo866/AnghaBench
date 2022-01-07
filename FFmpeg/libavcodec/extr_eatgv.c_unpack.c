
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;
 int AV_RB16 (int const*) ;
 int AV_RB24 (int const*) ;
 int FFMIN (int,int) ;
 int av_memcpy_backptr (int*,int,int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int unpack(const uint8_t *src, const uint8_t *src_end,
                  uint8_t *dst, int width, int height)
{
    uint8_t *dst_end = dst + width*height;
    int size, size1, size2, offset, run;
    uint8_t *dst_start = dst;

    if (src[0] & 0x01)
        src += 5;
    else
        src += 2;

    if (src_end - src < 3)
        return AVERROR_INVALIDDATA;
    size = AV_RB24(src);
    src += 3;

    while (size > 0 && src < src_end) {


        size1 = (src[0] & 3);
        if (src[0] & 0x80) {
            if (src[0] & 0x40 ) {
                if (src[0] & 0x20) {
                    if (src[0] < 0xFC)
                        size1 = (((src[0] & 31) + 1) << 2);
                    src++;
                    size2 = 0;
                } else {
                    offset = ((src[0] & 0x10) << 12) + AV_RB16(&src[1]) + 1;
                    size2 = ((src[0] & 0xC) << 6) + src[3] + 5;
                    src += 4;
                }
            } else {
                size1 = ((src[1] & 0xC0) >> 6);
                offset = (AV_RB16(&src[1]) & 0x3FFF) + 1;
                size2 = (src[0] & 0x3F) + 4;
                src += 3;
            }
        } else {
            offset = ((src[0] & 0x60) << 3) + src[1] + 1;
            size2 = ((src[0] & 0x1C) >> 2) + 3;
            src += 2;
        }



        if (size1 > src_end - src)
            break;

        if (size1 > 0) {
            size -= size1;
            run = FFMIN(size1, dst_end - dst);
            memcpy(dst, src, run);
            dst += run;
            src += run;
        }

        if (size2 > 0) {
            if (dst - dst_start < offset)
                return 0;
            size -= size2;
            run = FFMIN(size2, dst_end - dst);
            av_memcpy_backptr(dst, offset, run);
            dst += run;
        }
    }

    return 0;
}
