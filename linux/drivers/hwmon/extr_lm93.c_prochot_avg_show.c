
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm93_data {TYPE_1__* block4; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int avg; } ;


 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t prochot_avg_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 return sprintf(buf, "%d\n", data->block4[nr].avg);
}
