
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct arm_smmu_domain {struct io_pgtable_ops* pgtbl_ops; } ;


 size_t stub1 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
        size_t size, struct iommu_iotlb_gather *gather)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 struct io_pgtable_ops *ops = smmu_domain->pgtbl_ops;

 if (!ops)
  return 0;

 return ops->unmap(ops, iova, size, gather);
}
