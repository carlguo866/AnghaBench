
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_unregister (struct device*) ;

__attribute__((used)) static int fsi_slave_remove_device(struct device *dev, void *arg)
{
 device_unregister(dev);
 return 0;
}
