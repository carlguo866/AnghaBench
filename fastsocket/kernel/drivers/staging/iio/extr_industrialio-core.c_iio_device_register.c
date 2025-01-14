
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int id; } ;


 int INDIO_RING_TRIGGERED ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_del (TYPE_1__*) ;
 int iio_device_register_eventset (struct iio_dev*) ;
 int iio_device_register_id (struct iio_dev*,int *) ;
 int iio_device_register_sysfs (struct iio_dev*) ;
 int iio_device_register_trigger_consumer (struct iio_dev*) ;
 int iio_device_unregister_id (struct iio_dev*) ;
 int iio_device_unregister_sysfs (struct iio_dev*) ;
 int iio_idr ;

int iio_device_register(struct iio_dev *dev_info)
{
 int ret;

 ret = iio_device_register_id(dev_info, &iio_idr);
 if (ret) {
  dev_err(&dev_info->dev, "Failed to get id\n");
  goto error_ret;
 }
 dev_set_name(&dev_info->dev, "device%d", dev_info->id);

 ret = device_add(&dev_info->dev);
 if (ret)
  goto error_free_idr;
 ret = iio_device_register_sysfs(dev_info);
 if (ret) {
  dev_err(dev_info->dev.parent,
   "Failed to register sysfs interfaces\n");
  goto error_del_device;
 }
 ret = iio_device_register_eventset(dev_info);
 if (ret) {
  dev_err(dev_info->dev.parent,
   "Failed to register event set \n");
  goto error_free_sysfs;
 }
 if (dev_info->modes & INDIO_RING_TRIGGERED)
  iio_device_register_trigger_consumer(dev_info);

 return 0;

error_free_sysfs:
 iio_device_unregister_sysfs(dev_info);
error_del_device:
 device_del(&dev_info->dev);
error_free_idr:
 iio_device_unregister_id(dev_info);
error_ret:
 return ret;
}
