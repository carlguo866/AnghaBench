
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;


 int BUILD_BUG_ON (long) ;
 int EINVAL ;
 long PTRACE_O_DETACHED ;
 long PTRACE_O_MASK ;
 long PTRACE_O_SYSEMU ;
 int ptrace_set_events (struct task_struct*,struct utrace_engine*,long) ;

__attribute__((used)) static int ptrace_set_options(struct task_struct *tracee,
    struct utrace_engine *engine, long data)
{
 BUILD_BUG_ON(PTRACE_O_MASK & (PTRACE_O_SYSEMU | PTRACE_O_DETACHED));

 ptrace_set_events(tracee, engine, data & PTRACE_O_MASK);
 return (data & ~PTRACE_O_MASK) ? -EINVAL : 0;
}
