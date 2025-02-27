
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int kobj; TYPE_4__* class; TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_3__* p; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_7__ {TYPE_2__ subsys; } ;
struct TYPE_5__ {int kobj; } ;


 TYPE_4__ block_class ;
 char* dev_name (struct device*) ;
 struct device_node* dev_of_node (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 scalar_t__ device_is_not_partition (struct device*) ;
 int * of_node_kobj (struct device_node*) ;
 int sysfs_create_link (int *,int *,char*) ;
 scalar_t__ sysfs_deprecated ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int device_add_class_symlinks(struct device *dev)
{
 struct device_node *of_node = dev_of_node(dev);
 int error;

 if (of_node) {
  error = sysfs_create_link(&dev->kobj, of_node_kobj(of_node), "of_node");
  if (error)
   dev_warn(dev, "Error %d creating of_node link\n",error);

 }

 if (!dev->class)
  return 0;

 error = sysfs_create_link(&dev->kobj,
      &dev->class->p->subsys.kobj,
      "subsystem");
 if (error)
  goto out_devnode;

 if (dev->parent && device_is_not_partition(dev)) {
  error = sysfs_create_link(&dev->kobj, &dev->parent->kobj,
       "device");
  if (error)
   goto out_subsys;
 }
 error = sysfs_create_link(&dev->class->p->subsys.kobj,
      &dev->kobj, dev_name(dev));
 if (error)
  goto out_device;

 return 0;

out_device:
 sysfs_remove_link(&dev->kobj, "device");

out_subsys:
 sysfs_remove_link(&dev->kobj, "subsystem");
out_devnode:
 sysfs_remove_link(&dev->kobj, "of_node");
 return error;
}
