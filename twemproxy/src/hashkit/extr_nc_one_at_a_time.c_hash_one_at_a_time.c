
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
hash_one_at_a_time(const char *key, size_t key_length)
{
    const char *ptr = key;
    uint32_t value = 0;

    while (key_length--) {
        uint32_t val = (uint32_t) *ptr++;
        value += val;
        value += (value << 10);
        value ^= (value >> 6);
    }
    value += (value << 3);
    value ^= (value >> 11);
    value += (value << 15);

    return value;
}
