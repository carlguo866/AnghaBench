
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mvs_info {struct mvs_device* devices; } ;
struct mvs_device {scalar_t__ dev_type; size_t device_id; } ;


 size_t MVS_MAX_DEVICES ;
 scalar_t__ SAS_PHY_UNUSED ;
 int mv_printk (char*,size_t) ;

__attribute__((used)) static struct mvs_device *mvs_alloc_dev(struct mvs_info *mvi)
{
 u32 dev;
 for (dev = 0; dev < MVS_MAX_DEVICES; dev++) {
  if (mvi->devices[dev].dev_type == SAS_PHY_UNUSED) {
   mvi->devices[dev].device_id = dev;
   return &mvi->devices[dev];
  }
 }

 if (dev == MVS_MAX_DEVICES)
  mv_printk("max support %d devices, ignore ..\n",
   MVS_MAX_DEVICES);

 return ((void*)0);
}
