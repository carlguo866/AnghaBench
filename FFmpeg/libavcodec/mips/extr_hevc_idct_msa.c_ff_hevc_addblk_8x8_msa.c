
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int hevc_addblk_8x8_msa (int *,int *,int ) ;

void ff_hevc_addblk_8x8_msa(uint8_t *dst, int16_t *coeffs, ptrdiff_t stride)
{
    hevc_addblk_8x8_msa(coeffs, dst, stride);
}
