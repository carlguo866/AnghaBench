
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void extract_even2_c(const uint8_t *src, uint8_t *dst0, uint8_t *dst1,
                            int count)
{
    dst0 += count;
    dst1 += count;
    src += count * 4;
    count = -count;
    while (count < 0) {
        dst0[count] = src[4 * count + 0];
        dst1[count] = src[4 * count + 2];
        count++;
    }
}
