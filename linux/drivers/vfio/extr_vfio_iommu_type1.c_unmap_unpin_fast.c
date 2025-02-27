
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_regions {size_t iova; size_t len; int list; int phys; } ;
struct vfio_domain {int domain; } ;
struct vfio_dma {int dummy; } ;
struct list_head {int dummy; } ;
struct iommu_iotlb_gather {int dummy; } ;
typedef int phys_addr_t ;
typedef size_t dma_addr_t ;


 int GFP_KERNEL ;
 int VFIO_IOMMU_TLB_SYNC_MAX ;
 size_t iommu_unmap_fast (int ,size_t,size_t,struct iommu_iotlb_gather*) ;
 int kfree (struct vfio_regions*) ;
 struct vfio_regions* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ vfio_sync_unpin (struct vfio_dma*,struct vfio_domain*,struct list_head*,struct iommu_iotlb_gather*) ;

__attribute__((used)) static size_t unmap_unpin_fast(struct vfio_domain *domain,
          struct vfio_dma *dma, dma_addr_t *iova,
          size_t len, phys_addr_t phys, long *unlocked,
          struct list_head *unmapped_list,
          int *unmapped_cnt,
          struct iommu_iotlb_gather *iotlb_gather)
{
 size_t unmapped = 0;
 struct vfio_regions *entry = kzalloc(sizeof(*entry), GFP_KERNEL);

 if (entry) {
  unmapped = iommu_unmap_fast(domain->domain, *iova, len,
         iotlb_gather);

  if (!unmapped) {
   kfree(entry);
  } else {
   entry->iova = *iova;
   entry->phys = phys;
   entry->len = unmapped;
   list_add_tail(&entry->list, unmapped_list);

   *iova += unmapped;
   (*unmapped_cnt)++;
  }
 }





 if (*unmapped_cnt >= VFIO_IOMMU_TLB_SYNC_MAX || !unmapped) {
  *unlocked += vfio_sync_unpin(dma, domain, unmapped_list,
          iotlb_gather);
  *unmapped_cnt = 0;
 }

 return unmapped;
}
