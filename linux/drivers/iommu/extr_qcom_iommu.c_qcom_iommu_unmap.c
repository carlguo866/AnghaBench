
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_iommu_domain {TYPE_1__* iommu; int pgtbl_lock; struct io_pgtable_ops* pgtbl_ops; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t stub1 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 struct qcom_iommu_domain* to_qcom_iommu_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t qcom_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
          size_t size, struct iommu_iotlb_gather *gather)
{
 size_t ret;
 unsigned long flags;
 struct qcom_iommu_domain *qcom_domain = to_qcom_iommu_domain(domain);
 struct io_pgtable_ops *ops = qcom_domain->pgtbl_ops;

 if (!ops)
  return 0;






 pm_runtime_get_sync(qcom_domain->iommu->dev);
 spin_lock_irqsave(&qcom_domain->pgtbl_lock, flags);
 ret = ops->unmap(ops, iova, size, gather);
 spin_unlock_irqrestore(&qcom_domain->pgtbl_lock, flags);
 pm_runtime_put_sync(qcom_domain->iommu->dev);

 return ret;
}
