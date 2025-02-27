
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 scalar_t__ HORIZ_2TAP_FILT_UH (int ,int ,int ,scalar_t__,int) ;
 int LD_SB (int *) ;
 int LD_SB5 (int const*,int ,int ,int ,int ,int ,int ) ;
 int LD_SH (int const*) ;
 int PCKEV_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int SAT_UH4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int SRARI_H4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int ) ;
 scalar_t__ __msa_dotp_u_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_ilvev_b (int ,int ) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int * mc_filt_mask_arr ;

__attribute__((used)) static void common_hv_2ht_2vt_8x4_msa(const uint8_t *src, int32_t src_stride,
                               uint8_t *dst, int32_t dst_stride,
                               const int8_t *filter_horiz, const int8_t *filter_vert)
{
    v16i8 src0, src1, src2, src3, src4, mask, out0, out1;
    v16u8 filt_hz, filt_vt, vec0, vec1, vec2, vec3;
    v8u16 hz_out0, hz_out1, tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    mask = LD_SB(&mc_filt_mask_arr[0]);


    filt = LD_SH(filter_horiz);
    filt_hz = (v16u8) __msa_splati_h(filt, 0);

    filt = LD_SH(filter_vert);
    filt_vt = (v16u8) __msa_splati_h(filt, 0);

    LD_SB5(src, src_stride, src0, src1, src2, src3, src4);

    hz_out0 = HORIZ_2TAP_FILT_UH(src0, src0, mask, filt_hz, 7);
    hz_out1 = HORIZ_2TAP_FILT_UH(src1, src1, mask, filt_hz, 7);
    vec0 = (v16u8) __msa_ilvev_b((v16i8) hz_out1, (v16i8) hz_out0);
    tmp0 = __msa_dotp_u_h(vec0, filt_vt);

    hz_out0 = HORIZ_2TAP_FILT_UH(src2, src2, mask, filt_hz, 7);
    vec1 = (v16u8) __msa_ilvev_b((v16i8) hz_out0, (v16i8) hz_out1);
    tmp1 = __msa_dotp_u_h(vec1, filt_vt);

    hz_out1 = HORIZ_2TAP_FILT_UH(src3, src3, mask, filt_hz, 7);
    vec2 = (v16u8) __msa_ilvev_b((v16i8) hz_out1, (v16i8) hz_out0);
    tmp2 = __msa_dotp_u_h(vec2, filt_vt);

    hz_out0 = HORIZ_2TAP_FILT_UH(src4, src4, mask, filt_hz, 7);
    vec3 = (v16u8) __msa_ilvev_b((v16i8) hz_out0, (v16i8) hz_out1);
    tmp3 = __msa_dotp_u_h(vec3, filt_vt);

    SRARI_H4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    SAT_UH4_UH(tmp0, tmp1, tmp2, tmp3, 7);
    PCKEV_B2_SB(tmp1, tmp0, tmp3, tmp2, out0, out1);
    ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);
}
