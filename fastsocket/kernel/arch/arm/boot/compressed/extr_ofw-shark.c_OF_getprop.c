
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* ofw_handle_t ) (unsigned int*) ;



int
OF_getprop(ofw_handle_t openfirmware, int handle, char *prop, void *buf, unsigned int buflen)
{
 unsigned int args[8];
 char service[8];

 service[0]='g';
 service[1]='e';
 service[2]='t';
 service[3]='p';
 service[4]='r';
 service[5]='o';
 service[6]='p';
 service[7]='\0';

 args[0] = (unsigned int)service;
 args[1] = 4;
 args[2] = 1;
 args[3] = (unsigned int)handle;
 args[4] = (unsigned int)prop;
 args[5] = (unsigned int)buf;
 args[6] = buflen;

 if (openfirmware(args) == -1)
  return -1;
 return args[7];
}
