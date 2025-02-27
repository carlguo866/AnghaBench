
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct counter_signal_ext_unit {int signal; struct counter_signal_ext* ext; } ;
struct counter_signal_ext {int priv; int (* read ) (int ,int ,int ,char*) ;} ;
struct counter_device_attr {struct counter_signal_ext_unit* component; } ;
typedef int ssize_t ;


 int dev_get_drvdata (struct device*) ;
 int stub1 (int ,int ,int ,char*) ;
 struct counter_device_attr* to_counter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t counter_signal_ext_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 const struct counter_device_attr *const devattr = to_counter_attr(attr);
 const struct counter_signal_ext_unit *const comp = devattr->component;
 const struct counter_signal_ext *const ext = comp->ext;

 return ext->read(dev_get_drvdata(dev), comp->signal, ext->priv, buf);
}
