
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int multiswap_inv_step (int const*,int) ;

__attribute__((used)) static uint64_t multiswap_dec(const uint32_t keys[12],
                              uint64_t key, uint64_t data)
{
    uint32_t a;
    uint32_t b;
    uint32_t c = data >> 32;
    uint32_t tmp = data;
    c -= tmp;
    b = multiswap_inv_step(keys + 6, tmp);
    tmp = c - (key >> 32);
    b -= tmp;
    a = multiswap_inv_step(keys, tmp);
    a -= key;
    return ((uint64_t)b << 32) | a;
}
