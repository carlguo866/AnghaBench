
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t bits_to_words(size_t bits)
{
    return (bits + 31) / 32;
}
