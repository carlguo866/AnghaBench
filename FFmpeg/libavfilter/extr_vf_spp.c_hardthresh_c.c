
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;
typedef int dst ;


 int memset (int*,int ,int) ;

__attribute__((used)) static void hardthresh_c(int16_t dst[64], const int16_t src[64],
                         int qp, const uint8_t *permutation)
{
    int i;
    int bias = 0;

    unsigned threshold1 = qp * ((1<<4) - bias) - 1;
    unsigned threshold2 = threshold1 << 1;

    memset(dst, 0, 64 * sizeof(dst[0]));
    dst[0] = (src[0] + 4) >> 3;

    for (i = 1; i < 64; i++) {
        int level = src[i];
        if (((unsigned)(level + threshold1)) > threshold2) {
            const int j = permutation[i];
            dst[j] = (level + 4) >> 3;
        }
    }
}
