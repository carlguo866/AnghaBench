
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_avg_pixels16_8_mmi (int *,int const*,int ,int) ;

void ff_avg_vc1_mspel_mc00_16_mmi(uint8_t *dst, const uint8_t *src,
                                  ptrdiff_t stride, int rnd)
{
    ff_avg_pixels16_8_mmi(dst, src, stride, 16);
}
