
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int check_device (struct device*) ;
 int get_device_id (struct device*) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_uninit_device (struct device*) ;

__attribute__((used)) static void amd_iommu_remove_device(struct device *dev)
{
 struct amd_iommu *iommu;
 int devid;

 if (!check_device(dev))
  return;

 devid = get_device_id(dev);
 if (devid < 0)
  return;

 iommu = amd_iommu_rlookup_table[devid];

 iommu_uninit_device(dev);
 iommu_completion_wait(iommu);
}
