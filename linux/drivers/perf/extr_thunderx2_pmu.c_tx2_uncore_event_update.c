
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct tx2_uncore_pmu {int type; unsigned long prorate_factor; } ;
struct hw_perf_event {int prev_count; int event_base; } ;
struct perf_event {int count; int pmu; struct hw_perf_event hw; } ;
typedef unsigned long s64 ;
typedef enum tx2_uncore_type { ____Placeholder_tx2_uncore_type } tx2_uncore_type ;


 scalar_t__ DMC_EVENT_DATA_TRANSFERS ;
 scalar_t__ GET_EVENTID (struct perf_event*) ;
 int PMU_TYPE_DMC ;
 int local64_add (unsigned long,int *) ;
 unsigned long local64_xchg (int *,unsigned long) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;
 unsigned long reg_readl (int ) ;

__attribute__((used)) static void tx2_uncore_event_update(struct perf_event *event)
{
 s64 prev, delta, new = 0;
 struct hw_perf_event *hwc = &event->hw;
 struct tx2_uncore_pmu *tx2_pmu;
 enum tx2_uncore_type type;
 u32 prorate_factor;

 tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 type = tx2_pmu->type;
 prorate_factor = tx2_pmu->prorate_factor;

 new = reg_readl(hwc->event_base);
 prev = local64_xchg(&hwc->prev_count, new);


 delta = (u32)(((1UL << 32) - prev) + new);


 if (type == PMU_TYPE_DMC &&
   GET_EVENTID(event) == DMC_EVENT_DATA_TRANSFERS)
  delta = delta/4;





 local64_add(delta * prorate_factor, &event->count);
}
