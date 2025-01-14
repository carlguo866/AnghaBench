
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* gregs; } ;
struct TYPE_6__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct TYPE_7__ {scalar_t__ si_addr; } ;
typedef TYPE_3__ siginfo_t ;


 size_t REG_IP ;
 int X86_EFLAGS_TF ;
 int _exit (int) ;
 int get_eflags () ;
 int printf (char*,...) ;
 int set_eflags (int) ;
 int sig_traps ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;

 if (get_eflags() & X86_EFLAGS_TF) {
  set_eflags(get_eflags() & ~X86_EFLAGS_TF);
  printf("[WARN]\tSIGTRAP handler had TF set\n");
  _exit(1);
 }

 sig_traps++;

 if (sig_traps == 10000 || sig_traps == 10001) {
  printf("[WARN]\tHit %d SIGTRAPs with si_addr 0x%lx, ip 0x%lx\n",
         (int)sig_traps,
         (unsigned long)info->si_addr,
         (unsigned long)ctx->uc_mcontext.gregs[REG_IP]);
 }
}
