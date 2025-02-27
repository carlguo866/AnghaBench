
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef scalar_t__ v4i32 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 scalar_t__ AVC_DOT_SW3_SW (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ AVC_HORZ_FILTER_SH (int ,int ,int ,int ,int ) ;
 int ILVR_H4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_SB5 (int const*,int,int ,int ,int ,int ,int ) ;
 int PCKEV_D2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_XORI128_UB (scalar_t__,scalar_t__) ;
 int PCKOD_D2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SAT_SH2_SH (scalar_t__,scalar_t__,int) ;
 int SRARI_H2_SH (scalar_t__,scalar_t__,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int XORI_B5_128_SB (int ,int ,int ,int ,int ) ;
 scalar_t__ __msa_aver_s_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_w (int const) ;
 scalar_t__ __msa_pckev_h (scalar_t__,scalar_t__) ;
 int * luma_mask_arr ;

void ff_put_h264_qpel4_mc23_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    v16u8 res;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 mask0, mask1, mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, dst0, dst1, filt0, filt1, filt2;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r;
    v4i32 tmp0, tmp1;

    LD_SB3(&luma_mask_arr[48], 16, mask0, mask1, mask2);

    filt0 = (v8i16) __msa_fill_w(filt_const0);
    filt1 = (v8i16) __msa_fill_w(filt_const1);
    filt2 = (v8i16) __msa_fill_w(filt_const2);

    src -= ((2 * stride) + 2);

    LD_SB5(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    LD_SB4(src, stride, src5, src6, src7, src8);

    XORI_B5_128_SB(src0, src1, src2, src3, src4);
    XORI_B4_128_SB(src5, src6, src7, src8);

    hz_out0 = AVC_HORZ_FILTER_SH(src0, src1, mask0, mask1, mask2);
    hz_out2 = AVC_HORZ_FILTER_SH(src2, src3, mask0, mask1, mask2);
    hz_out4 = AVC_HORZ_FILTER_SH(src4, src5, mask0, mask1, mask2);
    hz_out6 = AVC_HORZ_FILTER_SH(src6, src7, mask0, mask1, mask2);
    hz_out8 = AVC_HORZ_FILTER_SH(src8, src8, mask0, mask1, mask2);
    PCKOD_D2_SH(hz_out0, hz_out0, hz_out2, hz_out2, hz_out1, hz_out3);
    PCKOD_D2_SH(hz_out4, hz_out4, hz_out6, hz_out6, hz_out5, hz_out7);

    ILVR_H4_SH(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2, hz_out4,
               hz_out3, hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r);
    ILVR_H4_SH(hz_out5, hz_out4, hz_out6, hz_out5, hz_out7, hz_out6, hz_out8,
               hz_out7, hz_out54_r, hz_out65_r, hz_out76_r, hz_out87_r);

    tmp0 = AVC_DOT_SW3_SW(hz_out10_r, hz_out32_r, hz_out54_r, filt0, filt1,
                          filt2);
    tmp1 = AVC_DOT_SW3_SW(hz_out21_r, hz_out43_r, hz_out65_r, filt0, filt1,
                          filt2);
    dst0 = __msa_pckev_h((v8i16) tmp1, (v8i16) tmp0);
    tmp0 = AVC_DOT_SW3_SW(hz_out32_r, hz_out54_r, hz_out76_r, filt0, filt1,
                          filt2);
    tmp1 = AVC_DOT_SW3_SW(hz_out43_r, hz_out65_r, hz_out87_r, filt0, filt1,
                          filt2);
    dst1 = __msa_pckev_h((v8i16) tmp1, (v8i16) tmp0);

    PCKEV_D2_SH(hz_out4, hz_out3, hz_out6, hz_out5, hz_out0, hz_out1);
    SRARI_H2_SH(hz_out0, hz_out1, 5);
    SAT_SH2_SH(hz_out0, hz_out1, 7);

    dst0 = __msa_aver_s_h(dst0, hz_out0);
    dst1 = __msa_aver_s_h(dst1, hz_out1);

    res = PCKEV_XORI128_UB(dst0, dst1);
    ST_W4(res, 0, 1, 2, 3, dst, stride);
}
