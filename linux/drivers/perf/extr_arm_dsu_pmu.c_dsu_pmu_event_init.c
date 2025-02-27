
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int config; } ;
struct TYPE_6__ {int config_base; } ;
struct perf_event {int attach_state; TYPE_3__ attr; TYPE_2__ hw; int cpu; TYPE_4__* pmu; } ;
struct TYPE_5__ {int dev; } ;
struct dsu_pmu {int active_cpu; TYPE_1__ pmu; int associated_cpus; } ;
struct TYPE_8__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int PERF_ATTACH_TASK ;
 int cpumask_first (int *) ;
 int cpumask_test_cpu (int ,int *) ;
 int dev_dbg (int ,char*) ;
 int dsu_pmu_validate_group (struct perf_event*) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int nr_cpu_ids ;
 struct dsu_pmu* to_dsu_pmu (TYPE_4__*) ;

__attribute__((used)) static int dsu_pmu_event_init(struct perf_event *event)
{
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(event->pmu);

 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 if (is_sampling_event(event)) {
  dev_dbg(dsu_pmu->pmu.dev, "Can't support sampling events\n");
  return -EOPNOTSUPP;
 }


 if (event->cpu < 0 || event->attach_state & PERF_ATTACH_TASK) {
  dev_dbg(dsu_pmu->pmu.dev, "Can't support per-task counters\n");
  return -EINVAL;
 }

 if (has_branch_stack(event)) {
  dev_dbg(dsu_pmu->pmu.dev, "Can't support filtering\n");
  return -EINVAL;
 }

 if (!cpumask_test_cpu(event->cpu, &dsu_pmu->associated_cpus)) {
  dev_dbg(dsu_pmu->pmu.dev,
    "Requested cpu is not associated with the DSU\n");
  return -EINVAL;
 }






 event->cpu = cpumask_first(&dsu_pmu->active_cpu);
 if (event->cpu >= nr_cpu_ids)
  return -EINVAL;
 if (!dsu_pmu_validate_group(event))
  return -EINVAL;

 event->hw.config_base = event->attr.config;
 return 0;
}
