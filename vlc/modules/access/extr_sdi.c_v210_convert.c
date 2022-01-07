
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int READ_PIXELS (int *,int *,int *) ;
 int av_le2ne32 (int ) ;

void v210_convert(uint16_t *dst, const uint32_t *bytes, const int width, const int height)
{
    const int stride = ((width + 47) / 48) * 48 * 8 / 3 / 4;
    uint16_t *y = &dst[0];
    uint16_t *u = &dst[width * height * 2 / 2];
    uint16_t *v = &dst[width * height * 3 / 2];
    for (int h = 0; h < height; h++) {
        const uint32_t *src = bytes;
        uint32_t val = 0;
        int w;
        for (w = 0; w < width - 5; w += 6) {
            do { val = av_le2ne32(*src++); *u++ = val & 0x3FF; *y++ = (val >> 10) & 0x3FF; *v++ = (val >> 20) & 0x3FF; } while (0);
            do { val = av_le2ne32(*src++); *y++ = val & 0x3FF; *u++ = (val >> 10) & 0x3FF; *y++ = (val >> 20) & 0x3FF; } while (0);
            do { val = av_le2ne32(*src++); *v++ = val & 0x3FF; *y++ = (val >> 10) & 0x3FF; *u++ = (val >> 20) & 0x3FF; } while (0);
            do { val = av_le2ne32(*src++); *y++ = val & 0x3FF; *v++ = (val >> 10) & 0x3FF; *y++ = (val >> 20) & 0x3FF; } while (0);
        }
        if (w < width - 1) {
            do { val = av_le2ne32(*src++); *u++ = val & 0x3FF; *y++ = (val >> 10) & 0x3FF; *v++ = (val >> 20) & 0x3FF; } while (0);

            val = av_le2ne32(*src++);
            *y++ = val & 0x3FF;
        }
        if (w < width - 3) {
            *u++ = (val >> 10) & 0x3FF;
            *y++ = (val >> 20) & 0x3FF;

            val = av_le2ne32(*src++);
            *v++ = val & 0x3FF;
            *y++ = (val >> 10) & 0x3FF;
        }

        bytes += stride;
    }
}
