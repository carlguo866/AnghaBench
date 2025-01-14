
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct w1_slave {TYPE_2__* family; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {int (* eeprom ) (struct device*) ;int (* precision ) (struct device*,int) ;TYPE_1__* f; } ;
struct TYPE_6__ {scalar_t__ fid; } ;
struct TYPE_5__ {scalar_t__ fid; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*,int) ;
 TYPE_3__* w1_therm_families ;

__attribute__((used)) static ssize_t w1_slave_store(struct device *device,
         struct device_attribute *attr, const char *buf,
         size_t size)
{
 int val, ret;
 struct w1_slave *sl = dev_to_w1_slave(device);
 int i;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(w1_therm_families); ++i) {
  if (w1_therm_families[i].f->fid == sl->family->fid) {

   if (val == 0)
    ret = w1_therm_families[i].eeprom(device);
   else
    ret = w1_therm_families[i].precision(device, val);
   break;
  }
 }
 return ret ? : size;
}
