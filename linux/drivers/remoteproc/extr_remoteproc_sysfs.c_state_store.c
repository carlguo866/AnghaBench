
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ state; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ RPROC_RUNNING ;
 int dev_err (int *,char*,...) ;
 int rproc_boot (struct rproc*) ;
 int rproc_shutdown (struct rproc*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 struct rproc* to_rproc (struct device*) ;

__attribute__((used)) static ssize_t state_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct rproc *rproc = to_rproc(dev);
 int ret = 0;

 if (sysfs_streq(buf, "start")) {
  if (rproc->state == RPROC_RUNNING)
   return -EBUSY;

  ret = rproc_boot(rproc);
  if (ret)
   dev_err(&rproc->dev, "Boot failed: %d\n", ret);
 } else if (sysfs_streq(buf, "stop")) {
  if (rproc->state != RPROC_RUNNING)
   return -EINVAL;

  rproc_shutdown(rproc);
 } else {
  dev_err(&rproc->dev, "Unrecognised option: %s\n", buf);
  ret = -EINVAL;
 }
 return ret ? ret : count;
}
