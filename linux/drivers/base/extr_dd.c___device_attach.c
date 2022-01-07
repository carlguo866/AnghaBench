
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attach_data {int check_async; int want_async; scalar_t__ have_async; struct device* dev; } ;
struct device {scalar_t__ parent; int bus; int * driver; } ;


 int __device_attach_async_helper ;
 int __device_attach_driver ;
 int async_schedule_dev (int ,struct device*) ;
 int bus_for_each_drv (int ,int *,struct device_attach_data*,int ) ;
 int dev_dbg (struct device*,char*) ;
 int device_bind_driver (struct device*) ;
 scalar_t__ device_is_bound (struct device*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int get_device (struct device*) ;
 int pm_request_idle (struct device*) ;
 int pm_runtime_get_sync (scalar_t__) ;
 int pm_runtime_put (scalar_t__) ;

__attribute__((used)) static int __device_attach(struct device *dev, bool allow_async)
{
 int ret = 0;

 device_lock(dev);
 if (dev->driver) {
  if (device_is_bound(dev)) {
   ret = 1;
   goto out_unlock;
  }
  ret = device_bind_driver(dev);
  if (ret == 0)
   ret = 1;
  else {
   dev->driver = ((void*)0);
   ret = 0;
  }
 } else {
  struct device_attach_data data = {
   .dev = dev,
   .check_async = allow_async,
   .want_async = 0,
  };

  if (dev->parent)
   pm_runtime_get_sync(dev->parent);

  ret = bus_for_each_drv(dev->bus, ((void*)0), &data,
     __device_attach_driver);
  if (!ret && allow_async && data.have_async) {







   dev_dbg(dev, "scheduling asynchronous probe\n");
   get_device(dev);
   async_schedule_dev(__device_attach_async_helper, dev);
  } else {
   pm_request_idle(dev);
  }

  if (dev->parent)
   pm_runtime_put(dev->parent);
 }
out_unlock:
 device_unlock(dev);
 return ret;
}
