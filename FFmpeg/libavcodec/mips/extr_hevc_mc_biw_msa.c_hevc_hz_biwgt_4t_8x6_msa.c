
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v4i32 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__) ;
 int HEVC_BIW_RND_CLIP4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB6 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SH (int const*) ;
 int LD_SH2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SH4 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_B2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int ST_D2 (scalar_t__,int ,int,int *,int) ;
 int ST_D4 (scalar_t__,scalar_t__,int ,int,int ,int,int *,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B6_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_biwgt_4t_8x6_msa(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    int32_t weight, offset, constant;
    v8i16 filt0, filt1;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 in0, in1, in2, in3, in4, in5;
    v16i8 mask0 = LD_SB(&ff_hevc_mask_arr[0]);
    v16i8 mask1;
    v16i8 vec0, vec1;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec;
    v4i32 weight_vec, offset_vec, rnd_vec;

    src0_ptr -= 1;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);
    constant = 128 * weight1;
    constant <<= 6;
    offset += constant;

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    mask1 = mask0 + 2;

    LD_SB6(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5);

    LD_SH4(src1_ptr, src2_stride, in0, in1, in2, in3);
    src1_ptr += (4 * src2_stride);
    LD_SH2(src1_ptr, src2_stride, in4, in5);
    XORI_B6_128_SB(src0, src1, src2, src3, src4, src5);
    VSHF_B2_SB(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    dst0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    VSHF_B2_SB(src1, src1, src1, src1, mask0, mask1, vec0, vec1);
    dst1 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    VSHF_B2_SB(src2, src2, src2, src2, mask0, mask1, vec0, vec1);
    dst2 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    VSHF_B2_SB(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
    dst3 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    VSHF_B2_SB(src4, src4, src4, src4, mask0, mask1, vec0, vec1);
    dst4 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    VSHF_B2_SB(src5, src5, src5, src5, mask0, mask1, vec0, vec1);
    dst5 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    HEVC_BIW_RND_CLIP4(dst0, dst1, dst2, dst3,
                       in0, in1, in2, in3,
                       weight_vec, rnd_vec, offset_vec,
                       dst0, dst1, dst2, dst3);
    HEVC_BIW_RND_CLIP2(dst4, dst5, in4, in5,
                       weight_vec, rnd_vec, offset_vec,
                       dst4, dst5);

    PCKEV_B2_SH(dst1, dst0, dst3, dst2, dst0, dst1);
    dst3 = (v8i16) __msa_pckev_b((v16i8) dst5, (v16i8) dst4);
    ST_D4(dst0, dst1, 0, 1, 0, 1, dst, dst_stride);
    ST_D2(dst3, 0, 1, dst + 4 * dst_stride, dst_stride);
}
