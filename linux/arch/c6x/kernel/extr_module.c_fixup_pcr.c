
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ Elf32_Addr ;


 int pr_debug (char*,int,int*,void*,int) ;
 int pr_err (char*,int,int*,void*) ;

__attribute__((used)) static inline int fixup_pcr(u32 *ip, Elf32_Addr dest, u32 maskbits, int shift)
{
 u32 opcode;
 long ep = (long)ip & ~31;
 long delta = ((long)dest - ep) >> 2;
 long mask = (1 << maskbits) - 1;

 if ((delta >> (maskbits - 1)) == 0 ||
     (delta >> (maskbits - 1)) == -1) {
  opcode = *ip;
  opcode &= ~(mask << shift);
  opcode |= ((delta & mask) << shift);
  *ip = opcode;

  pr_debug("REL PCR_S%d[%p] dest[%p] opcode[%08x]\n",
    maskbits, ip, (void *)dest, opcode);

  return 0;
 }
 pr_err("PCR_S%d reloc %p -> %p out of range!\n",
        maskbits, ip, (void *)dest);

 return -1;
}
