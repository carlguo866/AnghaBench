
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_iommu_context {TYPE_2__* global; } ;
typedef unsigned long phys_addr_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* map ) (struct etnaviv_iommu_context*,unsigned long,unsigned long,size_t,int) ;} ;


 int EINVAL ;
 int IS_ALIGNED (unsigned long,size_t) ;
 size_t SZ_4K ;
 int etnaviv_context_unmap (struct etnaviv_iommu_context*,unsigned long,size_t) ;
 int pr_err (char*,unsigned long,unsigned long*,size_t,size_t) ;
 int stub1 (struct etnaviv_iommu_context*,unsigned long,unsigned long,size_t,int) ;

__attribute__((used)) static int etnaviv_context_map(struct etnaviv_iommu_context *context,
         unsigned long iova, phys_addr_t paddr,
         size_t size, int prot)
{
 unsigned long orig_iova = iova;
 size_t pgsize = SZ_4K;
 size_t orig_size = size;
 int ret = 0;

 if (!IS_ALIGNED(iova | paddr | size, pgsize)) {
  pr_err("unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%zx\n",
         iova, &paddr, size, pgsize);
  return -EINVAL;
 }

 while (size) {
  ret = context->global->ops->map(context, iova, paddr, pgsize,
      prot);
  if (ret)
   break;

  iova += pgsize;
  paddr += pgsize;
  size -= pgsize;
 }


 if (ret)
  etnaviv_context_unmap(context, orig_iova, orig_size - size);

 return ret;
}
