
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int vert_mc_qpel_no_rnd_aver_src0_16x16_msa (int const*,int ,int *,int ) ;

void ff_vert_mc_qpel_no_rnd_aver_src0_16x16_msa(uint8_t *dest,
                                                const uint8_t *src,
                                                ptrdiff_t stride)
{
    vert_mc_qpel_no_rnd_aver_src0_16x16_msa(src, stride, dest, stride);
}
