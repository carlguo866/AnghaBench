
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int event_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int n_events; int txn_flags; int n_added; int * events; struct perf_event** event; int * current_idx; } ;
struct TYPE_4__ {int max_hw_events; } ;


 int EAGAIN ;
 int PERF_EF_START ;
 int PERF_HES_ARCH ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PERF_PMU_TXN_ADD ;
 int PIC_NO_INDEX ;
 scalar_t__ check_excludes (struct perf_event**,int,int) ;
 int cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ sparc_check_constraints (struct perf_event**,int *,int) ;
 TYPE_2__* sparc_pmu ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int sparc_pmu_add(struct perf_event *event, int ef_flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int n0, ret = -EAGAIN;
 unsigned long flags;

 local_irq_save(flags);

 n0 = cpuc->n_events;
 if (n0 >= sparc_pmu->max_hw_events)
  goto out;

 cpuc->event[n0] = event;
 cpuc->events[n0] = event->hw.event_base;
 cpuc->current_idx[n0] = PIC_NO_INDEX;

 event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
 if (!(ef_flags & PERF_EF_START))
  event->hw.state |= PERF_HES_ARCH;






 if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
  goto nocheck;

 if (check_excludes(cpuc->event, n0, 1))
  goto out;
 if (sparc_check_constraints(cpuc->event, cpuc->events, n0 + 1))
  goto out;

nocheck:
 cpuc->n_events++;
 cpuc->n_added++;

 ret = 0;
out:
 local_irq_restore(flags);
 return ret;
}
