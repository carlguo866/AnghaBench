
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
typedef int out ;
typedef int int32_t ;
typedef int int16_t ;


 int IVI_INV_SLANT8 (int const,int const,int const,int const,int const,int const,int const,int const,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int memset (int*,int ,int) ;

void ff_ivi_inverse_slant_8x8(const int32_t *in, int16_t *out, ptrdiff_t pitch, const uint8_t *flags)
{
    int i;
    const int32_t *src;
    int32_t *dst;
    int tmp[64];
    int t0, t1, t2, t3, t4, t5, t6, t7, t8;


    src = in;
    dst = tmp;
    for (i = 0; i < 8; i++) {
        if (flags[i]) {
            IVI_INV_SLANT8(src[0], src[8], src[16], src[24], src[32], src[40], src[48], src[56],
                           dst[0], dst[8], dst[16], dst[24], dst[32], dst[40], dst[48], dst[56],
                           t0, t1, t2, t3, t4, t5, t6, t7, t8);
        } else
            dst[0] = dst[8] = dst[16] = dst[24] = dst[32] = dst[40] = dst[48] = dst[56] = 0;

        src++;
        dst++;
    }



    src = tmp;
    for (i = 0; i < 8; i++) {
        if (!src[0] && !src[1] && !src[2] && !src[3] && !src[4] && !src[5] && !src[6] && !src[7]) {
            memset(out, 0, 8*sizeof(out[0]));
        } else {
            IVI_INV_SLANT8(src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7],
                           out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7],
                           t0, t1, t2, t3, t4, t5, t6, t7, t8);
        }
        src += 8;
        out += pitch;
    }

}
