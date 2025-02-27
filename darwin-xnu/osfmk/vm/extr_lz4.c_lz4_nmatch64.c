
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int lz4_nmatch32 (int const*,int const*) ;

__attribute__((used)) static inline size_t lz4_nmatch64(const uint8_t * a,const uint8_t * b)
{
  size_t n = lz4_nmatch32(a,b);
  return (n == 32)?(32 + lz4_nmatch32(a+32,b+32)):n;
}
