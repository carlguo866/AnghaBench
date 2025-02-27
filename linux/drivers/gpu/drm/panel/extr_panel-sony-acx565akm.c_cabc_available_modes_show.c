
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acx565akm_panel {int has_cabc; } ;
typedef size_t ssize_t ;


 unsigned int ARRAY_SIZE (char**) ;
 char** acx565akm_cabc_modes ;
 struct acx565akm_panel* dev_get_drvdata (struct device*) ;
 size_t sprintf (char*,char*,char*,...) ;

__attribute__((used)) static ssize_t cabc_available_modes_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(dev);
 unsigned int i;
 size_t len = 0;

 if (!lcd->has_cabc)
  return sprintf(buf, "%s\n", acx565akm_cabc_modes[0]);

 for (i = 0; i < ARRAY_SIZE(acx565akm_cabc_modes); i++)
  len += sprintf(&buf[len], "%s%s", i ? " " : "",
          acx565akm_cabc_modes[i]);

 buf[len++] = '\n';

 return len;
}
