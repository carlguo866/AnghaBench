
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t radeon_hwmon_show_name(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 return sprintf(buf, "radeon\n");
}
