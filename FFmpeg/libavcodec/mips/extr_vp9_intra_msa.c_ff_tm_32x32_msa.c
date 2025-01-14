
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int HADD_UB4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVL_B2_UH (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int ILVR_B2_UH (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int IPRED_SUBS_UH2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int const*) ;
 int LW (int const*) ;
 int PCKEV_ST_SB (scalar_t__,scalar_t__,int *) ;
 int SAT_UH4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int __msa_fill_b (int) ;
 scalar_t__ __msa_fill_h (int ) ;

void ff_tm_32x32_msa(uint8_t *dst, ptrdiff_t dst_stride,
                     const uint8_t *src_left, const uint8_t *src_top_ptr)
{
    uint8_t top_left = src_top_ptr[-1];
    uint32_t loop_cnt, left;
    v16i8 src_top0, src_top1, src_left0, src_left1, src_left2, src_left3;
    v8u16 src_top_left, res_r0, res_r1, res_l0, res_l1;

    src_top0 = LD_SB(src_top_ptr);
    src_top1 = LD_SB(src_top_ptr + 16);
    src_top_left = (v8u16) __msa_fill_h(top_left);

    src_left += 28;
    for (loop_cnt = 8; loop_cnt--;) {
        left = LW(src_left);
        src_left0 = __msa_fill_b(left >> 24);
        src_left1 = __msa_fill_b(left >> 16);
        src_left2 = __msa_fill_b(left >> 8);
        src_left3 = __msa_fill_b(left);
        src_left -= 4;

        ILVR_B2_UH(src_left0, src_top0, src_left0, src_top1, res_r0, res_r1);
        ILVL_B2_UH(src_left0, src_top0, src_left0, src_top1, res_l0, res_l1);
        HADD_UB4_UH(res_r0, res_l0, res_r1, res_l1, res_r0, res_l0, res_r1,
                    res_l1);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r0, res_l0);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r1, res_l1);
        SAT_UH4_UH(res_r0, res_l0, res_r1, res_l1, 7);
        PCKEV_ST_SB(res_r0, res_l0, dst);
        PCKEV_ST_SB(res_r1, res_l1, dst + 16);
        dst += dst_stride;

        ILVR_B2_UH(src_left1, src_top0, src_left1, src_top1, res_r0, res_r1);
        ILVL_B2_UH(src_left1, src_top0, src_left1, src_top1, res_l0, res_l1);
        HADD_UB4_UH(res_r0, res_l0, res_r1, res_l1, res_r0, res_l0, res_r1,
                    res_l1);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r0, res_l0);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r1, res_l1);
        SAT_UH4_UH(res_r0, res_l0, res_r1, res_l1, 7);
        PCKEV_ST_SB(res_r0, res_l0, dst);
        PCKEV_ST_SB(res_r1, res_l1, dst + 16);
        dst += dst_stride;

        ILVR_B2_UH(src_left2, src_top0, src_left2, src_top1, res_r0, res_r1);
        ILVL_B2_UH(src_left2, src_top0, src_left2, src_top1, res_l0, res_l1);
        HADD_UB4_UH(res_r0, res_l0, res_r1, res_l1, res_r0, res_l0, res_r1,
                    res_l1);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r0, res_l0);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r1, res_l1);
        SAT_UH4_UH(res_r0, res_l0, res_r1, res_l1, 7);
        PCKEV_ST_SB(res_r0, res_l0, dst);
        PCKEV_ST_SB(res_r1, res_l1, dst + 16);
        dst += dst_stride;

        ILVR_B2_UH(src_left3, src_top0, src_left3, src_top1, res_r0, res_r1);
        ILVL_B2_UH(src_left3, src_top0, src_left3, src_top1, res_l0, res_l1);
        HADD_UB4_UH(res_r0, res_l0, res_r1, res_l1, res_r0, res_l0, res_r1,
                    res_l1);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r0, res_l0);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r1, res_l1);
        SAT_UH4_UH(res_r0, res_l0, res_r1, res_l1, 7);
        PCKEV_ST_SB(res_r0, res_l0, dst);
        PCKEV_ST_SB(res_r1, res_l1, dst + 16);
        dst += dst_stride;
    }
}
