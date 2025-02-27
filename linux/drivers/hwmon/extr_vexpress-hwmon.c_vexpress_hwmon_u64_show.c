
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vexpress_hwmon_data {int reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int PAGE_SIZE ;
 struct vexpress_hwmon_data* dev_get_drvdata (struct device*) ;
 int div_u64 (int,int ) ;
 int regmap_read (int ,int,int*) ;
 int snprintf (char*,int ,char*,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t vexpress_hwmon_u64_show(struct device *dev,
  struct device_attribute *dev_attr, char *buffer)
{
 struct vexpress_hwmon_data *data = dev_get_drvdata(dev);
 int err;
 u32 value_hi, value_lo;

 err = regmap_read(data->reg, 0, &value_lo);
 if (err)
  return err;

 err = regmap_read(data->reg, 1, &value_hi);
 if (err)
  return err;

 return snprintf(buffer, PAGE_SIZE, "%llu\n",
   div_u64(((u64)value_hi << 32) | value_lo,
   to_sensor_dev_attr(dev_attr)->index));
}
