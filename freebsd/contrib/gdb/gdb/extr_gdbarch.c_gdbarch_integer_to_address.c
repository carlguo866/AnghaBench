
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* integer_to_address ) (struct type*,void*) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct type*,void*) ;

CORE_ADDR
gdbarch_integer_to_address (struct gdbarch *gdbarch, struct type *type, void *buf)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->integer_to_address != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_integer_to_address called\n");
  return gdbarch->integer_to_address (type, buf);
}
