
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int hotkey_status_get (int*) ;
 int printk_deprecated_attribute (char*,char*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t hotkey_enable_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int res, status;

 printk_deprecated_attribute("hotkey_enable",
   "Hotkey reporting is always enabled");

 res = hotkey_status_get(&status);
 if (res)
  return res;

 return snprintf(buf, PAGE_SIZE, "%d\n", status);
}
