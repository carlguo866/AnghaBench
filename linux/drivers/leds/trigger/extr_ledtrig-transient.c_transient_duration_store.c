
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {unsigned long duration; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t kstrtoul (char const*,int,unsigned long*) ;
 struct transient_trig_data* led_trigger_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t transient_duration_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct transient_trig_data *transient_data =
  led_trigger_get_drvdata(dev);
 unsigned long state;
 ssize_t ret;

 ret = kstrtoul(buf, 10, &state);
 if (ret)
  return ret;

 transient_data->duration = state;
 return size;
}
