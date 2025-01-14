
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; struct device* dev; } ;
struct omap_iommu_device {struct omap_iommu* iommu_dev; } ;
struct omap_iommu {int dummy; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,unsigned long,size_t) ;
 size_t iopgtable_clear_entry (struct omap_iommu*,unsigned long) ;
 struct omap_iommu_domain* to_omap_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t omap_iommu_unmap(struct iommu_domain *domain, unsigned long da,
          size_t size, struct iommu_iotlb_gather *gather)
{
 struct omap_iommu_domain *omap_domain = to_omap_domain(domain);
 struct device *dev = omap_domain->dev;
 struct omap_iommu_device *iommu;
 struct omap_iommu *oiommu;
 bool error = 0;
 size_t bytes = 0;
 int i;

 dev_dbg(dev, "unmapping da 0x%lx size %u\n", da, size);

 iommu = omap_domain->iommus;
 for (i = 0; i < omap_domain->num_iommus; i++, iommu++) {
  oiommu = iommu->iommu_dev;
  bytes = iopgtable_clear_entry(oiommu, da);
  if (!bytes)
   error = 1;
 }







 return error ? 0 : bytes;
}
