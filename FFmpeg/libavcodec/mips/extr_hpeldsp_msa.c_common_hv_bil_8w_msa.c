
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_1__ ;


typedef int v8u16 ;
typedef int v16u8 ;
struct TYPE_36__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int ADD4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int HADD_UB2_UH (int ,int ,int ,int ) ;
 int HADD_UB3_UH (int ,int ,int ,int ,int ,int ) ;
 int ILVR_B2_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ) ;
 int ILVR_B3_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ,int ) ;
 TYPE_1__ LD_SB (int const*) ;
 int LD_SB4 (int const*,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int PCKEV_B2_SB (int ,int ,int ,int ,TYPE_1__,TYPE_1__) ;
 int SLDI_B2_SB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__) ;
 int SLDI_B3_SB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SRARI_H4_UH (int ,int ,int ,int ,int) ;
 int ST_D4 (TYPE_1__,TYPE_1__,int ,int,int ,int,int*,int) ;

__attribute__((used)) static void common_hv_bil_8w_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 uint8_t height)
{
    uint8_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src0_sld1, src1_sld1, src2_sld1, src3_sld1, src4_sld1;
    v16u8 src0_r, src1_r, src2_r, src3_r, src4_r;
    v8u16 add0, add1, add2, add3, add4;
    v8u16 sum0, sum1, sum2, sum3;
    v16i8 zeros = { 0 };

    src0 = LD_SB(src);
    src += src_stride;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        SLDI_B3_SB(zeros, src0, zeros, src1, zeros, src2, 1, src0_sld1,
                   src1_sld1, src2_sld1);
        SLDI_B2_SB(zeros, src3, zeros, src4, 1, src3_sld1, src4_sld1);
        ILVR_B3_UB(src0_sld1, src0, src1_sld1, src1, src2_sld1, src2, src0_r,
                   src1_r, src2_r);
        ILVR_B2_UB(src3_sld1, src3, src4_sld1, src4, src3_r, src4_r);
        HADD_UB3_UH(src0_r, src1_r, src2_r, add0, add1, add2);
        HADD_UB2_UH(src3_r, src4_r, add3, add4);
        ADD4(add0, add1, add1, add2, add2, add3, add3, add4,
             sum0, sum1, sum2, sum3);
        SRARI_H4_UH(sum0, sum1, sum2, sum3, 2);
        PCKEV_B2_SB(sum1, sum0, sum3, sum2, src0, src1);
        ST_D4(src0, src1, 0, 1, 0, 1, dst, dst_stride);
        dst += (4 * dst_stride);
        src0 = src4;
    }
}
