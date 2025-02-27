
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long config; int config2; int config1; } ;
struct hw_perf_event_extra {int idx; int config; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 int EINVAL ;
 int NHMEX_R_PMON_CTL_EV_SEL_MASK ;
 int NHMEX_R_PMON_CTL_EV_SEL_SHIFT ;

__attribute__((used)) static int nhmex_rbox_hw_config(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;
 int idx;

 idx = (event->hw.config & NHMEX_R_PMON_CTL_EV_SEL_MASK) >>
  NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
 if (idx >= 0x18)
  return -EINVAL;

 reg1->idx = idx;
 reg1->config = event->attr.config1;

 switch (idx % 6) {
 case 4:
 case 5:
  hwc->config |= event->attr.config & (~0ULL << 32);
  reg2->config = event->attr.config2;
  break;
 }
 return 0;
}
