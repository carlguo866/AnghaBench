
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ pc_relative; int partial_inplace; } ;
typedef TYPE_4__ reloc_howto_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_16__ {int flags; scalar_t__ value; TYPE_2__* section; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_17__ {scalar_t__ output_offset; TYPE_3__* output_section; } ;
typedef TYPE_6__ asection ;
struct TYPE_18__ {scalar_t__ addend; scalar_t__ address; TYPE_4__* howto; } ;
typedef TYPE_7__ arelent ;
struct TYPE_14__ {scalar_t__ vma; } ;
struct TYPE_13__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
struct TYPE_12__ {scalar_t__ vma; } ;
typedef scalar_t__ PTR ;


 int BSF_SECTION_SYM ;
 scalar_t__ bfd_get_32 (int *,int *) ;
 scalar_t__ bfd_get_section_limit (int *,TYPE_6__*) ;
 int bfd_reloc_continue ;
 int bfd_reloc_ok ;
 int bfd_reloc_other ;
 int bfd_reloc_outofrange ;

__attribute__((used)) static bfd_reloc_status_type
init_insn_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
   PTR data, asection *input_section, bfd *output_bfd,
   bfd_vma *prelocation, bfd_vma *pinsn)
{
  bfd_vma relocation;
  reloc_howto_type *howto = reloc_entry->howto;

  if (output_bfd != (bfd *) ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (! howto->partial_inplace
   || reloc_entry->addend == 0))
    {
      reloc_entry->address += input_section->output_offset;
      return bfd_reloc_ok;
    }


  if (output_bfd != ((void*)0))
    return bfd_reloc_continue;

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;

  relocation = (symbol->value
  + symbol->section->output_section->vma
  + symbol->section->output_offset);
  relocation += reloc_entry->addend;
  if (howto->pc_relative)
    {
      relocation -= (input_section->output_section->vma
       + input_section->output_offset);
      relocation -= reloc_entry->address;
    }

  *prelocation = relocation;
  *pinsn = bfd_get_32 (abfd, (bfd_byte *) data + reloc_entry->address);
  return bfd_reloc_other;
}
