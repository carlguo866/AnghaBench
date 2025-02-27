
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int STORE (int) ;

__attribute__((used)) static void store_slice_c(uint8_t *dst, const int16_t *src,
                          int dst_linesize, int src_linesize,
                          int width, int height, int log2_scale,
                          const uint8_t dither[8][8])
{
    int y, x;
    for (y = 0; y < height; y++) {
        const uint8_t *d = dither[y];
        for (x = 0; x < width; x += 8) {
            int temp;
            do { temp = ((src[x + y*src_linesize + 0] << log2_scale) + d[0]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 0] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 1] << log2_scale) + d[1]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 1] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 2] << log2_scale) + d[2]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 2] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 3] << log2_scale) + d[3]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 3] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 4] << log2_scale) + d[4]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 4] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 5] << log2_scale) + d[5]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 5] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 6] << log2_scale) + d[6]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 6] = temp; } while (0);
            do { temp = ((src[x + y*src_linesize + 7] << log2_scale) + d[7]) >> 6; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y*dst_linesize + 7] = temp; } while (0);
        }
    }
}
