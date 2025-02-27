
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int a4; int a3; int a2; int a1; int a0; } ;
struct TYPE_5__ {uintptr_t cpu_dtrace_caller; } ;
typedef TYPE_1__ solaris_cpu_t ;
struct TYPE_6__ {int fbtp_savedval; int fbtp_id; scalar_t__ fbtp_patchpoint; struct TYPE_6__* fbtp_hashnext; } ;
typedef TYPE_2__ fbt_probe_t ;


 size_t FBT_ADDR2NDX (uintptr_t) ;
 size_t curcpu ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__** fbt_probetab ;
 TYPE_1__* solaris_cpu ;

int
fbt_invop(uintptr_t addr, struct trapframe *frame, uintptr_t rval)
{
 solaris_cpu_t *cpu;
 fbt_probe_t *fbt;

 cpu = &solaris_cpu[curcpu];
 fbt = fbt_probetab[FBT_ADDR2NDX(addr)];

 for (; fbt != ((void*)0); fbt = fbt->fbtp_hashnext) {
  if ((uintptr_t)fbt->fbtp_patchpoint == addr) {
   cpu->cpu_dtrace_caller = addr;

   dtrace_probe(fbt->fbtp_id, frame->a0,
       frame->a1, frame->a2,
       frame->a3, frame->a4);

   cpu->cpu_dtrace_caller = 0;
   return (fbt->fbtp_savedval);
  }
 }

 return (0);
}
