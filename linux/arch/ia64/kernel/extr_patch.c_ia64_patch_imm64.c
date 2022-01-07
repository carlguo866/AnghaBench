
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int ia64_patch (unsigned long,int,unsigned long) ;

void
ia64_patch_imm64 (u64 insn_addr, u64 val)
{



   insn_addr &= -16UL;
 ia64_patch(insn_addr + 2,
     0x01fffefe000UL, ( ((val & 0x8000000000000000UL) >> 27)
         | ((val & 0x0000000000200000UL) << 0)
         | ((val & 0x00000000001f0000UL) << 6)
         | ((val & 0x000000000000ff80UL) << 20)
         | ((val & 0x000000000000007fUL) << 13) ));
 ia64_patch(insn_addr + 1, 0x1ffffffffffUL, val >> 22);
}
