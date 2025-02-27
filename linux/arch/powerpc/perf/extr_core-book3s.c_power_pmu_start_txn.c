
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {unsigned int txn_flags; int n_events; int n_txn_start; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (unsigned int) ;
 int cpu_hw_events ;
 int perf_pmu_disable (struct pmu*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void power_pmu_start_txn(struct pmu *pmu, unsigned int txn_flags)
{
 struct cpu_hw_events *cpuhw = this_cpu_ptr(&cpu_hw_events);

 WARN_ON_ONCE(cpuhw->txn_flags);

 cpuhw->txn_flags = txn_flags;
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;

 perf_pmu_disable(pmu);
 cpuhw->n_txn_start = cpuhw->n_events;
}
