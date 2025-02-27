
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7877 {int dummy; } ;
typedef int ssize_t ;


 int ad7877_disable (struct ad7877*) ;
 int ad7877_enable (struct ad7877*) ;
 struct ad7877* dev_get_drvdata (struct device*) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ad7877_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ad7877 *ts = dev_get_drvdata(dev);
 unsigned long val;
 int error;

 error = strict_strtoul(buf, 10, &val);
 if (error)
  return error;

 if (val)
  ad7877_disable(ts);
 else
  ad7877_enable(ts);

 return count;
}
