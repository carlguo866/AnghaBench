
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_4__ {struct type** type; } ;
struct TYPE_3__ {struct type** type; } ;


 int SPARC64_NUM_PSEUDO_REGS ;
 int SPARC64_NUM_REGS ;
 int gdb_assert (int) ;
 TYPE_2__* sparc64_pseudo_register_info ;
 TYPE_1__* sparc64_register_info ;

__attribute__((used)) static struct type *
sparc64_register_type (struct gdbarch *gdbarch, int regnum)
{
  if (regnum >= SPARC64_NUM_REGS
      && regnum < SPARC64_NUM_REGS + SPARC64_NUM_PSEUDO_REGS)
    return *sparc64_pseudo_register_info[regnum - SPARC64_NUM_REGS].type;

  gdb_assert (regnum >= 0 && regnum < SPARC64_NUM_REGS);
  return *sparc64_register_info[regnum].type;
}
