
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ro; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int strtobool (char const*,int*) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t read_only_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 bool ro;
 int rc = strtobool(buf, &ro);
 struct nd_region *nd_region = to_nd_region(dev);

 if (rc)
  return rc;

 nd_region->ro = ro;
 return len;
}
