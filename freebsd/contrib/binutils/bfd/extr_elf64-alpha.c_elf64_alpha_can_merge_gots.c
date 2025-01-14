
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ link; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__ root; } ;
struct alpha_elf_link_hash_entry {struct alpha_elf_got_entry* got_entries; TYPE_4__ root; } ;
struct alpha_elf_got_entry {scalar_t__ use_count; scalar_t__ reloc_type; scalar_t__ addend; int * gotobj; struct alpha_elf_got_entry* next; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int total_got_size; int local_got_size; int * in_got_link_next; } ;
struct TYPE_13__ {int sh_info; } ;
struct TYPE_14__ {TYPE_5__ symtab_hdr; } ;
typedef TYPE_5__ Elf_Internal_Shdr ;


 int FALSE ;
 int MAX_GOT_SIZE ;
 int NUM_SHDR_ENTRIES (TYPE_5__*) ;
 int TRUE ;
 struct alpha_elf_link_hash_entry** alpha_elf_sym_hashes (int *) ;
 TYPE_7__* alpha_elf_tdata (int *) ;
 scalar_t__ alpha_got_entry_size (scalar_t__) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_6__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_can_merge_gots (bfd *a, bfd *b)
{
  int total = alpha_elf_tdata (a)->total_got_size;
  bfd *bsub;


  if (total + alpha_elf_tdata (b)->total_got_size <= MAX_GOT_SIZE)
    return TRUE;


  if ((total += alpha_elf_tdata (b)->local_got_size) > MAX_GOT_SIZE)
    return FALSE;




  for (bsub = b; bsub ; bsub = alpha_elf_tdata (bsub)->in_got_link_next)
    {
      struct alpha_elf_link_hash_entry **hashes = alpha_elf_sym_hashes (bsub);
      Elf_Internal_Shdr *symtab_hdr = &elf_tdata (bsub)->symtab_hdr;
      int i, n;

      n = NUM_SHDR_ENTRIES (symtab_hdr) - symtab_hdr->sh_info;
      for (i = 0; i < n; ++i)
 {
   struct alpha_elf_got_entry *ae, *be;
   struct alpha_elf_link_hash_entry *h;

   h = hashes[i];
   while (h->root.root.type == bfd_link_hash_indirect
          || h->root.root.type == bfd_link_hash_warning)
     h = (struct alpha_elf_link_hash_entry *)h->root.root.u.i.link;

   for (be = h->got_entries; be ; be = be->next)
     {
       if (be->use_count == 0)
         continue;
       if (be->gotobj != b)
         continue;

       for (ae = h->got_entries; ae ; ae = ae->next)
         if (ae->gotobj == a
      && ae->reloc_type == be->reloc_type
      && ae->addend == be->addend)
    goto global_found;

       total += alpha_got_entry_size (be->reloc_type);
       if (total > MAX_GOT_SIZE)
         return FALSE;
     global_found:;
     }
 }
    }

  return TRUE;
}
