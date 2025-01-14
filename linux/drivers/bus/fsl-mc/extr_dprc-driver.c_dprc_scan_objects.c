
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_obj_desc {char* type; int id; int ver_major; scalar_t__ irq_count; int flags; } ;
struct TYPE_2__ {unsigned int irq_count; } ;
struct fsl_mc_device {int dev; int mc_handle; int mc_io; TYPE_1__ obj_desc; } ;
struct fsl_mc_bus {int irq_resources; } ;


 int ENOMEM ;
 unsigned int FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS ;
 int FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,char*,int) ;
 int dev_err (int *,char*,int,...) ;
 scalar_t__ dev_get_msi_domain (int *) ;
 int dev_warn (int *,char*,unsigned int,unsigned int) ;
 int devm_kfree (int *,struct fsl_mc_obj_desc*) ;
 struct fsl_mc_obj_desc* devm_kmalloc_array (int *,int,int,int ) ;
 int dprc_add_new_devices (struct fsl_mc_device*,struct fsl_mc_obj_desc*,int) ;
 int dprc_get_obj (int ,int ,int ,int,struct fsl_mc_obj_desc*) ;
 int dprc_get_obj_count (int ,int ,int ,int*) ;
 int dprc_remove_devices (struct fsl_mc_device*,struct fsl_mc_obj_desc*,int) ;
 int fsl_mc_populate_irq_pool (struct fsl_mc_bus*,unsigned int) ;
 scalar_t__ strcmp (char*,char*) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;

__attribute__((used)) static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
        unsigned int *total_irq_count)
{
 int num_child_objects;
 int dprc_get_obj_failures;
 int error;
 unsigned int irq_count = mc_bus_dev->obj_desc.irq_count;
 struct fsl_mc_obj_desc *child_obj_desc_array = ((void*)0);
 struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);

 error = dprc_get_obj_count(mc_bus_dev->mc_io,
       0,
       mc_bus_dev->mc_handle,
       &num_child_objects);
 if (error < 0) {
  dev_err(&mc_bus_dev->dev, "dprc_get_obj_count() failed: %d\n",
   error);
  return error;
 }

 if (num_child_objects != 0) {
  int i;

  child_obj_desc_array =
      devm_kmalloc_array(&mc_bus_dev->dev, num_child_objects,
           sizeof(*child_obj_desc_array),
           GFP_KERNEL);
  if (!child_obj_desc_array)
   return -ENOMEM;




  dprc_get_obj_failures = 0;
  for (i = 0; i < num_child_objects; i++) {
   struct fsl_mc_obj_desc *obj_desc =
       &child_obj_desc_array[i];

   error = dprc_get_obj(mc_bus_dev->mc_io,
          0,
          mc_bus_dev->mc_handle,
          i, obj_desc);
   if (error < 0) {
    dev_err(&mc_bus_dev->dev,
     "dprc_get_obj(i=%d) failed: %d\n",
     i, error);




    obj_desc->type[0] = '\0';
    obj_desc->id = error;
    dprc_get_obj_failures++;
    continue;
   }





   if ((strcmp(obj_desc->type, "dpseci") == 0) &&
       (obj_desc->ver_major < 4))
    obj_desc->flags |=
     FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY;

   irq_count += obj_desc->irq_count;
   dev_dbg(&mc_bus_dev->dev,
    "Discovered object: type %s, id %d\n",
    obj_desc->type, obj_desc->id);
  }

  if (dprc_get_obj_failures != 0) {
   dev_err(&mc_bus_dev->dev,
    "%d out of %d devices could not be retrieved\n",
    dprc_get_obj_failures, num_child_objects);
  }
 }





 if (dev_get_msi_domain(&mc_bus_dev->dev) && !mc_bus->irq_resources) {
  if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
   dev_warn(&mc_bus_dev->dev,
     "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
     irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
  }

  error = fsl_mc_populate_irq_pool(mc_bus,
    FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
  if (error < 0)
   return error;
 }

 if (total_irq_count)
  *total_irq_count = irq_count;

 dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
       num_child_objects);

 dprc_add_new_devices(mc_bus_dev, child_obj_desc_array,
        num_child_objects);

 if (child_obj_desc_array)
  devm_kfree(&mc_bus_dev->dev, child_obj_desc_array);

 return 0;
}
