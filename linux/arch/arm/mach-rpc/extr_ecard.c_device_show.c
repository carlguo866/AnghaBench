
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product; } ;
struct expansion_card {TYPE_1__ cid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t device_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 return sprintf(buf, "%u\n", ec->cid.product);
}
