
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_read () ;
 int do_write () ;
 int simple_rand () ;

__attribute__((used)) static int do_operation(void)
{
 if (simple_rand() & 1)
  return do_read();
 else
  return do_write();
}
