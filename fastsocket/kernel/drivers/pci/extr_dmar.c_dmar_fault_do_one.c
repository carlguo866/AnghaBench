
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct intel_iommu {int dummy; } ;


 int INTR_REMAP ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 char* dmar_get_fault_reason (int ,int*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int dmar_fault_do_one(struct intel_iommu *iommu, int type,
  u8 fault_reason, u16 source_id, unsigned long long addr)
{
 const char *reason;
 int fault_type;

 reason = dmar_get_fault_reason(fault_reason, &fault_type);

 if (fault_type == INTR_REMAP)
  pr_err("INTR-REMAP: Request device [[%02x:%02x.%d] "
         "fault index %llx\n"
   "INTR-REMAP:[fault reason %02d] %s\n",
   (source_id >> 8), PCI_SLOT(source_id & 0xFF),
   PCI_FUNC(source_id & 0xFF), addr >> 48,
   fault_reason, reason);
 else
  pr_err("DMAR:[%s] Request device [%02x:%02x.%d] "
         "fault addr %llx \n"
         "DMAR:[fault reason %02d] %s\n",
         (type ? "DMA Read" : "DMA Write"),
         (source_id >> 8), PCI_SLOT(source_id & 0xFF),
         PCI_FUNC(source_id & 0xFF), addr, fault_reason, reason);
 return 0;
}
