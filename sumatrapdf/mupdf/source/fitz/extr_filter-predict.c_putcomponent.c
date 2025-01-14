
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void putcomponent(unsigned char *buf, int x, int bpc, int value)
{
 switch (bpc)
 {
 case 1: buf[x >> 3] |= value << (7 - (x & 7)); break;
 case 2: buf[x >> 2] |= value << ((3 - (x & 3)) << 1); break;
 case 4: buf[x >> 1] |= value << ((1 - (x & 1)) << 2); break;
 case 8: buf[x] = value; break;
 case 16: buf[x<<1] = value>>8; buf[(x<<1)+1] = value; break;
 }
}
