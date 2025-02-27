
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int high_bit(unsigned int z)
{
   int n=0;
   if (z == 0) return -1;
   if (z >= 0x10000) n += 16, z >>= 16;
   if (z >= 0x00100) n += 8, z >>= 8;
   if (z >= 0x00010) n += 4, z >>= 4;
   if (z >= 0x00004) n += 2, z >>= 2;
   if (z >= 0x00002) n += 1, z >>= 1;
   return n;
}
