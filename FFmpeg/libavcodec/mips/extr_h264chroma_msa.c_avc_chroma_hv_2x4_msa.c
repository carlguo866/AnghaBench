
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef scalar_t__ v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int DOTP_UB2_UH (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int ILVR_D2_UB (int ,int ,int ,int ,int ,int ) ;
 int LD_SB (int *) ;
 int LD_UB5 (int *,int ,int ,int ,int ,int ,int ) ;
 int MUL2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_H4 (scalar_t__,int ,int,int,int,int *,int ) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_fill_b (int ) ;
 scalar_t__ __msa_fill_h (int ) ;
 int __msa_ilvr_b (int ,int ) ;
 scalar_t__ __msa_pckev_b (int ,int ) ;
 scalar_t__ __msa_sat_u_h (scalar_t__,int) ;
 scalar_t__ __msa_srari_h (scalar_t__,int) ;
 int * chroma_mask_arr ;

__attribute__((used)) static void avc_chroma_hv_2x4_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    v16u8 src0, src1, src2, src3, src4;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v8u16 res_hz0, res_hz1, res_vt0, res_vt1;
    v8i16 res;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = __msa_fill_b(coef_hor0);
    v16i8 coeff_hz_vec1 = __msa_fill_b(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) __msa_ilvr_b(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) __msa_fill_h(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) __msa_fill_h(coef_ver1);

    mask = LD_SB(&chroma_mask_arr[48]);

    LD_UB5(src, stride, src0, src1, src2, src3, src4);

    VSHF_B2_UB(src0, src1, src2, src3, mask, mask, tmp0, tmp1);
    VSHF_B2_UB(src1, src2, src3, src4, mask, mask, tmp2, tmp3);
    ILVR_D2_UB(tmp1, tmp0, tmp3, tmp2, src0, src1);
    DOTP_UB2_UH(src0, src1, coeff_hz_vec, coeff_hz_vec, res_hz0, res_hz1);
    MUL2(res_hz0, coeff_vt_vec1, res_hz1, coeff_vt_vec0, res_vt0, res_vt1);

    res_vt0 += res_vt1;
    res_vt0 = (v8u16) __msa_srari_h((v8i16) res_vt0, 6);
    res_vt0 = __msa_sat_u_h(res_vt0, 7);

    res = (v8i16) __msa_pckev_b((v16i8) res_vt0, (v16i8) res_vt0);

    ST_H4(res, 0, 1, 2, 3, dst, stride);
}
