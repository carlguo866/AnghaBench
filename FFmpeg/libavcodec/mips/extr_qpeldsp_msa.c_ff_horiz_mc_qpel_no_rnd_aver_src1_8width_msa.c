
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int horiz_mc_qpel_no_rnd_aver_src1_8width_msa (int const*,int ,int *,int ,int) ;

void ff_horiz_mc_qpel_no_rnd_aver_src1_8width_msa(uint8_t *dest,
                                                  const uint8_t *src,
                                                  ptrdiff_t stride)
{
    horiz_mc_qpel_no_rnd_aver_src1_8width_msa(src, stride, dest, stride, 8);
}
