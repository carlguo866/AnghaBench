
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_3__ {int scale; int coef_hi_model; int coef_model; } ;
typedef int RangeCoder ;
typedef TYPE_1__ HaarBlockCoder ;


 int av_clip_uint8 (int) ;
 int decode_coeff (int *,int *) ;
 int rac_get_model256_sym (int *,int *) ;

__attribute__((used)) static void decode_haar_block(RangeCoder *c, HaarBlockCoder *hc,
                              uint8_t *dst, ptrdiff_t stride,
                              int block_size, int *block)
{
    const int hsize = block_size >> 1;
    int A, B, C, D, t1, t2, t3, t4;
    int i, j;

    for (j = 0; j < block_size; j++) {
        for (i = 0; i < block_size; i++) {
            if (i < hsize && j < hsize)
                block[i] = rac_get_model256_sym(c, &hc->coef_model);
            else
                block[i] = decode_coeff(c, &hc->coef_hi_model);
            block[i] *= hc->scale;
        }
        block += block_size;
    }
    block -= block_size * block_size;

    for (j = 0; j < hsize; j++) {
        for (i = 0; i < hsize; i++) {
            A = block[i];
            B = block[i + hsize];
            C = block[i + hsize * block_size];
            D = block[i + hsize * block_size + hsize];

            t1 = A - B;
            t2 = C - D;
            t3 = A + B;
            t4 = C + D;
            dst[i * 2] = av_clip_uint8(t1 - t2);
            dst[i * 2 + stride] = av_clip_uint8(t1 + t2);
            dst[i * 2 + 1] = av_clip_uint8(t3 - t4);
            dst[i * 2 + 1 + stride] = av_clip_uint8(t3 + t4);
        }
        block += block_size;
        dst += stride * 2;
    }
}
