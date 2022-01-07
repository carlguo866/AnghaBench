
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct arm_pmu {scalar_t__ num_events; } ;


 scalar_t__ ARMV8_IDX_CYCLE_COUNTER ;
 int ARMV8_PMU_PMCR_C ;
 int ARMV8_PMU_PMCR_LC ;
 int ARMV8_PMU_PMCR_P ;
 int U32_MAX ;
 int armv8pmu_disable_counter (scalar_t__) ;
 int armv8pmu_disable_intens (scalar_t__) ;
 int armv8pmu_pmcr_write (int) ;
 int kvm_clr_pmu_events (int ) ;

__attribute__((used)) static void armv8pmu_reset(void *info)
{
 struct arm_pmu *cpu_pmu = (struct arm_pmu *)info;
 u32 idx, nb_cnt = cpu_pmu->num_events;


 for (idx = ARMV8_IDX_CYCLE_COUNTER; idx < nb_cnt; ++idx) {
  armv8pmu_disable_counter(idx);
  armv8pmu_disable_intens(idx);
 }


 kvm_clr_pmu_events(U32_MAX);





 armv8pmu_pmcr_write(ARMV8_PMU_PMCR_P | ARMV8_PMU_PMCR_C |
       ARMV8_PMU_PMCR_LC);
}
