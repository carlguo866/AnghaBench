
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ e_phoff; int e_phnum; int e_phentsize; int e_entry; } ;
struct TYPE_3__ {scalar_t__ p_type; int p_paddr; int p_offset; int p_memsz; int p_filesz; } ;
typedef TYPE_1__ Elf32_Phdr ;
typedef TYPE_2__ Elf32_Ehdr ;


 scalar_t__ PT_LOAD ;
 int memcpy (void*,void const*,int ) ;
 int sync_before_exec (void*,int ) ;

__attribute__((used)) static uint32_t load_elf_image (void *elfstart)
{
   int i;
   Elf32_Phdr *phdrs = ((void*)0);
   Elf32_Ehdr *ehdr = (Elf32_Ehdr*) elfstart;

   if(ehdr->e_phoff == 0 || ehdr->e_phnum == 0)
      return 0;

   if(ehdr->e_phentsize != sizeof(Elf32_Phdr))
      return 0;

   phdrs = (Elf32_Phdr*)(elfstart + ehdr->e_phoff);

   for (i = 0; i < ehdr->e_phnum; i++)
   {
      uint8_t *image;

      if(phdrs[i].p_type != PT_LOAD)
         continue;

      phdrs[i].p_paddr &= 0x3FFFFFFF;
      phdrs[i].p_paddr |= 0x80000000;

      if(phdrs[i].p_filesz > phdrs[i].p_memsz)
         return 0;

      if(!phdrs[i].p_filesz)
         continue;

      image = (uint8_t*)(elfstart + phdrs[i].p_offset);
      memcpy ((void *) phdrs[i].p_paddr, (const void *) image, phdrs[i].p_filesz);

      sync_before_exec ((void *) phdrs[i].p_paddr, phdrs[i].p_memsz);
   }

   return ((ehdr->e_entry & 0x3FFFFFFF) | 0x80000000);
}
