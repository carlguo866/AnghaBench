
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__ st_shndx; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 scalar_t__ SHN_COMMON ;

bfd_boolean
_bfd_elf_common_definition (Elf_Internal_Sym *sym)
{
  return sym->st_shndx == SHN_COMMON;
}
