
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 int sdebug_dif ;

__attribute__((used)) static ssize_t dif_show(struct device_driver *ddp, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "%d\n", sdebug_dif);
}
