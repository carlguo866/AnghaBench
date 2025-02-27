
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event_extra {scalar_t__ idx; int config; scalar_t__ reg; } ;
struct hw_perf_event {int config; scalar_t__ config_base; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 scalar_t__ EXTRA_REG_NONE ;
 int NHMEX_PMON_CTL_EN_BIT22 ;
 int NHMEX_S_PMON_MM_CFG_EN ;
 int wrmsrl (scalar_t__,int) ;

__attribute__((used)) static void nhmex_sbox_msr_enable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 struct hw_perf_event_extra *reg2 = &hwc->branch_reg;

 if (reg1->idx != EXTRA_REG_NONE) {
  wrmsrl(reg1->reg, 0);
  wrmsrl(reg1->reg + 1, reg1->config);
  wrmsrl(reg1->reg + 2, reg2->config);
  wrmsrl(reg1->reg, NHMEX_S_PMON_MM_CFG_EN);
 }
 wrmsrl(hwc->config_base, hwc->config | NHMEX_PMON_CTL_EN_BIT22);
}
