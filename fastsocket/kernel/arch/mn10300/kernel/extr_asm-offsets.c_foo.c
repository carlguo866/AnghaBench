
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int uc_mcontext; } ;
struct TYPE_4__ {int tail; int head; int buf; } ;


 int BLANK () ;
 int CLONE_FILES ;
 int CLONE_FILES_asm ;
 int CLONE_FS ;
 int CLONE_FS_asm ;
 int CLONE_SIGHAND ;
 int CLONE_SIGHAND_asm ;
 int CLONE_UNTRACED ;
 int CLONE_UNTRACED_asm ;
 int CLONE_VM ;
 int CLONE_VM_asm ;
 int DEFINE (int ,int) ;
 int EXEC_DOMAIN_handler ;
 int OFFSET (int ,int ,int ) ;
 int PAGE_SIZE ;
 int PAGE_SIZE_asm ;
 int REG_A0 ;
 int REG_A1 ;
 int REG_A2 ;
 int REG_A3 ;
 int REG_D0 ;
 int REG_D1 ;
 int REG_D2 ;
 int REG_D3 ;
 int REG_E0 ;
 int REG_E1 ;
 int REG_E2 ;
 int REG_E3 ;
 int REG_E4 ;
 int REG_E5 ;
 int REG_E6 ;
 int REG_E7 ;
 int REG_EPSW ;
 int REG_LAR ;
 int REG_LIR ;
 int REG_MCRH ;
 int REG_MCRL ;
 int REG_MCVF ;
 int REG_MDR ;
 int REG_MDRQ ;
 int REG_NEXT ;
 int REG_ORIG_D0 ;
 int REG_PC ;
 int REG_SP ;
 int REG__END ;
 int RT_SIGFRAME_sigcontext ;
 int SIGCHLD ;
 int SIGCHLD_asm ;
 int SIGCONTEXT_d0 ;
 int SIGCONTEXT_d1 ;
 int THREAD_A3 ;
 int THREAD_FRAME ;
 int THREAD_PC ;
 int THREAD_SP ;
 int THREAD_UREGS ;
 int THREAD_USP ;
 int TI_addr_limit ;
 int TI_cpu ;
 int TI_exec_domain ;
 int TI_flags ;
 int TI_preempt_count ;
 int TI_restart_block ;
 int TI_task ;
 int UART_XMIT_SIZE ;
 int __UART_XMIT_SIZE ;
 int __frame ;
 int __intr_flags ;
 int __iobase ;
 int __rx_buffer ;
 int __rx_icr ;
 int __rx_inp ;
 int __rx_outp ;
 int __tm_icr ;
 int __tx_break ;
 int __tx_icr ;
 int __tx_xchar ;
 int __uart_state ;
 int __xmit_buffer ;
 int __xmit_head ;
 int __xmit_tail ;
 int _iobase ;
 int _tmicr ;
 int a0 ;
 int a1 ;
 int a2 ;
 int a3 ;
 int addr_limit ;
 int cpu ;
 int d0 ;
 int d1 ;
 int d2 ;
 int d3 ;
 int e0 ;
 int e1 ;
 int e2 ;
 int e3 ;
 int e4 ;
 int e5 ;
 int e6 ;
 int e7 ;
 int epsw ;
 int exec_domain ;
 int flags ;
 int handler ;
 int intr_flags ;
 int lar ;
 int lir ;
 int mcrh ;
 int mcrl ;
 int mcvf ;
 int mdr ;
 int mdrq ;
 int mn10300_serial_port ;
 int next ;
 int orig_d0 ;
 int pc ;
 int preempt_count ;
 int pt_regs ;
 int restart_block ;
 int rt_sigframe ;
 int rx_buffer ;
 int rx_icr ;
 int rx_inp ;
 int rx_outp ;
 int sigcontext ;
 int sp ;
 int task ;
 int thread_info ;
 int thread_struct ;
 int tx_break ;
 int tx_icr ;
 int tx_xchar ;
 TYPE_3__ uart ;
 int uart_state ;
 TYPE_2__ uc ;
 int uregs ;
 int usp ;
 TYPE_1__ xmit ;

