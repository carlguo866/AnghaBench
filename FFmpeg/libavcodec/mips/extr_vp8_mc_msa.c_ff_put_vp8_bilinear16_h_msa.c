
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
typedef int ptrdiff_t ;
typedef int int8_t ;


 int DOTP_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int *) ;
 int LD_SB4 (int *,int,int ,int ,int ,int ) ;
 scalar_t__ LD_UH (int const*) ;
 int PCKEV_ST_SB (scalar_t__,scalar_t__,int *) ;
 int SRARI_H4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int VSHF_B2_UB (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_splati_h (int ,int ) ;
 int ** bilinear_filters_msa ;
 int * mc_filt_mask_arr ;

void ff_put_vp8_bilinear16_h_msa(uint8_t *dst, ptrdiff_t dst_stride,
                                 uint8_t *src, ptrdiff_t src_stride,
                                 int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter = bilinear_filters_msa[mx - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8u16 out0, out1, out2, out3, out4, out5, out6, out7, filt;

    mask = LD_SB(&mc_filt_mask_arr[0]);

    loop_cnt = (height >> 2) - 1;


    filt = LD_UH(filter);
    filt0 = (v16u8) __msa_splati_h((v8i16) filt, 0);

    LD_SB4(src, src_stride, src0, src2, src4, src6);
    LD_SB4(src + 8, src_stride, src1, src3, src5, src7);
    src += (4 * src_stride);

    VSHF_B2_UB(src0, src0, src1, src1, mask, mask, vec0, vec1);
    VSHF_B2_UB(src2, src2, src3, src3, mask, mask, vec2, vec3);
    VSHF_B2_UB(src4, src4, src5, src5, mask, mask, vec4, vec5);
    VSHF_B2_UB(src6, src6, src7, src7, mask, mask, vec6, vec7);
    DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                out0, out1, out2, out3);
    DOTP_UB4_UH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                out4, out5, out6, out7);
    SRARI_H4_UH(out0, out1, out2, out3, 7);
    SRARI_H4_UH(out4, out5, out6, out7, 7);
    PCKEV_ST_SB(out0, out1, dst);
    dst += dst_stride;
    PCKEV_ST_SB(out2, out3, dst);
    dst += dst_stride;
    PCKEV_ST_SB(out4, out5, dst);
    dst += dst_stride;
    PCKEV_ST_SB(out6, out7, dst);
    dst += dst_stride;

    for (; loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src2, src4, src6);
        LD_SB4(src + 8, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        VSHF_B2_UB(src0, src0, src1, src1, mask, mask, vec0, vec1);
        VSHF_B2_UB(src2, src2, src3, src3, mask, mask, vec2, vec3);
        VSHF_B2_UB(src4, src4, src5, src5, mask, mask, vec4, vec5);
        VSHF_B2_UB(src6, src6, src7, src7, mask, mask, vec6, vec7);
        DOTP_UB4_UH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                    out0, out1, out2, out3);
        DOTP_UB4_UH(vec4, vec5, vec6, vec7, filt0, filt0, filt0, filt0,
                    out4, out5, out6, out7);
        SRARI_H4_UH(out0, out1, out2, out3, 7);
        SRARI_H4_UH(out4, out5, out6, out7, 7);
        PCKEV_ST_SB(out0, out1, dst);
        dst += dst_stride;
        PCKEV_ST_SB(out2, out3, dst);
        dst += dst_stride;
        PCKEV_ST_SB(out4, out5, dst);
        dst += dst_stride;
        PCKEV_ST_SB(out6, out7, dst);
        dst += dst_stride;
    }
}
