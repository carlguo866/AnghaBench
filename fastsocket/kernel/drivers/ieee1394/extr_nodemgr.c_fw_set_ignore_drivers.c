
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 int ignore_drivers ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t fw_set_ignore_drivers(struct bus_type *bus, const char *buf, size_t count)
{
 int state = simple_strtoul(buf, ((void*)0), 10);

 if (state == 1)
  ignore_drivers = 1;
 else if (state == 0)
  ignore_drivers = 0;

 return count;
}
