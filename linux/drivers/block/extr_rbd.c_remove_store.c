
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int do_rbd_remove (struct bus_type*,char const*,size_t) ;
 scalar_t__ single_major ;

__attribute__((used)) static ssize_t remove_store(struct bus_type *bus, const char *buf, size_t count)
{
 if (single_major)
  return -EINVAL;

 return do_rbd_remove(bus, buf, count);
}
