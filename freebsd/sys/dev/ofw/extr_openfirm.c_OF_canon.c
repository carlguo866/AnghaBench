
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int OFW_CANON (int ,char const*,char*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_canon(const char *device, char *buf, size_t len)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_CANON(ofw_obj, device, buf, len));
}
