
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int DPADD_SB2_SH (scalar_t__,scalar_t__,int,int,int,int) ;
 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB3 (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int SPLATI_H4_SH (int,int ,int,int,int,int,int,int,int) ;
 int ST_SH2 (int,int,int *,int) ;
 int ST_SH4 (int,int,int,int,int *,int) ;
 int VSHF_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B4_128_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_ldi_h (int) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_8t_48w_msa(uint8_t *src, int32_t src_stride,
                               int16_t *dst, int32_t dst_stride,
                               const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = LD_SB(ff_hevc_mask_arr);

    src -= 3;
    filter_vec = LD_SH(filter);
    SPLATI_H4_SH(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    for (loop_cnt = height; loop_cnt--;) {
        LD_SB3(src, 16, src0, src1, src2);
        src3 = LD_SB(src + 40);
        src += src_stride;
        XORI_B4_128_SB(src0, src1, src2, src3);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        dst3 = const_vec;
        dst4 = const_vec;
        dst5 = const_vec;
        VSHF_B2_SB(src0, src0, src0, src1, mask0, mask4, vec0, vec1);
        VSHF_B2_SB(src1, src1, src1, src2, mask0, mask4, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, dst0,
                     dst1, dst2, dst3);
        VSHF_B2_SB(src0, src0, src0, src1, mask1, mask5, vec0, vec1);
        VSHF_B2_SB(src1, src1, src1, src2, mask1, mask5, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, dst0,
                     dst1, dst2, dst3);
        VSHF_B2_SB(src0, src0, src0, src1, mask2, mask6, vec0, vec1);
        VSHF_B2_SB(src1, src1, src1, src2, mask2, mask6, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, dst0,
                     dst1, dst2, dst3);
        VSHF_B2_SB(src0, src0, src0, src1, mask3, mask7, vec0, vec1);
        VSHF_B2_SB(src1, src1, src1, src2, mask3, mask7, vec2, vec3);
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt3, filt3, filt3, filt3, dst0,
                     dst1, dst2, dst3);
        ST_SH4(dst0, dst1, dst2, dst3, dst, 8);

        VSHF_B2_SB(src2, src2, src3, src3, mask0, mask0, vec4, vec5);
        DPADD_SB2_SH(vec4, vec5, filt0, filt0, dst4, dst5);
        VSHF_B2_SB(src2, src2, src3, src3, mask1, mask1, vec4, vec5);
        DPADD_SB2_SH(vec4, vec5, filt1, filt1, dst4, dst5);
        VSHF_B2_SB(src2, src2, src3, src3, mask2, mask2, vec4, vec5);
        DPADD_SB2_SH(vec4, vec5, filt2, filt2, dst4, dst5);
        VSHF_B2_SB(src2, src2, src3, src3, mask3, mask3, vec4, vec5);
        DPADD_SB2_SH(vec4, vec5, filt3, filt3, dst4, dst5);
        ST_SH2(dst4, dst5, (dst + 32), 8);
        dst += dst_stride;
    }
}
