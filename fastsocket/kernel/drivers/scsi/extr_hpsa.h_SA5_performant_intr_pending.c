
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ vaddr; scalar_t__ msix_vector; scalar_t__ msi_vector; } ;


 scalar_t__ SA5_INTR_STATUS ;
 scalar_t__ SA5_OUTDB_STATUS ;
 unsigned long SA5_OUTDB_STATUS_PERF_BIT ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static bool SA5_performant_intr_pending(struct ctlr_info *h)
{
 unsigned long register_value = readl(h->vaddr + SA5_INTR_STATUS);

 if (!register_value)
  return 0;

 if (h->msi_vector || h->msix_vector)
  return 1;


 register_value = readl(h->vaddr + SA5_OUTDB_STATUS);
 return register_value & SA5_OUTDB_STATUS_PERF_BIT;
}
