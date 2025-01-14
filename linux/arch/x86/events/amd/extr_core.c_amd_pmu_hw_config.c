
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int config; scalar_t__ precise_ip; } ;
struct TYPE_3__ {int config; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;


 int AMD64_RAW_EVENT_MASK ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_TYPE_RAW ;
 int amd_core_hw_config (struct perf_event*) ;
 scalar_t__ get_ibs_caps () ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int x86_pmu_hw_config (struct perf_event*) ;

__attribute__((used)) static int amd_pmu_hw_config(struct perf_event *event)
{
 int ret;


 if (event->attr.precise_ip && get_ibs_caps())
  return -ENOENT;

 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 ret = x86_pmu_hw_config(event);
 if (ret)
  return ret;

 if (event->attr.type == PERF_TYPE_RAW)
  event->hw.config |= event->attr.config & AMD64_RAW_EVENT_MASK;

 return amd_core_hw_config(event);
}
