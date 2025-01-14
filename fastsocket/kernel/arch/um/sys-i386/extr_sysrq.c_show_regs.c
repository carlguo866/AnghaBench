
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PT_REGS_CS (struct pt_regs*) ;
 int PT_REGS_DS (struct pt_regs*) ;
 int PT_REGS_EAX (struct pt_regs*) ;
 int PT_REGS_EBP (struct pt_regs*) ;
 int PT_REGS_EBX (struct pt_regs*) ;
 int PT_REGS_ECX (struct pt_regs*) ;
 int PT_REGS_EDI (struct pt_regs*) ;
 int PT_REGS_EDX (struct pt_regs*) ;
 int PT_REGS_EFLAGS (struct pt_regs*) ;
 int PT_REGS_ES (struct pt_regs*) ;
 int PT_REGS_ESI (struct pt_regs*) ;
 int PT_REGS_IP (struct pt_regs*) ;
 int PT_REGS_SP (struct pt_regs*) ;
 int PT_REGS_SS (struct pt_regs*) ;
 int print_tainted () ;
 int printk (char*,...) ;
 int show_trace (int *,unsigned long*) ;
 int smp_processor_id () ;

void show_regs(struct pt_regs *regs)
{
        printk("\n");
        printk("EIP: %04lx:[<%08lx>] CPU: %d %s",
        0xffff & PT_REGS_CS(regs), PT_REGS_IP(regs),
        smp_processor_id(), print_tainted());
        if (PT_REGS_CS(regs) & 3)
                printk(" ESP: %04lx:%08lx", 0xffff & PT_REGS_SS(regs),
         PT_REGS_SP(regs));
        printk(" EFLAGS: %08lx\n    %s\n", PT_REGS_EFLAGS(regs),
        print_tainted());
        printk("EAX: %08lx EBX: %08lx ECX: %08lx EDX: %08lx\n",
                PT_REGS_EAX(regs), PT_REGS_EBX(regs),
        PT_REGS_ECX(regs),
        PT_REGS_EDX(regs));
        printk("ESI: %08lx EDI: %08lx EBP: %08lx",
        PT_REGS_ESI(regs), PT_REGS_EDI(regs),
        PT_REGS_EBP(regs));
        printk(" DS: %04lx ES: %04lx\n",
        0xffff & PT_REGS_DS(regs),
        0xffff & PT_REGS_ES(regs));

        show_trace(((void*)0), (unsigned long *) &regs);
}
