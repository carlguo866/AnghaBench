
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* e_ident; scalar_t__ e_machine; scalar_t__ e_version; } ;
typedef TYPE_1__ Elf_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_VERSION ;
 scalar_t__ ELF_TARG_CLASS ;
 scalar_t__ ELF_TARG_DATA ;
 scalar_t__ ELF_TARG_MACH ;
 scalar_t__ ELF_TARG_VER ;
 scalar_t__ IS_ELF (TYPE_1__) ;

int
__elf_is_okay__(Elf_Ehdr *ehdr)
{
 int retval = 0;






 if (IS_ELF(*ehdr) &&
     ehdr->e_ident[EI_CLASS] == ELF_TARG_CLASS &&
     ehdr->e_ident[EI_DATA] == ELF_TARG_DATA &&
     ehdr->e_ident[EI_VERSION] == ELF_TARG_VER) {


  if (ehdr->e_machine == ELF_TARG_MACH &&
      ehdr->e_version == ELF_TARG_VER)
   retval = 1;
 }
 return retval;
}
