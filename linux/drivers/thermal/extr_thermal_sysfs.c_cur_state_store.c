
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {int lock; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_cur_state ) (struct thermal_cooling_device*,unsigned long) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*) ;
 int stub1 (struct thermal_cooling_device*,unsigned long) ;
 int thermal_cooling_device_stats_update (struct thermal_cooling_device*,unsigned long) ;
 struct thermal_cooling_device* to_cooling_device (struct device*) ;

__attribute__((used)) static ssize_t
cur_state_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct thermal_cooling_device *cdev = to_cooling_device(dev);
 unsigned long state;
 int result;

 if (sscanf(buf, "%ld\n", &state) != 1)
  return -EINVAL;

 if ((long)state < 0)
  return -EINVAL;

 mutex_lock(&cdev->lock);

 result = cdev->ops->set_cur_state(cdev, state);
 if (!result)
  thermal_cooling_device_stats_update(cdev, state);

 mutex_unlock(&cdev->lock);
 return result ? result : count;
}
