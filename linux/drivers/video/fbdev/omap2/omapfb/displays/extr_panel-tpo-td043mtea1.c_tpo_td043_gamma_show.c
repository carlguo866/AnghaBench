
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int* gamma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ PAGE_SIZE ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t tpo_td043_gamma_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 ssize_t len = 0;
 int ret;
 int i;

 for (i = 0; i < ARRAY_SIZE(ddata->gamma); i++) {
  ret = snprintf(buf + len, PAGE_SIZE - len, "%u ",
    ddata->gamma[i]);
  if (ret < 0)
   return ret;
  len += ret;
 }
 buf[len - 1] = '\n';

 return len;
}
