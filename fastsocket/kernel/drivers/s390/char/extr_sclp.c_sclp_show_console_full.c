
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sclp_console_full ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t sclp_show_console_full(struct device_driver *dev, char *buf)
{
 return sprintf(buf, "%lu\n", sclp_console_full);
}
