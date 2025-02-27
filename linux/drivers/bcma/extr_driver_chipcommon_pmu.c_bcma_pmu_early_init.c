
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int rev; TYPE_3__* core; } ;
struct bcma_drv_cc {int capabilities_ext; TYPE_2__ pmu; TYPE_3__* core; } ;
struct bcma_bus {int dummy; } ;
struct TYPE_4__ {int rev; } ;
struct TYPE_6__ {TYPE_1__ id; struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_EXT_AOB_PRESENT ;
 int BCMA_CC_PMU_CAP ;
 int BCMA_CC_PMU_CAP_REVISION ;
 int BCMA_CORE_PMU ;
 int bcma_debug (struct bcma_bus*,char*,int,int) ;
 TYPE_3__* bcma_find_core (struct bcma_bus*,int ) ;
 int bcma_pmu_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_warn (struct bcma_bus*,char*) ;

void bcma_pmu_early_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 pmucap;

 if (cc->core->id.rev >= 35 &&
     cc->capabilities_ext & BCMA_CC_CAP_EXT_AOB_PRESENT) {
  cc->pmu.core = bcma_find_core(bus, BCMA_CORE_PMU);
  if (!cc->pmu.core)
   bcma_warn(bus, "Couldn't find expected PMU core");
 }
 if (!cc->pmu.core)
  cc->pmu.core = cc->core;

 pmucap = bcma_pmu_read32(cc, BCMA_CC_PMU_CAP);
 cc->pmu.rev = (pmucap & BCMA_CC_PMU_CAP_REVISION);

 bcma_debug(bus, "Found rev %u PMU (capabilities 0x%08X)\n", cc->pmu.rev,
     pmucap);
}
