
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct iommu_map_table {unsigned long table_map_base; } ;
struct iommu {struct iommu_map_table tbl; struct atu* atu; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {int * dma_mask; TYPE_1__ archdata; } ;
struct atu {struct iommu_map_table tbl; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 unsigned long DMA_ATTR_WEAK_ORDERING ;
 unsigned long DMA_MAPPING_ERROR ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 unsigned long HV_PCI_MAP_ATTR_READ ;
 unsigned long HV_PCI_MAP_ATTR_RELAXED_ORDER ;
 unsigned long HV_PCI_MAP_ATTR_WRITE ;
 long IOMMU_ERROR_CODE ;
 unsigned long IO_PAGE_ALIGN (unsigned long) ;
 unsigned long IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 scalar_t__ IO_PAGE_SIZE ;
 int WARN_ON (int) ;
 unsigned long __pa (unsigned long) ;
 long iommu_batch_add (unsigned long,int ) ;
 long iommu_batch_end (int ) ;
 int iommu_batch_start (struct device*,unsigned long,long) ;
 long iommu_tbl_range_alloc (struct device*,struct iommu_map_table*,unsigned long,int *,unsigned long,int ) ;
 int iommu_tbl_range_free (struct iommu_map_table*,unsigned long,unsigned long,long) ;
 int iommu_use_atu (struct iommu*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ printk_ratelimit () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t dma_4v_map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t sz,
      enum dma_data_direction direction,
      unsigned long attrs)
{
 struct iommu *iommu;
 struct atu *atu;
 struct iommu_map_table *tbl;
 u64 mask;
 unsigned long flags, npages, oaddr;
 unsigned long i, base_paddr;
 unsigned long prot;
 dma_addr_t bus_addr, ret;
 long entry;

 iommu = dev->archdata.iommu;
 atu = iommu->atu;

 if (unlikely(direction == DMA_NONE))
  goto bad;

 oaddr = (unsigned long)(page_address(page) + offset);
 npages = IO_PAGE_ALIGN(oaddr + sz) - (oaddr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;

 mask = *dev->dma_mask;
 if (!iommu_use_atu(iommu, mask))
  tbl = &iommu->tbl;
 else
  tbl = &atu->tbl;

 entry = iommu_tbl_range_alloc(dev, tbl, npages, ((void*)0),
          (unsigned long)(-1), 0);

 if (unlikely(entry == IOMMU_ERROR_CODE))
  goto bad;

 bus_addr = (tbl->table_map_base + (entry << IO_PAGE_SHIFT));
 ret = bus_addr | (oaddr & ~IO_PAGE_MASK);
 base_paddr = __pa(oaddr & IO_PAGE_MASK);
 prot = HV_PCI_MAP_ATTR_READ;
 if (direction != DMA_TO_DEVICE)
  prot |= HV_PCI_MAP_ATTR_WRITE;

 if (attrs & DMA_ATTR_WEAK_ORDERING)
  prot |= HV_PCI_MAP_ATTR_RELAXED_ORDER;

 local_irq_save(flags);

 iommu_batch_start(dev, prot, entry);

 for (i = 0; i < npages; i++, base_paddr += IO_PAGE_SIZE) {
  long err = iommu_batch_add(base_paddr, mask);
  if (unlikely(err < 0L))
   goto iommu_map_fail;
 }
 if (unlikely(iommu_batch_end(mask) < 0L))
  goto iommu_map_fail;

 local_irq_restore(flags);

 return ret;

bad:
 if (printk_ratelimit())
  WARN_ON(1);
 return DMA_MAPPING_ERROR;

iommu_map_fail:
 local_irq_restore(flags);
 iommu_tbl_range_free(tbl, bus_addr, npages, IOMMU_ERROR_CODE);
 return DMA_MAPPING_ERROR;
}
