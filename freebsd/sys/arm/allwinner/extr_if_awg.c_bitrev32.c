
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
bitrev32(uint32_t x)
{
 x = (((x & 0xaaaaaaaa) >> 1) | ((x & 0x55555555) << 1));
 x = (((x & 0xcccccccc) >> 2) | ((x & 0x33333333) << 2));
 x = (((x & 0xf0f0f0f0) >> 4) | ((x & 0x0f0f0f0f) << 4));
 x = (((x & 0xff00ff00) >> 8) | ((x & 0x00ff00ff) << 8));

 return (x >> 16) | (x << 16);
}
