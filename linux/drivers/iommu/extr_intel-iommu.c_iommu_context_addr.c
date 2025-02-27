
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
struct root_entry {int lo; int hi; } ;
struct intel_iommu {int node; struct root_entry* root_entry; } ;
struct context_entry {int dummy; } ;


 int CONTEXT_SIZE ;
 int VTD_PAGE_MASK ;
 int __iommu_flush_cache (struct intel_iommu*,int*,int) ;
 struct context_entry* alloc_pgtable_page (int ) ;
 struct context_entry* phys_to_virt (int) ;
 scalar_t__ sm_supported (struct intel_iommu*) ;
 unsigned long virt_to_phys (void*) ;

struct context_entry *iommu_context_addr(struct intel_iommu *iommu, u8 bus,
      u8 devfn, int alloc)
{
 struct root_entry *root = &iommu->root_entry[bus];
 struct context_entry *context;
 u64 *entry;

 entry = &root->lo;
 if (sm_supported(iommu)) {
  if (devfn >= 0x80) {
   devfn -= 0x80;
   entry = &root->hi;
  }
  devfn *= 2;
 }
 if (*entry & 1)
  context = phys_to_virt(*entry & VTD_PAGE_MASK);
 else {
  unsigned long phy_addr;
  if (!alloc)
   return ((void*)0);

  context = alloc_pgtable_page(iommu->node);
  if (!context)
   return ((void*)0);

  __iommu_flush_cache(iommu, (void *)context, CONTEXT_SIZE);
  phy_addr = virt_to_phys((void *)context);
  *entry = phy_addr | 1;
  __iommu_flush_cache(iommu, entry, sizeof(*entry));
 }
 return &context[devfn];
}
