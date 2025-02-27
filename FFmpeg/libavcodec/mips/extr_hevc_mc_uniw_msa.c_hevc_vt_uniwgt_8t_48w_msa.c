
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int hevc_vt_uniwgt_8t_16multx4mult_msa (int *,int ,int *,int ,int const*,int,int ,int ,int ,int) ;

__attribute__((used)) static void hevc_vt_uniwgt_8t_48w_msa(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    hevc_vt_uniwgt_8t_16multx4mult_msa(src, src_stride, dst, dst_stride,
                                       filter, 64, weight,
                                       offset, rnd_val, 3);
}
