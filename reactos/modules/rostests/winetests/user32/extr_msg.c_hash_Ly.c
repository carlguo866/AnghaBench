
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned hash_Ly(const char *str)
{
    unsigned hash = 0;

    for (; *str; str++)
        hash = hash * 1664525u + (unsigned char)(*str) + 1013904223u;

    return hash;
}
