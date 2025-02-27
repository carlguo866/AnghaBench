
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct section {int dummy; } ;
struct TYPE_6__ {int r_offset; int r_info; } ;
struct TYPE_5__ {scalar_t__ st_shndx; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Rel ;


 unsigned int ELF32_R_TYPE (int ) ;





 scalar_t__ SHN_ABS ;
 int S_ABS ;
 int S_REL ;
 int add_reloc (int *,int ) ;
 int die (char*,int ,...) ;
 scalar_t__ is_reloc (int ,char const*) ;
 int rel_type (unsigned int) ;
 int relocs32 ;

__attribute__((used)) static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
        const char *symname)
{
 unsigned r_type = ELF32_R_TYPE(rel->r_info);
 int shn_abs = (sym->st_shndx == SHN_ABS) && !is_reloc(S_REL, symname);

 switch (r_type) {
 case 131:
 case 129:
 case 130:
 case 128:




  break;

 case 132:
  if (shn_abs) {




   if (is_reloc(S_ABS, symname))
    break;

   die("Invalid absolute %s relocation: %s\n",
       rel_type(r_type), symname);
   break;
  }

  add_reloc(&relocs32, rel->r_offset);
  break;

 default:
  die("Unsupported relocation type: %s (%d)\n",
      rel_type(r_type), r_type);
  break;
 }

 return 0;
}
