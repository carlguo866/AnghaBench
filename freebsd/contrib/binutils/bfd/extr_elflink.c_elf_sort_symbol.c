
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; TYPE_1__* section; } ;
struct TYPE_7__ {TYPE_2__ def; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; } ;
typedef scalar_t__ bfd_signed_vma ;
struct TYPE_5__ {long id; } ;



__attribute__((used)) static int
elf_sort_symbol (const void *arg1, const void *arg2)
{
  const struct elf_link_hash_entry *h1;
  const struct elf_link_hash_entry *h2;
  bfd_signed_vma vdiff;

  h1 = *(const struct elf_link_hash_entry **) arg1;
  h2 = *(const struct elf_link_hash_entry **) arg2;
  vdiff = h1->root.u.def.value - h2->root.u.def.value;
  if (vdiff != 0)
    return vdiff > 0 ? 1 : -1;
  else
    {
      long sdiff = h1->root.u.def.section->id - h2->root.u.def.section->id;
      if (sdiff != 0)
 return sdiff > 0 ? 1 : -1;
    }
  return 0;
}
