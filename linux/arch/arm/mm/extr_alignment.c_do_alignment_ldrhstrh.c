
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {unsigned long* uregs; } ;


 scalar_t__ LDST_L_BIT (int) ;
 unsigned int RD_BITS (int) ;
 int TYPE_FAULT ;
 int TYPE_LDST ;
 int ai_half ;
 int get16_unaligned_check (unsigned long,unsigned long) ;
 int get16t_unaligned_check (unsigned long,unsigned long) ;
 int put16_unaligned_check (unsigned long,unsigned long) ;
 int put16t_unaligned_check (unsigned long,unsigned long) ;
 int uaccess_restore (unsigned int) ;
 unsigned int uaccess_save_and_enable () ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int
do_alignment_ldrhstrh(unsigned long addr, u32 instr, struct pt_regs *regs)
{
 unsigned int rd = RD_BITS(instr);

 ai_half += 1;

 if (user_mode(regs))
  goto user;

 if (LDST_L_BIT(instr)) {
  unsigned long val;
  get16_unaligned_check(val, addr);


  if (instr & 0x40)
   val = (signed long)((signed short) val);

  regs->uregs[rd] = val;
 } else
  put16_unaligned_check(regs->uregs[rd], addr);

 return TYPE_LDST;

 user:
 if (LDST_L_BIT(instr)) {
  unsigned long val;
  unsigned int __ua_flags = uaccess_save_and_enable();

  get16t_unaligned_check(val, addr);
  uaccess_restore(__ua_flags);


  if (instr & 0x40)
   val = (signed long)((signed short) val);

  regs->uregs[rd] = val;
 } else {
  unsigned int __ua_flags = uaccess_save_and_enable();
  put16t_unaligned_check(regs->uregs[rd], addr);
  uaccess_restore(__ua_flags);
 }

 return TYPE_LDST;

 fault:
 return TYPE_FAULT;
}
