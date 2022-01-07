
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int av_bswap16 (int) ;

__attribute__((used)) static void packed16togbra16(const uint8_t *src, int srcStride,
                             uint16_t *dst[], int dstStride[], int srcSliceH,
                             int src_alpha, int swap, int shift, int width)
{
    int x, h, i;
    int dst_alpha = dst[3] != ((void*)0);
    for (h = 0; h < srcSliceH; h++) {
        uint16_t *src_line = (uint16_t *)(src + srcStride * h);
        switch (swap) {
        case 3:
            if (src_alpha && dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[1][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[2][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[3][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                }
            } else if (dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[1][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[2][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[3][x] = 0xFFFF;
                }
            } else if (src_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[1][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[2][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    src_line++;
                }
            } else {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[1][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                    dst[2][x] = av_bswap16(av_bswap16(*src_line++) >> shift);
                }
            }
            break;
        case 2:
            if (src_alpha && dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++ >> shift);
                    dst[1][x] = av_bswap16(*src_line++ >> shift);
                    dst[2][x] = av_bswap16(*src_line++ >> shift);
                    dst[3][x] = av_bswap16(*src_line++ >> shift);
                }
            } else if (dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++ >> shift);
                    dst[1][x] = av_bswap16(*src_line++ >> shift);
                    dst[2][x] = av_bswap16(*src_line++ >> shift);
                    dst[3][x] = 0xFFFF;
                }
            } else if (src_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++ >> shift);
                    dst[1][x] = av_bswap16(*src_line++ >> shift);
                    dst[2][x] = av_bswap16(*src_line++ >> shift);
                    src_line++;
                }
            } else {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++ >> shift);
                    dst[1][x] = av_bswap16(*src_line++ >> shift);
                    dst[2][x] = av_bswap16(*src_line++ >> shift);
                }
            }
            break;
        case 1:
            if (src_alpha && dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++) >> shift;
                    dst[1][x] = av_bswap16(*src_line++) >> shift;
                    dst[2][x] = av_bswap16(*src_line++) >> shift;
                    dst[3][x] = av_bswap16(*src_line++) >> shift;
                }
            } else if (dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++) >> shift;
                    dst[1][x] = av_bswap16(*src_line++) >> shift;
                    dst[2][x] = av_bswap16(*src_line++) >> shift;
                    dst[3][x] = 0xFFFF;
                }
            } else if (src_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++) >> shift;
                    dst[1][x] = av_bswap16(*src_line++) >> shift;
                    dst[2][x] = av_bswap16(*src_line++) >> shift;
                    src_line++;
                }
            } else {
                for (x = 0; x < width; x++) {
                    dst[0][x] = av_bswap16(*src_line++) >> shift;
                    dst[1][x] = av_bswap16(*src_line++) >> shift;
                    dst[2][x] = av_bswap16(*src_line++) >> shift;
                }
            }
            break;
        default:
            if (src_alpha && dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = *src_line++ >> shift;
                    dst[1][x] = *src_line++ >> shift;
                    dst[2][x] = *src_line++ >> shift;
                    dst[3][x] = *src_line++ >> shift;
                }
            } else if (dst_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = *src_line++ >> shift;
                    dst[1][x] = *src_line++ >> shift;
                    dst[2][x] = *src_line++ >> shift;
                    dst[3][x] = 0xFFFF;
                }
            } else if (src_alpha) {
                for (x = 0; x < width; x++) {
                    dst[0][x] = *src_line++ >> shift;
                    dst[1][x] = *src_line++ >> shift;
                    dst[2][x] = *src_line++ >> shift;
                    src_line++;
                }
            } else {
                for (x = 0; x < width; x++) {
                    dst[0][x] = *src_line++ >> shift;
                    dst[1][x] = *src_line++ >> shift;
                    dst[2][x] = *src_line++ >> shift;
                }
            }
        }
        for (i = 0; i < 4; i++)
            dst[i] += dstStride[i] >> 1;
    }
}
