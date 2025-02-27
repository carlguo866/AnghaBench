
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {struct floatformat const* float_format; } ;
struct floatformat {int dummy; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

const struct floatformat *
gdbarch_float_format (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_float_format called\n");
  return gdbarch->float_format;
}
