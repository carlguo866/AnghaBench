
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t simple_hash2(const char *name) {
    register unsigned char *s = (unsigned char *)name;
    register uint32_t hval = 0x811c9dc5;
    while (*s) {
        hval *= 16777619;
        hval ^= (uint32_t) *s++;
    }
    return hval;
}
