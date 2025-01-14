
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iommu_table {size_t it_page_shift; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_MAPPING_ERROR ;
 unsigned int IOMAP_MAX_ORDER ;
 size_t PAGE_ALIGN (size_t) ;
 struct page* alloc_pages_node (int,int ,unsigned int) ;
 int dev_info (struct device*,char*,size_t) ;
 int free_pages (unsigned long,unsigned int) ;
 unsigned int get_iommu_order (size_t,struct iommu_table*) ;
 unsigned int get_order (size_t) ;
 scalar_t__ iommu_alloc (struct device*,struct iommu_table*,void*,unsigned int,int ,unsigned long,unsigned int,int ) ;
 int memset (void*,int ,size_t) ;
 void* page_address (struct page*) ;

void *iommu_alloc_coherent(struct device *dev, struct iommu_table *tbl,
      size_t size, dma_addr_t *dma_handle,
      unsigned long mask, gfp_t flag, int node)
{
 void *ret = ((void*)0);
 dma_addr_t mapping;
 unsigned int order;
 unsigned int nio_pages, io_order;
 struct page *page;

 size = PAGE_ALIGN(size);
 order = get_order(size);






 if (order >= IOMAP_MAX_ORDER) {
  dev_info(dev, "iommu_alloc_consistent size too large: 0x%lx\n",
    size);
  return ((void*)0);
 }

 if (!tbl)
  return ((void*)0);


 page = alloc_pages_node(node, flag, order);
 if (!page)
  return ((void*)0);
 ret = page_address(page);
 memset(ret, 0, size);


 nio_pages = size >> tbl->it_page_shift;
 io_order = get_iommu_order(size, tbl);
 mapping = iommu_alloc(dev, tbl, ret, nio_pages, DMA_BIDIRECTIONAL,
         mask >> tbl->it_page_shift, io_order, 0);
 if (mapping == DMA_MAPPING_ERROR) {
  free_pages((unsigned long)ret, order);
  return ((void*)0);
 }
 *dma_handle = mapping;
 return ret;
}
