
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t be32(uint32_t host)
{
    uint32_t big = 0;
    const union {
        long one;
        char little;
    } is_endian = { 1 };

    if (!is_endian.little)
        return host;

    big |= (host & 0xff000000) >> 24;
    big |= (host & 0x00ff0000) >> 8;
    big |= (host & 0x0000ff00) << 8;
    big |= (host & 0x000000ff) << 24;
    return big;
}
