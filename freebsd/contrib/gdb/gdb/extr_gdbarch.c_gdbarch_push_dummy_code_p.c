
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * push_dummy_code; } ;


 int gdb_assert (int ) ;

int
gdbarch_push_dummy_code_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->push_dummy_code != ((void*)0);
}
