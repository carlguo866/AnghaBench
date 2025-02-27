
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_sysfs_dev {int dummy; } ;
struct ibv_driver {struct ibv_driver* next; } ;
struct ibv_device {int dummy; } ;


 struct ibv_driver* head_driver ;
 struct ibv_device* try_driver (struct ibv_driver*,struct ibv_sysfs_dev*) ;

__attribute__((used)) static struct ibv_device *try_drivers(struct ibv_sysfs_dev *sysfs_dev)
{
 struct ibv_driver *driver;
 struct ibv_device *dev;

 for (driver = head_driver; driver; driver = driver->next) {
  dev = try_driver(driver, sysfs_dev);
  if (dev)
   return dev;
 }

 return ((void*)0);
}
