
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* aux_detach_dev ) (struct iommu_domain*,struct device*) ;} ;


 int stub1 (struct iommu_domain*,struct device*) ;
 int trace_detach_device_from_domain (struct device*) ;

void iommu_aux_detach_device(struct iommu_domain *domain, struct device *dev)
{
 if (domain->ops->aux_detach_dev) {
  domain->ops->aux_detach_dev(domain, dev);
  trace_detach_device_from_domain(dev);
 }
}
