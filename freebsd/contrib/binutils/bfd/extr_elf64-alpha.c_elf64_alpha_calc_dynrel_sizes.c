
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct bfd_link_info {int flags; int shared; } ;
struct alpha_elf_reloc_entry {unsigned long count; scalar_t__ reltext; TYPE_7__* srel; int rtype; struct alpha_elf_reloc_entry* next; } ;
struct TYPE_12__ {TYPE_3__* section; } ;
struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_13__ {TYPE_4__ def; TYPE_1__ i; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_5__ u; } ;
struct TYPE_16__ {int def_regular; TYPE_6__ root; int def_dynamic; scalar_t__ ref_regular; } ;
struct alpha_elf_link_hash_entry {struct alpha_elf_reloc_entry* reloc_entries; TYPE_8__ root; } ;
typedef int bfd_boolean ;
struct TYPE_15__ {unsigned long size; } ;
struct TYPE_11__ {TYPE_2__* owner; } ;
struct TYPE_10__ {int flags; } ;
typedef int Elf64_External_Rela ;


 int DT_TEXTREL ;
 int DYNAMIC ;
 int TRUE ;
 unsigned long alpha_dynamic_entries_for_reloc (int ,int ,int ) ;
 int alpha_elf_dynamic_symbol_p (TYPE_8__*,struct bfd_link_info*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;

__attribute__((used)) static bfd_boolean
elf64_alpha_calc_dynrel_sizes (struct alpha_elf_link_hash_entry *h,
          struct bfd_link_info *info)
{
  bfd_boolean dynamic;
  struct alpha_elf_reloc_entry *relent;
  unsigned long entries;

  if (h->root.root.type == bfd_link_hash_warning)
    h = (struct alpha_elf_link_hash_entry *) h->root.root.u.i.link;
  if (!h->root.def_regular
      && h->root.ref_regular
      && !h->root.def_dynamic
      && (h->root.root.type == bfd_link_hash_defined
   || h->root.root.type == bfd_link_hash_defweak)
      && !(h->root.root.u.def.section->owner->flags & DYNAMIC))
    h->root.def_regular = 1;




  dynamic = alpha_elf_dynamic_symbol_p (&h->root, info);




  if (h->root.root.type == bfd_link_hash_undefweak && !dynamic)
    return TRUE;

  for (relent = h->reloc_entries; relent; relent = relent->next)
    {
      entries = alpha_dynamic_entries_for_reloc (relent->rtype, dynamic,
       info->shared);
      if (entries)
 {
   relent->srel->size +=
     entries * sizeof (Elf64_External_Rela) * relent->count;
   if (relent->reltext)
     info->flags |= DT_TEXTREL;
 }
    }

  return TRUE;
}
