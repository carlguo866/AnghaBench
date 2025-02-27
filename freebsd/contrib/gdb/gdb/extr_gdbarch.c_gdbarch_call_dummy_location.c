
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int call_dummy_location; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

int
gdbarch_call_dummy_location (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));

  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_call_dummy_location called\n");
  return gdbarch->call_dummy_location;
}
