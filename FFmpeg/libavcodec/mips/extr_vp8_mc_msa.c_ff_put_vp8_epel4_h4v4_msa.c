
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 scalar_t__ FILT_4TAP_DPADD_S_H (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ HORIZ_4TAP_FILT (int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB4 (int *,int,int ,int ,int ,int ) ;
 scalar_t__ LD_SH (int const*) ;
 scalar_t__ LD_UB (int *) ;
 scalar_t__ PCKEV_XORI128_UB (scalar_t__,scalar_t__) ;
 int SAT_SH2_SH (scalar_t__,scalar_t__,int) ;
 int SPLATI_H2_SB (scalar_t__,int ,int,int ,int ) ;
 int SPLATI_H2_SH (scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int SRARI_H2_SH (scalar_t__,scalar_t__,int) ;
 int ST_W4 (scalar_t__,int ,int,int,int,int *,int) ;
 int XORI_B2_128_SB (int ,int ) ;
 int XORI_B3_128_SB (int ,int ,int ) ;
 scalar_t__ __msa_ilvev_b (int ,int ) ;
 scalar_t__ __msa_sldi_b (int ,int ,int) ;
 int * mc_filt_mask_arr ;
 int ** subpel_filters_msa ;

void ff_put_vp8_epel4_h4v4_msa(uint8_t *dst, ptrdiff_t dst_stride,
                               uint8_t *src, ptrdiff_t src_stride,
                               int height, int mx, int my)
{
    uint32_t loop_cnt;
    const int8_t *filter_horiz = subpel_filters_msa[mx - 1];
    const int8_t *filter_vert = subpel_filters_msa[my - 1];
    v16i8 src0, src1, src2, src3, src4, src5, src6, filt_hz0, filt_hz1;
    v16u8 mask0, mask1, out;
    v8i16 filt, filt_vt0, filt_vt1, tmp0, tmp1, vec0, vec1, vec2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5;

    mask0 = LD_UB(&mc_filt_mask_arr[16]);
    src -= (1 + 1 * src_stride);


    filt = LD_SH(filter_horiz);
    SPLATI_H2_SB(filt, 0, 1, filt_hz0, filt_hz1);

    mask1 = mask0 + 2;

    LD_SB3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    XORI_B3_128_SB(src0, src1, src2);
    hz_out0 = HORIZ_4TAP_FILT(src0, src1, mask0, mask1, filt_hz0, filt_hz1);
    hz_out1 = HORIZ_4TAP_FILT(src1, src2, mask0, mask1, filt_hz0, filt_hz1);
    vec0 = (v8i16) __msa_ilvev_b((v16i8) hz_out1, (v16i8) hz_out0);

    filt = LD_SH(filter_vert);
    SPLATI_H2_SH(filt, 0, 1, filt_vt0, filt_vt1);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src3, src4, src5, src6);
        src += (4 * src_stride);

        XORI_B2_128_SB(src3, src4);
        hz_out3 = HORIZ_4TAP_FILT(src3, src4, mask0, mask1, filt_hz0, filt_hz1);
        hz_out2 = (v8i16) __msa_sldi_b((v16i8) hz_out3, (v16i8) hz_out1, 8);
        vec1 = (v8i16) __msa_ilvev_b((v16i8) hz_out3, (v16i8) hz_out2);
        tmp0 = FILT_4TAP_DPADD_S_H(vec0, vec1, filt_vt0, filt_vt1);

        XORI_B2_128_SB(src5, src6);
        hz_out5 = HORIZ_4TAP_FILT(src5, src6, mask0, mask1, filt_hz0, filt_hz1);
        hz_out4 = (v8i16) __msa_sldi_b((v16i8) hz_out5, (v16i8) hz_out3, 8);
        vec2 = (v8i16) __msa_ilvev_b((v16i8) hz_out5, (v16i8) hz_out4);
        tmp1 = FILT_4TAP_DPADD_S_H(vec1, vec2, filt_vt0, filt_vt1);

        SRARI_H2_SH(tmp0, tmp1, 7);
        SAT_SH2_SH(tmp0, tmp1, 7);
        out = PCKEV_XORI128_UB(tmp0, tmp1);
        ST_W4(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        hz_out1 = hz_out5;
        vec0 = vec2;
    }
}
