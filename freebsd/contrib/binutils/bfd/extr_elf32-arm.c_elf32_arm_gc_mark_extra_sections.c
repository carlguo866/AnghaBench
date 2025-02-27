
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct bfd_link_info {TYPE_2__* input_bfds; } ;
typedef int elf_gc_mark_hook_fn ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_12__ {TYPE_3__* sections; struct TYPE_12__* link_next; } ;
typedef TYPE_2__ bfd ;
struct TYPE_13__ {int gc_mark; struct TYPE_13__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_14__ {scalar_t__ sh_type; size_t sh_link; TYPE_1__* bfd_section; } ;
struct TYPE_15__ {TYPE_4__ this_hdr; } ;
struct TYPE_11__ {scalar_t__ gc_mark; } ;
typedef TYPE_4__ Elf_Internal_Shdr ;


 scalar_t__ FALSE ;
 scalar_t__ SHT_ARM_EXIDX ;
 scalar_t__ TRUE ;
 int _bfd_elf_gc_mark (struct bfd_link_info*,TYPE_3__*,int ) ;
 scalar_t__ bfd_get_flavour (TYPE_2__*) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__** elf_elfsections (TYPE_2__*) ;
 TYPE_5__* elf_section_data (TYPE_3__*) ;

__attribute__((used)) static bfd_boolean
elf32_arm_gc_mark_extra_sections(struct bfd_link_info *info,
     elf_gc_mark_hook_fn gc_mark_hook)
{
  bfd *sub;
  Elf_Internal_Shdr **elf_shdrp;
  bfd_boolean again;



  again = TRUE;
  while (again)
    {
      again = FALSE;
      for (sub = info->input_bfds; sub != ((void*)0); sub = sub->link_next)
 {
   asection *o;

   if (bfd_get_flavour (sub) != bfd_target_elf_flavour)
     continue;

   elf_shdrp = elf_elfsections (sub);
   for (o = sub->sections; o != ((void*)0); o = o->next)
     {
       Elf_Internal_Shdr *hdr;
       hdr = &elf_section_data (o)->this_hdr;
       if (hdr->sh_type == SHT_ARM_EXIDX && hdr->sh_link
    && !o->gc_mark
    && elf_shdrp[hdr->sh_link]->bfd_section->gc_mark)
  {
    again = TRUE;
    if (!_bfd_elf_gc_mark (info, o, gc_mark_hook))
      return FALSE;
  }
     }
 }
    }

  return TRUE;
}
