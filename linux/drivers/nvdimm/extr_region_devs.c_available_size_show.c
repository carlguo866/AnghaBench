
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 unsigned long long nd_region_available_dpa (struct nd_region*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct nd_region* to_nd_region (struct device*) ;
 int wait_nvdimm_bus_probe_idle (struct device*) ;

__attribute__((used)) static ssize_t available_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 unsigned long long available = 0;







 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 wait_nvdimm_bus_probe_idle(dev);
 available = nd_region_available_dpa(nd_region);
 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 return sprintf(buf, "%llu\n", available);
}
