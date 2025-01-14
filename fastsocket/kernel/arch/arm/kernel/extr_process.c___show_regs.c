
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ARM_cpsr; int ARM_r0; int ARM_r1; int ARM_r2; int ARM_r3; int ARM_r4; int ARM_r5; int ARM_r6; int ARM_r7; int ARM_r8; int ARM_r9; int ARM_r10; int ARM_fp; int ARM_ip; int ARM_sp; int ARM_lr; int ARM_pc; } ;
typedef int buf ;
struct TYPE_2__ {int version; int release; } ;


 unsigned long PSR_C_BIT ;
 unsigned long PSR_N_BIT ;
 unsigned long PSR_V_BIT ;
 unsigned long PSR_Z_BIT ;
 scalar_t__ fast_interrupts_enabled (struct pt_regs*) ;
 scalar_t__ get_ds () ;
 scalar_t__ get_fs () ;
 TYPE_1__* init_utsname () ;
 int instruction_pointer (struct pt_regs*) ;
 scalar_t__ interrupts_enabled (struct pt_regs*) ;
 size_t isa_mode (struct pt_regs*) ;
 int * isa_modes ;
 int print_symbol (char*,int ) ;
 int print_tainted () ;
 int printk (char*,...) ;
 size_t processor_mode (struct pt_regs*) ;
 int * processor_modes ;
 int smp_processor_id () ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 scalar_t__ strcspn (int ,char*) ;

void __show_regs(struct pt_regs *regs)
{
 unsigned long flags;
 char buf[64];

 printk("CPU: %d    %s  (%s %.*s)\n",
  smp_processor_id(), print_tainted(), init_utsname()->release,
  (int)strcspn(init_utsname()->version, " "),
  init_utsname()->version);
 print_symbol("PC is at %s\n", instruction_pointer(regs));
 print_symbol("LR is at %s\n", regs->ARM_lr);
 printk("pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\n"
        "sp : %08lx  ip : %08lx  fp : %08lx\n",
  regs->ARM_pc, regs->ARM_lr, regs->ARM_cpsr,
  regs->ARM_sp, regs->ARM_ip, regs->ARM_fp);
 printk("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
  regs->ARM_r10, regs->ARM_r9,
  regs->ARM_r8);
 printk("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
  regs->ARM_r7, regs->ARM_r6,
  regs->ARM_r5, regs->ARM_r4);
 printk("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
  regs->ARM_r3, regs->ARM_r2,
  regs->ARM_r1, regs->ARM_r0);

 flags = regs->ARM_cpsr;
 buf[0] = flags & PSR_N_BIT ? 'N' : 'n';
 buf[1] = flags & PSR_Z_BIT ? 'Z' : 'z';
 buf[2] = flags & PSR_C_BIT ? 'C' : 'c';
 buf[3] = flags & PSR_V_BIT ? 'V' : 'v';
 buf[4] = '\0';

 printk("Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\n",
  buf, interrupts_enabled(regs) ? "n" : "ff",
  fast_interrupts_enabled(regs) ? "n" : "ff",
  processor_modes[processor_mode(regs)],
  isa_modes[isa_mode(regs)],
  get_fs() == get_ds() ? "kernel" : "user");
}
