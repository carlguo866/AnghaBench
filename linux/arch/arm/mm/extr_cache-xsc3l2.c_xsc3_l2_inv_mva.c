
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void xsc3_l2_inv_mva(unsigned long addr)
{
 __asm__("mcr p15, 1, %0, c7, c7, 1" : : "r" (addr));
}
