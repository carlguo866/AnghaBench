
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
struct phdr_closure {TYPE_2__* phdr; int offset; } ;
struct TYPE_5__ {scalar_t__ p_filesz; int p_flags; int p_align; scalar_t__ p_memsz; scalar_t__ p_paddr; scalar_t__ p_vaddr; int p_offset; int p_type; } ;
struct TYPE_4__ {int protection; scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_2__ Elf_Phdr ;


 int PAGE_SIZE ;
 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PT_LOAD ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int round_page (int ) ;

__attribute__((used)) static void
cb_put_phdr(vm_map_entry_t entry, void *closure)
{
 struct phdr_closure *phc = (struct phdr_closure *)closure;
 Elf_Phdr *phdr = phc->phdr;

 phc->offset = round_page(phc->offset);

 phdr->p_type = PT_LOAD;
 phdr->p_offset = phc->offset;
 phdr->p_vaddr = entry->start;
 phdr->p_paddr = 0;
 phdr->p_filesz = phdr->p_memsz = entry->end - entry->start;
 phdr->p_align = PAGE_SIZE;
 phdr->p_flags = 0;
 if (entry->protection & VM_PROT_READ)
  phdr->p_flags |= PF_R;
 if (entry->protection & VM_PROT_WRITE)
  phdr->p_flags |= PF_W;
 if (entry->protection & VM_PROT_EXECUTE)
  phdr->p_flags |= PF_X;

 phc->offset += phdr->p_filesz;
 phc->phdr++;
}
