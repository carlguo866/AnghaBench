
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int spi_up_head_align ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t up_head_align_show(struct device_driver *driver, char *buf)
{
 return sprintf(buf, "%d\n", spi_up_head_align);
}
