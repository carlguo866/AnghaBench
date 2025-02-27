
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int const uint8_t ;
typedef int int32_t ;


 int AVER_UB4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_UB4 (int const*,int,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int const*,int) ;

__attribute__((used)) static void avg_width32_msa(const uint8_t *src, int32_t src_stride,
                            uint8_t *dst, int32_t dst_stride,
                            int32_t height)
{
    int32_t cnt;
    uint8_t *dst_dup = dst;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 src8, src9, src10, src11, src12, src13, src14, src15;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v16u8 dst8, dst9, dst10, dst11, dst12, dst13, dst14, dst15;

    if (0 == (height % 8)) {
        for (cnt = (height / 8); cnt--;) {
            LD_UB4(src, src_stride, src0, src2, src4, src6);
            LD_UB4(src + 16, src_stride, src1, src3, src5, src7);
            src += (4 * src_stride);
            LD_UB4(dst_dup, dst_stride, dst0, dst2, dst4, dst6);
            LD_UB4(dst_dup + 16, dst_stride, dst1, dst3, dst5, dst7);
            dst_dup += (4 * dst_stride);
            LD_UB4(src, src_stride, src8, src10, src12, src14);
            LD_UB4(src + 16, src_stride, src9, src11, src13, src15);
            src += (4 * src_stride);
            LD_UB4(dst_dup, dst_stride, dst8, dst10, dst12, dst14);
            LD_UB4(dst_dup + 16, dst_stride, dst9, dst11, dst13, dst15);
            dst_dup += (4 * dst_stride);

            AVER_UB4_UB(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                        dst0, dst1, dst2, dst3);
            AVER_UB4_UB(src4, dst4, src5, dst5, src6, dst6, src7, dst7,
                        dst4, dst5, dst6, dst7);
            AVER_UB4_UB(src8, dst8, src9, dst9, src10, dst10, src11, dst11,
                        dst8, dst9, dst10, dst11);
            AVER_UB4_UB(src12, dst12, src13, dst13, src14, dst14, src15, dst15,
                        dst12, dst13, dst14, dst15);

            ST_UB4(dst0, dst2, dst4, dst6, dst, dst_stride);
            ST_UB4(dst1, dst3, dst5, dst7, dst + 16, dst_stride);
            dst += (4 * dst_stride);
            ST_UB4(dst8, dst10, dst12, dst14, dst, dst_stride);
            ST_UB4(dst9, dst11, dst13, dst15, dst + 16, dst_stride);
            dst += (4 * dst_stride);
        }
    } else if (0 == (height % 4)) {
        for (cnt = (height / 4); cnt--;) {
            LD_UB4(src, src_stride, src0, src2, src4, src6);
            LD_UB4(src + 16, src_stride, src1, src3, src5, src7);
            src += (4 * src_stride);
            LD_UB4(dst_dup, dst_stride, dst0, dst2, dst4, dst6);
            LD_UB4(dst_dup + 16, dst_stride, dst1, dst3, dst5, dst7);
            dst_dup += (4 * dst_stride);

            AVER_UB4_UB(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                        dst0, dst1, dst2, dst3);
            AVER_UB4_UB(src4, dst4, src5, dst5, src6, dst6, src7, dst7,
                        dst4, dst5, dst6, dst7);

            ST_UB4(dst0, dst2, dst4, dst6, dst, dst_stride);
            ST_UB4(dst1, dst3, dst5, dst7, dst + 16, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}
