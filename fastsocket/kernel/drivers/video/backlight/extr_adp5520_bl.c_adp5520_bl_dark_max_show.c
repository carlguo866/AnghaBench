
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DARK_MAX ;
 int adp5520_show (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t adp5520_bl_dark_max_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 return adp5520_show(dev, buf, DARK_MAX);
}
