
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int uint8_t ;
typedef int int16_t ;


 int LD_SH8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ST_SH8 (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;
 int TRANSPOSE8x8_SH_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hevc_idct_transpose_32x8_to_8x32(int16_t *coeffs, int16_t *tmp_buf)
{
    uint8_t i;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    for (i = 0; i < 4; i++) {
        LD_SH8(coeffs + i * 8, 32, in0, in1, in2, in3, in4, in5, in6, in7);
        TRANSPOSE8x8_SH_SH(in0, in1, in2, in3, in4, in5, in6, in7,
                           in0, in1, in2, in3, in4, in5, in6, in7);
        ST_SH8(in0, in1, in2, in3, in4, in5, in6, in7, tmp_buf + i * 8 * 8, 8);
    }
}
