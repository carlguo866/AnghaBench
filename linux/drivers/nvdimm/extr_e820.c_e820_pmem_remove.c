
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nvdimm_bus {int dummy; } ;


 int nvdimm_bus_unregister (struct nvdimm_bus*) ;
 struct nvdimm_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int e820_pmem_remove(struct platform_device *pdev)
{
 struct nvdimm_bus *nvdimm_bus = platform_get_drvdata(pdev);

 nvdimm_bus_unregister(nvdimm_bus);
 return 0;
}
