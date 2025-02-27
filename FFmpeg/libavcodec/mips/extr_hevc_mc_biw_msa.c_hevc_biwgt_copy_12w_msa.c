
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v4i32 ;
typedef int v16u8 ;
struct TYPE_24__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int HEVC_BIW_RND_CLIP2_MAX_SATU (int,int,int,int,int ,int ,int ,int,int) ;
 int HEVC_BIW_RND_CLIP4_MAX_SATU (int,int,int,int,int,int,int,int,int ,int ,int ,int,int,int,int) ;
 int ILVL_W2_SB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int ILVR_B2_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int) ;
 int ILVR_B4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int,int,int) ;
 int ILVR_D2_SH (int,int,int,int,int,int) ;
 int LD_SB4 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int LD_SH4 (int *,int,int,int,int,int) ;
 int PCKEV_B3_UB (int,int,int,int,int,int,int ,int ,int ) ;
 int SLLI_4V (int,int,int,int,int) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int __msa_fill_w (int) ;

__attribute__((used)) static void hevc_biwgt_copy_12w_msa(uint8_t *src0_ptr,
                                    int32_t src_stride,
                                    int16_t *src1_ptr,
                                    int32_t src2_stride,
                                    uint8_t *dst,
                                    int32_t dst_stride,
                                    int32_t height,
                                    int32_t weight0,
                                    int32_t weight1,
                                    int32_t offset0,
                                    int32_t offset1,
                                    int32_t rnd_val)
{
    uint32_t loop_cnt;
    int32_t offset, weight;
    v16i8 zero = { 0 };
    v16u8 out0, out1, out2;
    v16i8 src0, src1, src2, src3;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v4i32 offset_vec, weight_vec, rnd_vec;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    offset_vec = __msa_fill_w(offset);
    weight_vec = __msa_fill_w(weight);
    rnd_vec = __msa_fill_w(rnd_val + 1);

    for (loop_cnt = (16 >> 2); loop_cnt--;) {
        LD_SB4(src0_ptr, src_stride, src0, src1, src2, src3);
        src0_ptr += (4 * src_stride);
        LD_SH4(src1_ptr, src2_stride, in0, in1, in2, in3);
        LD_SH4(src1_ptr + 8, src2_stride, in4, in5, in6, in7);
        src1_ptr += (4 * src2_stride);

        ILVR_D2_SH(in5, in4, in7, in6, in4, in5);
        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3,
                   dst0, dst1, dst2, dst3);

        SLLI_4V(dst0, dst1, dst2, dst3, 6);
        ILVL_W2_SB(src1, src0, src3, src2, src0, src1);
        ILVR_B2_SH(zero, src0, zero, src1, dst4, dst5);

        dst4 <<= 6;
        dst5 <<= 6;
        HEVC_BIW_RND_CLIP4_MAX_SATU(dst0, dst1, dst2, dst3, in0, in1, in2, in3,
                                    weight_vec, rnd_vec, offset_vec, dst0, dst1,
                                    dst2, dst3);
        HEVC_BIW_RND_CLIP2_MAX_SATU(dst4, dst5, in4, in5, weight_vec, rnd_vec,
                                    offset_vec, dst4, dst5);
        PCKEV_B3_UB(dst1, dst0, dst3, dst2, dst5, dst4, out0, out1, out2);
        ST_D4(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        ST_W4(out2, 0, 1, 2, 3, dst + 8, dst_stride);
        dst += (4 * dst_stride);
    }
}
