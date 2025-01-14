
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct coff_reloc {int symbol; int addend; int offset; } ;
struct coff_ofile {TYPE_1__* sections; } ;
struct TYPE_7__ {int native; } ;
typedef TYPE_2__ coff_symbol_type ;
struct TYPE_8__ {unsigned int reloc_count; int target_index; TYPE_4__* relocation; struct TYPE_8__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_9__ {scalar_t__* sym_ptr_ptr; int addend; int address; } ;
typedef TYPE_4__ arelent ;
struct TYPE_10__ {TYPE_3__* sections; } ;
struct TYPE_6__ {struct coff_reloc* relocs; } ;


 TYPE_5__* abfd ;
 int rawsyms ;
 int * tindex ;

__attribute__((used)) static void
do_sections_p2 (struct coff_ofile *head)
{
  asection *section;
  for (section = abfd->sections; section; section = section->next)
    {
      unsigned int j;

      for (j = 0; j < section->reloc_count; j++)
 {
   int idx;
   int i = section->target_index;
   struct coff_reloc *r = head->sections[i].relocs + j;
   arelent *sr = section->relocation + j;
   r->offset = sr->address;
   r->addend = sr->addend;
   idx = ((coff_symbol_type *) (sr->sym_ptr_ptr[0]))->native - rawsyms;
   r->symbol = tindex[idx];
 }
    }
}
