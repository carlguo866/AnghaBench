
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int flags; scalar_t__ value; TYPE_3__* section; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_6__ {scalar_t__ vma; } ;


 int BSF_DEBUGGING ;
 int BSF_SECTION_SYM ;
 scalar_t__ bfd_is_com_section (TYPE_3__*) ;
 scalar_t__ bfd_is_und_section (TYPE_3__*) ;

__attribute__((used)) static long
remove_useless_symbols (asymbol **symbols, long count)
{
  asymbol **in_ptr = symbols, **out_ptr = symbols;

  while (--count >= 0)
    {
      asymbol *sym = *in_ptr++;

      if (sym->name == ((void*)0) || sym->name[0] == '\0' || sym->name[0] == '$')
        continue;
      if (sym->flags & (BSF_DEBUGGING | BSF_SECTION_SYM))
        continue;
      if (bfd_is_und_section (sym->section)
          || bfd_is_com_section (sym->section))
        continue;
      if (sym->value + sym->section->vma == 0)
        continue;





      *out_ptr++ = sym;
    }

  return out_ptr - symbols;
}
