
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v4i32 ;
typedef scalar_t__ v16u8 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 scalar_t__ HEVC_FILT_4TAP_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int HEVC_UNIW_RND_CLIP2_MAX_SATU_H (scalar_t__,scalar_t__,int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SB (int ) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 scalar_t__ LD_SH (int const*) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int ST_D2 (scalar_t__,int ,int,int *,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B2_128_SB (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_adds_s_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_h (int) ;
 int __msa_fill_w (int) ;
 scalar_t__ __msa_pckev_b (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_srar_h (scalar_t__,scalar_t__) ;
 int ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_uniwgt_4t_8x2_msa(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v8i16 filt0, filt1, dst0, dst1;
    v16i8 src0, src1;
    v16i8 mask0 = LD_SB(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 1;

    filter_vec = LD_SH(filter);
    SPLATI_H2_SH(filter_vec, 0, 1, filt0, filt1);

    weight = weight & 0x0000FFFF;

    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = __msa_fill_h(weight);
    offset_vec = __msa_fill_h(offset);
    denom_vec = __msa_fill_h(rnd_val);

    weight_vec_h = __msa_srar_h(weight_vec_h, denom_vec);
    offset_vec = __msa_adds_s_h(offset_vec, weight_vec_h);

    mask1 = mask0 + 2;

    LD_SB2(src, src_stride, src0, src1);
    XORI_B2_128_SB(src0, src1);

    VSHF_B2_SB(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    VSHF_B2_SB(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    dst0 = HEVC_FILT_4TAP_SH(vec0, vec1, filt0, filt1);
    dst1 = HEVC_FILT_4TAP_SH(vec2, vec3, filt0, filt1);

    HEVC_UNIW_RND_CLIP2_MAX_SATU_H(dst0, dst1, weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1);

    out = (v16u8) __msa_pckev_b((v16i8) dst1, (v16i8) dst0);
    ST_D2(out, 0, 1, dst, dst_stride);
}
