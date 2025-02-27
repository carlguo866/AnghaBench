
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {TYPE_3__* link; } ;
typedef int ssize_t ;
struct TYPE_5__ {int devid; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;


 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t devid_show(struct device *device,
     struct device_attribute *attr, char *buf)
{
 int num = attr->attr.name[5] - 0x30;
 struct ddb *dev = dev_get_drvdata(device);

 return sprintf(buf, "%08x\n", dev->link[num].ids.devid);
}
