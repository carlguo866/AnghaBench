
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;


 int AVER_UB2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_D2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int INSERT_W4_UB (int ,int ,int ,int ,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ LD_UH (int const*) ;
 int LW4 (int *,int,int ,int ,int ,int ) ;
 int PCKEV_B4_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SRARI_H4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ST_W8 (scalar_t__,scalar_t__,int ,int,int,int,int ,int,int,int,int *,int) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hz_2t_and_aver_dst_4x8_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, vec0, vec1, vec2, vec3, res0, res1, res2, res3;
    v16u8 dst0, dst1;
    v8u16 vec4, vec5, vec6, vec7, filt;

    mask = LD_SB(&mc_filt_mask_arr[16]);


    filt = LD_UH(filter);
    filt0 = (v16u8) __msa_splati_h((v8i16) filt, 0);

    LD_SB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    LW4(dst, dst_stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);
    LW4(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, dst1);
    VSHF_B2_UB(src0, src1, src2, src3, mask, mask, vec0, vec1);
    VSHF_B2_UB(src4, src5, src6, src7, mask, mask, vec2, vec3);
    DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, vec4, vec5,
                vec6, vec7);
    SRARI_H4_UH(vec4, vec5, vec6, vec7, 7);
    PCKEV_B4_UB(vec4, vec4, vec5, vec5, vec6, vec6, vec7, vec7, res0, res1,
                res2, res3);
    ILVR_D2_UB(res1, res0, res3, res2, res0, res2);
    AVER_UB2_UB(res0, dst0, res2, dst1, res0, res2);
    ST_W8(res0, res2, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}
