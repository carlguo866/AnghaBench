
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_file_t ;
typedef int elf_lookup_fn ;
typedef int Elf_Addr ;


 int elf_reloc_internal (int ,int ,void const*,int,int ,int ) ;

int
elf_reloc(linker_file_t lf, Elf_Addr relocbase, const void *data, int type,
    elf_lookup_fn lookup)
{

 return (elf_reloc_internal(lf, relocbase, data, type, 0, lookup));
}
