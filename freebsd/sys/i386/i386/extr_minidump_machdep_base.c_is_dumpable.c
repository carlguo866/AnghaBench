
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__* dump_avail ;

__attribute__((used)) static int
is_dumpable(vm_paddr_t pa)
{
 int i;

 for (i = 0; dump_avail[i] != 0 || dump_avail[i + 1] != 0; i += 2) {
  if (pa >= dump_avail[i] && pa < dump_avail[i + 1])
   return (1);
 }
 return (0);
}
