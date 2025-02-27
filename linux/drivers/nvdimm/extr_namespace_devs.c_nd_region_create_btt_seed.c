
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dev; int btt_seed; } ;


 int WARN_ON (int) ;
 int dev_err (int *,char*) ;
 int is_nvdimm_bus_locked (int *) ;
 int nd_btt_create (struct nd_region*) ;

void nd_region_create_btt_seed(struct nd_region *nd_region)
{
 WARN_ON(!is_nvdimm_bus_locked(&nd_region->dev));
 nd_region->btt_seed = nd_btt_create(nd_region);




 if (!nd_region->btt_seed)
  dev_err(&nd_region->dev, "failed to create btt namespace\n");
}
