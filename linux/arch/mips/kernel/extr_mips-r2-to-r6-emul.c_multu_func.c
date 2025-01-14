
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int* regs; void* hi; void* lo; } ;
typedef void* s64 ;
typedef scalar_t__ s32 ;


 size_t MIPSInst_RS (int) ;
 size_t MIPSInst_RT (int) ;
 int MIPS_R2_STATS (int ) ;
 int muls ;

__attribute__((used)) static int multu_func(struct pt_regs *regs, u32 ir)
{
 u64 res;
 u32 rt, rs;

 rt = regs->regs[MIPSInst_RT(ir)];
 rs = regs->regs[MIPSInst_RS(ir)];
 res = (u64)rt * (u64)rs;
 rt = res;
 regs->lo = (s64)(s32)rt;
 regs->hi = (s64)(s32)(res >> 32);

 MIPS_R2_STATS(muls);

 return 0;
}
