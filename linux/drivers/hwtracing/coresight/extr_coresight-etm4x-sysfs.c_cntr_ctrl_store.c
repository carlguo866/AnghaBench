
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t cntr_idx; unsigned long* cntr_ctrl; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t cntr_ctrl_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 u8 idx;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->cntr_idx;
 config->cntr_ctrl[idx] = val;
 spin_unlock(&drvdata->spinlock);
 return size;
}
