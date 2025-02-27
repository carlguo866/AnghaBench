
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_device {int bus; TYPE_1__* desc; } ;
struct TYPE_2__ {int ibi_lock; } ;


 int i3c_bus_normaluse_lock (int ) ;
 int i3c_bus_normaluse_unlock (int ) ;
 int i3c_dev_free_ibi_locked (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i3c_device_free_ibi(struct i3c_device *dev)
{
 i3c_bus_normaluse_lock(dev->bus);
 if (dev->desc) {
  mutex_lock(&dev->desc->ibi_lock);
  i3c_dev_free_ibi_locked(dev->desc);
  mutex_unlock(&dev->desc->ibi_lock);
 }
 i3c_bus_normaluse_unlock(dev->bus);
}
