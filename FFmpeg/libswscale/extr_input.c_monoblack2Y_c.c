
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;



__attribute__((used)) static void monoblack2Y_c(uint8_t *_dst, const uint8_t *src, const uint8_t *unused1, const uint8_t *unused2, int width, uint32_t *unused)
{
    int16_t *dst = (int16_t *)_dst;
    int i, j;
    width = (width + 7) >> 3;
    for (i = 0; i < width; i++) {
        int d = src[i];
        for (j = 0; j < 8; j++)
            dst[8*i+j]= ((d>>(7-j))&1) * 16383;
    }
    if(width&7){
        int d = src[i];
        for (j = 0; j < (width&7); j++)
            dst[8*i+j] = ((d>>(7-j))&1) * 16383;
    }
}
