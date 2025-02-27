
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct internal_syment {scalar_t__ n_sclass; scalar_t__ n_value; void* n_scnum; } ;
struct TYPE_8__ {int flags; scalar_t__ value; TYPE_5__* section; } ;
struct TYPE_9__ {TYPE_2__ symbol; } ;
typedef TYPE_3__ coff_symbol_type ;
typedef int bfd ;
struct TYPE_10__ {TYPE_1__* output_section; scalar_t__ output_offset; } ;
struct TYPE_7__ {scalar_t__ vma; scalar_t__ lma; void* target_index; } ;


 int BFD_ASSERT (int ) ;
 int BSF_DEBUGGING ;
 int BSF_DEBUGGING_RELOC ;
 scalar_t__ C_STATLAB ;
 void* N_ABS ;
 void* N_UNDEF ;
 scalar_t__ bfd_is_com_section (TYPE_5__*) ;
 scalar_t__ bfd_is_und_section (TYPE_5__*) ;
 int obj_pe (int *) ;

__attribute__((used)) static void
fixup_symbol_value (bfd *abfd,
      coff_symbol_type *coff_symbol_ptr,
      struct internal_syment *syment)
{

  if (bfd_is_com_section (coff_symbol_ptr->symbol.section))
    {

      syment->n_scnum = N_UNDEF;
      syment->n_value = coff_symbol_ptr->symbol.value;
    }
  else if ((coff_symbol_ptr->symbol.flags & BSF_DEBUGGING) != 0
    && (coff_symbol_ptr->symbol.flags & BSF_DEBUGGING_RELOC) == 0)
    {
      syment->n_value = coff_symbol_ptr->symbol.value;
    }
  else if (bfd_is_und_section (coff_symbol_ptr->symbol.section))
    {
      syment->n_scnum = N_UNDEF;
      syment->n_value = 0;
    }

  else
    {
      if (coff_symbol_ptr->symbol.section)
 {
   syment->n_scnum =
     coff_symbol_ptr->symbol.section->output_section->target_index;

   syment->n_value = (coff_symbol_ptr->symbol.value
        + coff_symbol_ptr->symbol.section->output_offset);
   if (! obj_pe (abfd))
            {
              syment->n_value += (syment->n_sclass == C_STATLAB)
                ? coff_symbol_ptr->symbol.section->output_section->lma
                : coff_symbol_ptr->symbol.section->output_section->vma;
            }
 }
      else
 {
   BFD_ASSERT (0);

   syment->n_scnum = N_ABS;
   syment->n_value = coff_symbol_ptr->symbol.value;
 }
    }
}
