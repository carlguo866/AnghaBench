
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int device_move_class_links(struct device *dev,
       struct device *old_parent,
       struct device *new_parent)
{
 int error = 0;

 if (old_parent)
  sysfs_remove_link(&dev->kobj, "device");
 if (new_parent)
  error = sysfs_create_link(&dev->kobj, &new_parent->kobj,
       "device");
 return error;
}
