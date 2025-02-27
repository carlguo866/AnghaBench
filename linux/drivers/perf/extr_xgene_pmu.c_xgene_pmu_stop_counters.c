
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_pmu_dev {TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ csr; } ;


 scalar_t__ PMU_PMCR ;
 int PMU_PMCR_E ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void xgene_pmu_stop_counters(struct xgene_pmu_dev *pmu_dev)
{
 u32 val;

 val = readl(pmu_dev->inf->csr + PMU_PMCR);
 val &= ~PMU_PMCR_E;
 writel(val, pmu_dev->inf->csr + PMU_PMCR);
}
