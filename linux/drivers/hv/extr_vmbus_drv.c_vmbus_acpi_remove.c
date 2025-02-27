
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {struct resource* sibling; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {int start; } ;


 int __release_region (struct resource*,int ,int ) ;
 TYPE_1__* fb_mmio ;
 struct resource* hyperv_mmio ;
 int kfree (struct resource*) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int vmbus_acpi_remove(struct acpi_device *device)
{
 struct resource *cur_res;
 struct resource *next_res;

 if (hyperv_mmio) {
  if (fb_mmio) {
   __release_region(hyperv_mmio, fb_mmio->start,
      resource_size(fb_mmio));
   fb_mmio = ((void*)0);
  }

  for (cur_res = hyperv_mmio; cur_res; cur_res = next_res) {
   next_res = cur_res->sibling;
   kfree(cur_res);
  }
 }

 return 0;
}