void foo(void)
{
 OFFSET(SIGCONTEXT_d0, sigcontext, d0);
 OFFSET(SIGCONTEXT_d1, sigcontext, d1);
 BLANK();

 OFFSET(TI_task, thread_info, task);
 OFFSET(TI_exec_domain, thread_info, exec_domain);
 OFFSET(TI_flags, thread_info, flags);
 OFFSET(TI_cpu, thread_info, cpu);
 OFFSET(TI_preempt_count, thread_info, preempt_count);
 OFFSET(TI_addr_limit, thread_info, addr_limit);
 OFFSET(TI_restart_block, thread_info, restart_block);
 BLANK();

 OFFSET(REG_D0, pt_regs, d0);
 OFFSET(REG_D1, pt_regs, d1);
 OFFSET(REG_D2, pt_regs, d2);
 OFFSET(REG_D3, pt_regs, d3);
 OFFSET(REG_A0, pt_regs, a0);
 OFFSET(REG_A1, pt_regs, a1);
 OFFSET(REG_A2, pt_regs, a2);
 OFFSET(REG_A3, pt_regs, a3);
 OFFSET(REG_E0, pt_regs, e0);
 OFFSET(REG_E1, pt_regs, e1);
 OFFSET(REG_E2, pt_regs, e2);
 OFFSET(REG_E3, pt_regs, e3);
 OFFSET(REG_E4, pt_regs, e4);
 OFFSET(REG_E5, pt_regs, e5);
 OFFSET(REG_E6, pt_regs, e6);
 OFFSET(REG_E7, pt_regs, e7);
 OFFSET(REG_SP, pt_regs, sp);
 OFFSET(REG_EPSW, pt_regs, epsw);
 OFFSET(REG_PC, pt_regs, pc);
 OFFSET(REG_LAR, pt_regs, lar);
 OFFSET(REG_LIR, pt_regs, lir);
 OFFSET(REG_MDR, pt_regs, mdr);
 OFFSET(REG_MCVF, pt_regs, mcvf);
 OFFSET(REG_MCRL, pt_regs, mcrl);
 OFFSET(REG_MCRH, pt_regs, mcrh);
 OFFSET(REG_MDRQ, pt_regs, mdrq);
 OFFSET(REG_ORIG_D0, pt_regs, orig_d0);
 OFFSET(REG_NEXT, pt_regs, next);
 DEFINE(REG__END, sizeof(struct pt_regs));
 BLANK();

 OFFSET(THREAD_UREGS, thread_struct, uregs);
 OFFSET(THREAD_PC, thread_struct, pc);
 OFFSET(THREAD_SP, thread_struct, sp);
 OFFSET(THREAD_A3, thread_struct, a3);
 OFFSET(THREAD_USP, thread_struct, usp);
 OFFSET(THREAD_FRAME, thread_struct, __frame);
 BLANK();

 DEFINE(CLONE_VM_asm, CLONE_VM);
 DEFINE(CLONE_FS_asm, CLONE_FS);
 DEFINE(CLONE_FILES_asm, CLONE_FILES);
 DEFINE(CLONE_SIGHAND_asm, CLONE_SIGHAND);
 DEFINE(CLONE_UNTRACED_asm, CLONE_UNTRACED);
 DEFINE(SIGCHLD_asm, SIGCHLD);
 BLANK();

 OFFSET(EXEC_DOMAIN_handler, exec_domain, handler);
 OFFSET(RT_SIGFRAME_sigcontext, rt_sigframe, uc.uc_mcontext);

 DEFINE(PAGE_SIZE_asm, PAGE_SIZE);

 OFFSET(__rx_buffer, mn10300_serial_port, rx_buffer);
 OFFSET(__rx_inp, mn10300_serial_port, rx_inp);
 OFFSET(__rx_outp, mn10300_serial_port, rx_outp);
 OFFSET(__uart_state, mn10300_serial_port, uart.state);
 OFFSET(__tx_xchar, mn10300_serial_port, tx_xchar);
 OFFSET(__tx_break, mn10300_serial_port, tx_break);
 OFFSET(__intr_flags, mn10300_serial_port, intr_flags);
 OFFSET(__rx_icr, mn10300_serial_port, rx_icr);
 OFFSET(__tx_icr, mn10300_serial_port, tx_icr);
 OFFSET(__tm_icr, mn10300_serial_port, _tmicr);
 OFFSET(__iobase, mn10300_serial_port, _iobase);

 DEFINE(__UART_XMIT_SIZE, UART_XMIT_SIZE);
 OFFSET(__xmit_buffer, uart_state, xmit.buf);
 OFFSET(__xmit_head, uart_state, xmit.head);
 OFFSET(__xmit_tail, uart_state, xmit.tail);
}
