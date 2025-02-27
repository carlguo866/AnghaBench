
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int config1; } ;
struct hw_perf_event_extra {int config; int idx; scalar_t__ reg; } ;
struct TYPE_6__ {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_2__ attr; TYPE_3__ hw; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct extra_reg {int event; int config_mask; int idx; scalar_t__ msr; } ;
struct TYPE_4__ {int pmu_idx; } ;


 scalar_t__ HSWEP_C0_MSR_PMON_BOX_FILTER0 ;
 int HSWEP_CBO_MSR_OFFSET ;
 int skx_cha_filter_mask (int) ;
 struct extra_reg* skx_uncore_cha_extra_regs ;

__attribute__((used)) static int skx_cha_hw_config(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 struct extra_reg *er;
 int idx = 0;

 for (er = skx_uncore_cha_extra_regs; er->msr; er++) {
  if (er->event != (event->hw.config & er->config_mask))
   continue;
  idx |= er->idx;
 }

 if (idx) {
  reg1->reg = HSWEP_C0_MSR_PMON_BOX_FILTER0 +
       HSWEP_CBO_MSR_OFFSET * box->pmu->pmu_idx;
  reg1->config = event->attr.config1 & skx_cha_filter_mask(idx);
  reg1->idx = idx;
 }
 return 0;
}
