
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_f ;


 int vec_ld (int,float const*) ;
 int vec_madd (int ,int ,int ) ;
 int vec_splat_u32 (int ) ;
 int vec_st (int ,int,float*) ;

void ff_vector_fmul_altivec(float *dst, const float *src0, const float *src1,
                            int len)
{
    int i;
    vec_f d0, d1, s, zero = (vec_f)vec_splat_u32(0);
    for (i = 0; i < len - 7; i += 8) {
        d0 = vec_ld( 0, src0 + i);
        s = vec_ld( 0, src1 + i);
        d1 = vec_ld(16, src0 + i);
        d0 = vec_madd(d0, s, zero);
        d1 = vec_madd(d1, vec_ld(16, src1 + i), zero);
        vec_st(d0, 0, dst + i);
        vec_st(d1, 16, dst + i);
    }
}
