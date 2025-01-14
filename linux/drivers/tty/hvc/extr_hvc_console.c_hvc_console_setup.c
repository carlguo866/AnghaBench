
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {size_t index; } ;


 int ENODEV ;
 size_t MAX_NR_HVC_CONSOLES ;
 int* vtermnos ;

__attribute__((used)) static int hvc_console_setup(struct console *co, char *options)
{
 if (co->index < 0 || co->index >= MAX_NR_HVC_CONSOLES)
  return -ENODEV;

 if (vtermnos[co->index] == -1)
  return -ENODEV;

 return 0;
}
