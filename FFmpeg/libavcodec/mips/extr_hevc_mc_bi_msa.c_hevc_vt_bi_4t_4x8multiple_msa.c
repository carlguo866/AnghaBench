
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v2i64 ;
typedef int v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int DPADD_SB2_SH (scalar_t__,scalar_t__,int,int,int,int) ;
 int HEVC_BI_RND_CLIP4 (int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int ILVR_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_D2_SH (int,int,int,int,int,int) ;
 int ILVR_D3_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB6 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int LD_SH8 (int *,int,int,int,int,int,int,int,int,int) ;
 int PCKEV_B2_SH (int,int,int,int,int,int) ;
 int SPLATI_H2_SH (int,int ,int,int,int) ;
 int ST_W8 (int,int,int ,int,int,int,int ,int,int,int,int *,int) ;
 int XORI_B3_128_SB (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_ilvr_d (int ,int ) ;
 int __msa_ldi_h (int) ;
 scalar_t__ __msa_xori_b (int ,int) ;

__attribute__((used)) static void hevc_vt_bi_4t_4x8multiple_msa(uint8_t *src0_ptr,
                                          int32_t src_stride,
                                          int16_t *src1_ptr,
                                          int32_t src2_stride,
                                          uint8_t *dst,
                                          int32_t dst_stride,
                                          const int8_t *filter,
                                          int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16i8 src6, src7, src8, src9;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v16i8 src2110, src4332, src6554, src8776;
    v8i16 dst10, dst32, dst54, dst76;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    LD_SB3(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    ILVR_B2_SB(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) __msa_ilvr_d((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) __msa_xori_b((v16u8) src2110, 128);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        LD_SB6(src0_ptr, src_stride, src3, src4, src5, src6, src7, src8);
        src0_ptr += (6 * src_stride);
        LD_SH8(src1_ptr, src2_stride, in0, in1, in2, in3, in4, in5, in6, in7);
        src1_ptr += (8 * src2_stride);
        ILVR_D2_SH(in1, in0, in3, in2, in0, in1);
        ILVR_D2_SH(in5, in4, in7, in6, in2, in3);
        ILVR_B4_SB(src3, src2, src4, src3, src5, src4, src6, src5,
                   src32_r, src43_r, src54_r, src65_r);
        ILVR_B2_SB(src7, src6, src8, src7, src76_r, src87_r);
        ILVR_D3_SB(src43_r, src32_r, src65_r, src54_r, src87_r, src76_r,
                   src4332, src6554, src8776);
        XORI_B3_128_SB(src4332, src6554, src8776);

        dst10 = const_vec;
        DPADD_SB2_SH(src2110, src4332, filt0, filt1, dst10, dst10);
        dst32 = const_vec;
        DPADD_SB2_SH(src4332, src6554, filt0, filt1, dst32, dst32);
        dst54 = const_vec;
        DPADD_SB2_SH(src6554, src8776, filt0, filt1, dst54, dst54);

        LD_SB2(src0_ptr, src_stride, src9, src2);
        src0_ptr += (2 * src_stride);
        ILVR_B2_SB(src9, src8, src2, src9, src98_r, src109_r);
        src2110 = (v16i8) __msa_ilvr_d((v2i64) src109_r, (v2i64) src98_r);
        src2110 = (v16i8) __msa_xori_b((v16u8) src2110, 128);
        dst76 = const_vec;
        DPADD_SB2_SH(src8776, src2110, filt0, filt1, dst76, dst76);

        HEVC_BI_RND_CLIP4(in0, in1, in2, in3,
                          dst10, dst32, dst54, dst76, 7,
                          dst10, dst32, dst54, dst76);

        PCKEV_B2_SH(dst32, dst10, dst76, dst54, dst10, dst54);
        ST_W8(dst10, dst54, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);
    }
}
