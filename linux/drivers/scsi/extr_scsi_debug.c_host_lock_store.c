
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int sdebug_host_lock ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t host_lock_store(struct device_driver *ddp, const char *buf,
          size_t count)
{
 int n;

 if ((count > 0) && (1 == sscanf(buf, "%d", &n)) && (n >= 0)) {
  sdebug_host_lock = (n > 0);
  return count;
 }
 return -EINVAL;
}
