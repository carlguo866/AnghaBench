
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint64_t shuffle_inv(uint64_t in, const uint8_t *shuffle, int shuffle_len)
{
    int i;
    uint64_t res = 0;
    shuffle += shuffle_len - 1;
    for (i = 0; i < shuffle_len; i++) {
        res |= (in & 1) << *shuffle--;
        in >>= 1;
    }
    return res;
}
