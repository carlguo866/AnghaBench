
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int br_i31_modpow_opt (int*,unsigned char const*,size_t,int const*,int,int*,size_t) ;

uint32_t
br_i62_modpow_opt(uint32_t *x31, const unsigned char *e, size_t elen,
 const uint32_t *m31, uint32_t m0i31, uint64_t *tmp, size_t twlen)
{
 size_t mwlen;

 mwlen = (m31[0] + 63) >> 5;
 if (twlen < mwlen) {
  return 0;
 }
 return br_i31_modpow_opt(x31, e, elen, m31, m0i31,
  (uint32_t *)tmp, twlen << 1);
}
