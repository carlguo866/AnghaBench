
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ep93xx_rtc_get_swcomp (struct device*,int *,unsigned short*) ;
 int sprintf (char*,char*,unsigned short) ;

__attribute__((used)) static ssize_t ep93xx_rtc_show_comp_delete(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 unsigned short delete;

 ep93xx_rtc_get_swcomp(dev, ((void*)0), &delete);

 return sprintf(buf, "%d\n", delete);
}
