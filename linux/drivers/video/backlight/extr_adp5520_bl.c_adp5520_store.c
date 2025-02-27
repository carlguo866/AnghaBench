
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adp5520_bl {int lock; int master; } ;
typedef int ssize_t ;


 int adp5520_write (int ,int,unsigned long) ;
 struct adp5520_bl* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adp5520_store(struct device *dev, const char *buf,
    size_t count, int reg)
{
 struct adp5520_bl *data = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&data->lock);
 adp5520_write(data->master, reg, val);
 mutex_unlock(&data->lock);

 return count;
}
