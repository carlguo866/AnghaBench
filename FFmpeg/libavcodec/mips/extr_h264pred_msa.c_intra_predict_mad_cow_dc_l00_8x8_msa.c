
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SD4 (int,int,int,int,int*,int) ;

__attribute__((used)) static void intra_predict_mad_cow_dc_l00_8x8_msa(uint8_t *src, int32_t stride)
{
    uint32_t src0;
    uint64_t out0, out1;

    src0 = src[0 * stride - 1];
    src0 += src[1 * stride - 1];
    src0 += src[2 * stride - 1];
    src0 += src[3 * stride - 1];
    src0 = (src0 + 2) >> 2;
    out0 = src0 * 0x0101010101010101;
    out1 = 0x8080808080808080;

    SD4(out0, out0, out0, out0, src, stride);
    src += (4 * stride);
    SD4(out1, out1, out1, out1, src, stride);
}
