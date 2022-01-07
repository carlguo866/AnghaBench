
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64
get_imm64 (u64 insn_addr)
{
 u64 *p = (u64 *) (insn_addr & -16);

 return ( (p[1] & 0x0800000000000000UL) << 4) |
  ((p[1] & 0x00000000007fffffUL) << 40) |
  ((p[0] & 0xffffc00000000000UL) >> 24) |
  ((p[1] & 0x0000100000000000UL) >> 23) |
  ((p[1] & 0x0003e00000000000UL) >> 29) |
  ((p[1] & 0x07fc000000000000UL) >> 43) |
  ((p[1] & 0x000007f000000000UL) >> 36);
}
