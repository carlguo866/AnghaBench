
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int put_h264_qpel8_hv_lowpass_mmi (int * const,int * const,int const*,int,int,int ) ;
 int put_pixels8_l2_shift5_mmi (int *,int * const,int * const,int ,int,int) ;

void ff_put_h264_qpel8_mc12_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t __attribute__ ((aligned(8))) temp[448];
    uint8_t *const halfHV = temp;
    int16_t *const halfV = (int16_t *) (temp + 64);

    put_h264_qpel8_hv_lowpass_mmi(halfHV, halfV, src, 8, 8, stride);
    put_pixels8_l2_shift5_mmi(dst, halfV + 2, halfHV, stride, 8, 8);
}
