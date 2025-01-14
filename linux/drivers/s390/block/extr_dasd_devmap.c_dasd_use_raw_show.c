
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; } ;
typedef int ssize_t ;


 int DASD_FEATURE_DEFAULT ;
 int DASD_FEATURE_USERAW ;
 int IS_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t
dasd_use_raw_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct dasd_devmap *devmap;
 int use_raw;

 devmap = dasd_find_busid(dev_name(dev));
 if (!IS_ERR(devmap))
  use_raw = (devmap->features & DASD_FEATURE_USERAW) != 0;
 else
  use_raw = (DASD_FEATURE_DEFAULT & DASD_FEATURE_USERAW) != 0;
 return sprintf(buf, use_raw ? "1\n" : "0\n");
}
