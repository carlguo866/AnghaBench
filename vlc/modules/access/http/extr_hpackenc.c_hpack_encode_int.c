
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uintmax_t ;
typedef unsigned int uint8_t ;


 int assert (int) ;

__attribute__((used)) static size_t hpack_encode_int(uint8_t *restrict buf, size_t size,
                               uintmax_t value, unsigned n)
{
    assert(n >= 1 && n <= 8);

    unsigned mask = (1 << n) - 1;
    size_t ret = 1;

    if (value < mask)
    {
        if (size > 0)
            buf[0] |= value;
        return 1;
    }

    if (size > 0)
       *(buf++) |= mask;
    value -= mask;

    while (value >= 128)
    {
        if (ret++ < size)
            *(buf++) = 0x80 | (value & 0x7F);
        value >>= 7;
    }

    if (ret++ < size)
        *(buf++) = value;
    return ret;
}
