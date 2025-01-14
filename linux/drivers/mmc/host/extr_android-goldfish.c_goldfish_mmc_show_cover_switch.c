
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_mmc_host {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct goldfish_mmc_host* dev_get_drvdata (struct device*) ;
 scalar_t__ goldfish_mmc_cover_is_open (struct goldfish_mmc_host*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
goldfish_mmc_show_cover_switch(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct goldfish_mmc_host *host = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", goldfish_mmc_cover_is_open(host) ? "open" :
         "closed");
}
