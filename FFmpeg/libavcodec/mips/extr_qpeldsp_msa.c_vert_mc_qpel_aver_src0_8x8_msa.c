
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 scalar_t__ APPLY_VERT_QPEL_FILTER_8BYTE (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int AVER_UB2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ LD_UB (int const*) ;
 int LD_UB2 (int const*,int,scalar_t__,scalar_t__) ;
 int LD_UB4 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_D4 (scalar_t__,scalar_t__,int ,int,int ,int,int *,int) ;
 scalar_t__ __msa_insve_d (int ,int,int ) ;
 scalar_t__ __msa_ldi_b (int) ;

__attribute__((used)) static void vert_mc_qpel_aver_src0_8x8_msa(const uint8_t *src,
                                           int32_t src_stride,
                                           uint8_t *dst,
                                           int32_t dst_stride)
{
    v16u8 inp0, inp1, inp2, inp3, inp4, inp5, inp6, inp7, inp8;
    v16u8 tmp0, tmp1, res0, res1;
    v16u8 const20 = (v16u8) __msa_ldi_b(20);
    v16u8 const6 = (v16u8) __msa_ldi_b(6);
    v16u8 const3 = (v16u8) __msa_ldi_b(3);

    LD_UB4(src, src_stride, inp0, inp1, inp2, inp3);
    src += (4 * src_stride);
    LD_UB2(src, src_stride, inp4, inp5);
    src += (2 * src_stride);
    res0 = APPLY_VERT_QPEL_FILTER_8BYTE(inp0, inp0, inp1, inp2,
                                        inp1, inp2, inp3, inp4,
                                        inp1, inp0, inp0, inp1,
                                        inp2, inp3, inp4, inp5,
                                        const20, const6, const3);
    LD_UB2(src, src_stride, inp6, inp7);
    src += (2 * src_stride);
    res1 = APPLY_VERT_QPEL_FILTER_8BYTE(inp2, inp1, inp0, inp0,
                                        inp3, inp4, inp5, inp6,
                                        inp3, inp2, inp1, inp0,
                                        inp4, inp5, inp6, inp7,
                                        const20, const6, const3);
    tmp0 = (v16u8) __msa_insve_d((v2i64) inp0, 1, (v2i64) inp1);
    tmp1 = (v16u8) __msa_insve_d((v2i64) inp2, 1, (v2i64) inp3);
    AVER_UB2_UB(res0, tmp0, res1, tmp1, res0, res1);
    ST_D4(res0, res1, 0, 1, 0, 1, dst, dst_stride);

    inp8 = LD_UB(src);
    res0 = APPLY_VERT_QPEL_FILTER_8BYTE(inp4, inp3, inp2, inp1,
                                        inp5, inp6, inp7, inp8,
                                        inp5, inp4, inp3, inp2,
                                        inp6, inp7, inp8, inp8,
                                        const20, const6, const3);
    res1 = APPLY_VERT_QPEL_FILTER_8BYTE(inp6, inp5, inp4, inp3,
                                        inp7, inp8, inp8, inp7,
                                        inp7, inp6, inp5, inp4,
                                        inp8, inp8, inp7, inp6,
                                        const20, const6, const3);
    tmp0 = (v16u8) __msa_insve_d((v2i64) inp4, 1, (v2i64) inp5);
    tmp1 = (v16u8) __msa_insve_d((v2i64) inp6, 1, (v2i64) inp7);
    AVER_UB2_UB(res0, tmp0, res1, tmp1, res0, res1);
    ST_D4(res0, res1, 0, 1, 0, 1, dst + 4 * dst_stride, dst_stride);
}
