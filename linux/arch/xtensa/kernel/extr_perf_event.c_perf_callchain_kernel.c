
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int max_stack; } ;


 int callchain_trace ;
 int xtensa_backtrace_kernel (struct pt_regs*,int ,int ,int *,struct perf_callchain_entry_ctx*) ;

void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
      struct pt_regs *regs)
{
 xtensa_backtrace_kernel(regs, entry->max_stack,
    callchain_trace, ((void*)0), entry);
}
