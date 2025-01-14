
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_struct {unsigned long debugreg6; unsigned long ptrace_dr7; struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_3__ {unsigned long address; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct perf_event {TYPE_2__ hw; } ;


 int HBP_NUM ;
 int array_index_nospec (int,int) ;

__attribute__((used)) static unsigned long ptrace_get_debugreg(struct task_struct *tsk, int n)
{
 struct thread_struct *thread = &tsk->thread;
 unsigned long val = 0;

 if (n < HBP_NUM) {
  int index = array_index_nospec(n, HBP_NUM);
  struct perf_event *bp = thread->ptrace_bps[index];

  if (bp)
   val = bp->hw.info.address;
 } else if (n == 6) {
  val = thread->debugreg6;
 } else if (n == 7) {
  val = thread->ptrace_dr7;
 }
 return val;
}
