
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_signal_unit {struct counter_signal* signal; } ;
struct counter_signal_read_value {char* buf; int len; } ;
struct counter_signal {int dummy; } ;
struct counter_device_attr {struct counter_signal_unit* component; } ;
struct counter_device {TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* signal_read ) (struct counter_device* const,struct counter_signal* const,struct counter_signal_read_value*) ;} ;


 struct counter_device* dev_get_drvdata (struct device*) ;
 int stub1 (struct counter_device* const,struct counter_signal* const,struct counter_signal_read_value*) ;
 struct counter_device_attr* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_signal_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct counter_device *const counter = dev_get_drvdata(dev);
 const struct counter_device_attr *const devattr = to_counter_attr(attr);
 const struct counter_signal_unit *const component = devattr->component;
 struct counter_signal *const signal = component->signal;
 int err;
 struct counter_signal_read_value val = { .buf = buf };

 err = counter->ops->signal_read(counter, signal, &val);
 if (err)
  return err;

 return val.len;
}
