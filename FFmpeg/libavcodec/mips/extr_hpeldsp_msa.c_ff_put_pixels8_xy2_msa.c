
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int common_hv_bil_8w_msa (int const*,int ,int *,int ,int) ;

void ff_put_pixels8_xy2_msa(uint8_t *block, const uint8_t *pixels,
                            ptrdiff_t line_size, int h)
{
    common_hv_bil_8w_msa(pixels, line_size, block, line_size, h);
}
