
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int config; int idx; int event_base; } ;
struct TYPE_7__ {int config; scalar_t__ type; scalar_t__ sample_period; } ;
struct perf_event {int cpu; TYPE_2__ hw; TYPE_4__* pmu; TYPE_1__ attr; } ;
struct TYPE_11__ {int msr; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {int msr; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int PERF_CSTATE_CORE_EVENT_MAX ;
 int PERF_CSTATE_PKG_EVENT_MAX ;
 int array_index_nospec (unsigned long,int) ;
 TYPE_6__* core_msr ;
 int core_msr_mask ;
 int cpumask_any_and (int *,int ) ;
 int cstate_core_cpu_mask ;
 TYPE_4__ cstate_core_pmu ;
 int cstate_pkg_cpu_mask ;
 TYPE_4__ cstate_pkg_pmu ;
 int nr_cpu_ids ;
 TYPE_3__* pkg_msr ;
 int pkg_msr_mask ;
 int topology_die_cpumask (int) ;
 int topology_sibling_cpumask (int) ;

__attribute__((used)) static int cstate_pmu_event_init(struct perf_event *event)
{
 u64 cfg = event->attr.config;
 int cpu;

 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 if (event->attr.sample_period)
  return -EINVAL;

 if (event->cpu < 0)
  return -EINVAL;

 if (event->pmu == &cstate_core_pmu) {
  if (cfg >= PERF_CSTATE_CORE_EVENT_MAX)
   return -EINVAL;
  cfg = array_index_nospec((unsigned long)cfg, PERF_CSTATE_CORE_EVENT_MAX);
  if (!(core_msr_mask & (1 << cfg)))
   return -EINVAL;
  event->hw.event_base = core_msr[cfg].msr;
  cpu = cpumask_any_and(&cstate_core_cpu_mask,
          topology_sibling_cpumask(event->cpu));
 } else if (event->pmu == &cstate_pkg_pmu) {
  if (cfg >= PERF_CSTATE_PKG_EVENT_MAX)
   return -EINVAL;
  cfg = array_index_nospec((unsigned long)cfg, PERF_CSTATE_PKG_EVENT_MAX);
  if (!(pkg_msr_mask & (1 << cfg)))
   return -EINVAL;
  event->hw.event_base = pkg_msr[cfg].msr;
  cpu = cpumask_any_and(&cstate_pkg_cpu_mask,
          topology_die_cpumask(event->cpu));
 } else {
  return -ENOENT;
 }

 if (cpu >= nr_cpu_ids)
  return -ENODEV;

 event->cpu = cpu;
 event->hw.config = cfg;
 event->hw.idx = -1;
 return 0;
}
