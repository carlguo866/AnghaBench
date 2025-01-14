
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int idx; int config; int event_base; } ;
struct TYPE_7__ {int config; scalar_t__ type; scalar_t__ sample_period; } ;
struct perf_event {TYPE_1__ hw; TYPE_3__ attr; TYPE_2__* pmu; } ;
struct TYPE_8__ {int msr; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int PERF_MSR_EVENT_MAX ;
 int array_index_nospec (unsigned long,int) ;
 TYPE_4__* msr ;
 int msr_mask ;

__attribute__((used)) static int msr_event_init(struct perf_event *event)
{
 u64 cfg = event->attr.config;

 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 if (event->attr.sample_period)
  return -EINVAL;

 if (cfg >= PERF_MSR_EVENT_MAX)
  return -EINVAL;

 cfg = array_index_nospec((unsigned long)cfg, PERF_MSR_EVENT_MAX);

 if (!(msr_mask & (1 << cfg)))
  return -EINVAL;

 event->hw.idx = -1;
 event->hw.event_base = msr[cfg].msr;
 event->hw.config = cfg;

 return 0;
}
