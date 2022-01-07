
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void intra_pred_horiz(uint8_t *d, uint8_t *top, uint8_t *left, ptrdiff_t stride)
{
    int y;
    uint64_t a;
    for (y = 0; y < 8; y++) {
        a = left[y + 1] * 0x0101010101010101ULL;
        *((uint64_t *)(d + y * stride)) = a;
    }
}
