
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_erp_adapter_reset_sync (struct zfcp_adapter*,char*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_adapter_failed_store(struct device *dev,
            struct device_attribute *attr,
            const char *buf, size_t count)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);
 unsigned long val;
 int retval = 0;

 if (!adapter)
  return -ENODEV;

 if (kstrtoul(buf, 0, &val) || val != 0) {
  retval = -EINVAL;
  goto out;
 }

 zfcp_erp_adapter_reset_sync(adapter, "syafai2");
out:
 zfcp_ccw_adapter_put(adapter);
 return retval ? retval : (ssize_t) count;
}
