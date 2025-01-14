
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_9__ ;
typedef struct TYPE_52__ TYPE_8__ ;
typedef struct TYPE_51__ TYPE_7__ ;
typedef struct TYPE_50__ TYPE_6__ ;
typedef struct TYPE_49__ TYPE_5__ ;
typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_3__ ;
typedef struct TYPE_46__ TYPE_2__ ;
typedef struct TYPE_45__ TYPE_27__ ;
typedef struct TYPE_44__ TYPE_23__ ;
typedef struct TYPE_43__ TYPE_22__ ;
typedef struct TYPE_42__ TYPE_21__ ;
typedef struct TYPE_41__ TYPE_20__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_19__ ;
typedef struct TYPE_38__ TYPE_18__ ;
typedef struct TYPE_37__ TYPE_17__ ;
typedef struct TYPE_36__ TYPE_16__ ;
typedef struct TYPE_35__ TYPE_15__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_13__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct mips_got_info {TYPE_7__* global_gotsym; } ;
struct TYPE_48__ {TYPE_3__* hgot; TYPE_2__* hplt; } ;
struct mips_elf_link_hash_table {scalar_t__ plt_header_size; scalar_t__ plt_entry_size; TYPE_14__* srelbss; TYPE_5__* srelplt; TYPE_4__ root; TYPE_1__* srelplt2; TYPE_18__* splt; TYPE_17__* sgotplt; } ;
struct TYPE_31__ {int value; TYPE_10__* section; } ;
struct TYPE_32__ {TYPE_11__ def; } ;
struct TYPE_33__ {TYPE_12__ u; } ;
struct TYPE_39__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {int dynindx; TYPE_13__ root; scalar_t__ needs_copy; scalar_t__ forced_local; int def_regular; TYPE_19__ plt; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_41__ {scalar_t__ contents; scalar_t__ output_offset; TYPE_8__* output_section; int reloc_count; } ;
typedef TYPE_20__ asection ;
struct TYPE_53__ {int vma; } ;
struct TYPE_52__ {scalar_t__ vma; } ;
struct TYPE_51__ {scalar_t__ dynindx; } ;
struct TYPE_50__ {struct mips_got_info* got_info; } ;
struct TYPE_49__ {int * contents; } ;
struct TYPE_47__ {int indx; } ;
struct TYPE_46__ {int indx; } ;
struct TYPE_45__ {int * dynobj; } ;
struct TYPE_44__ {TYPE_6__ u; } ;
struct TYPE_43__ {int r_offset; scalar_t__ r_addend; void* r_info; } ;
struct TYPE_42__ {int st_value; scalar_t__ st_other; int st_shndx; } ;
struct TYPE_40__ {int * contents; } ;
struct TYPE_38__ {scalar_t__ size; scalar_t__ output_offset; int * contents; TYPE_15__* output_section; } ;
struct TYPE_37__ {scalar_t__ output_offset; int * contents; TYPE_16__* output_section; } ;
struct TYPE_36__ {scalar_t__ vma; } ;
struct TYPE_35__ {scalar_t__ vma; } ;
struct TYPE_34__ {int reloc_count; int * contents; } ;
struct TYPE_30__ {int output_offset; TYPE_9__* output_section; } ;
typedef TYPE_21__ Elf_Internal_Sym ;
typedef TYPE_22__ Elf_Internal_Rela ;
typedef int Elf32_External_Rela ;


 int BFD_ASSERT (int) ;
 void* ELF32_R_INFO (int,int ) ;
 int FALSE ;
 int MIPS_ELF_PUT_WORD (int *,int,scalar_t__) ;
 int R_MIPS_32 ;
 int R_MIPS_COPY ;
 int R_MIPS_GOT16 ;
 int R_MIPS_HI16 ;
 int R_MIPS_JUMP_SLOT ;
 int R_MIPS_LO16 ;
 int SHN_UNDEF ;
 scalar_t__ STO_MIPS16 ;
 int TRUE ;
 int bfd_elf32_swap_reloca_out (int *,TYPE_22__*,int *) ;
 int bfd_put_32 (int *,scalar_t__ const,int *) ;
 TYPE_27__* elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ mips_elf_global_got_index (int *,int *,struct elf_link_hash_entry*,int ,struct bfd_link_info*) ;
 TYPE_20__* mips_elf_got_section (int *,int ) ;
 scalar_t__ mips_elf_gotplt_index (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 TYPE_20__* mips_elf_rel_dyn_section (struct bfd_link_info*,int ) ;
 TYPE_23__* mips_elf_section_data (TYPE_20__*) ;
 scalar_t__* mips_vxworks_exec_plt_entry ;
 scalar_t__* mips_vxworks_shared_plt_entry ;

bfd_boolean
_bfd_mips_vxworks_finish_dynamic_symbol (bfd *output_bfd,
      struct bfd_link_info *info,
      struct elf_link_hash_entry *h,
      Elf_Internal_Sym *sym)
{
  bfd *dynobj;
  asection *sgot;
  struct mips_got_info *g;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);
  dynobj = elf_hash_table (info)->dynobj;

  if (h->plt.offset != (bfd_vma) -1)
    {
      bfd_byte *loc;
      bfd_vma plt_address, plt_index, got_address, got_offset, branch_offset;
      Elf_Internal_Rela rel;
      static const bfd_vma *plt_entry;

      BFD_ASSERT (h->dynindx != -1);
      BFD_ASSERT (htab->splt != ((void*)0));
      BFD_ASSERT (h->plt.offset <= htab->splt->size);


      plt_address = (htab->splt->output_section->vma
       + htab->splt->output_offset
       + h->plt.offset);


      plt_index = ((h->plt.offset - htab->plt_header_size)
     / htab->plt_entry_size);


      got_address = (htab->sgotplt->output_section->vma
       + htab->sgotplt->output_offset
       + plt_index * 4);



      got_offset = mips_elf_gotplt_index (info, h);



      branch_offset = -(h->plt.offset / 4 + 1) & 0xffff;


      bfd_put_32 (output_bfd, plt_address,
    htab->sgotplt->contents + plt_index * 4);


      loc = htab->splt->contents + h->plt.offset;

      if (info->shared)
 {
   plt_entry = mips_vxworks_shared_plt_entry;
   bfd_put_32 (output_bfd, plt_entry[0] | branch_offset, loc);
   bfd_put_32 (output_bfd, plt_entry[1] | plt_index, loc + 4);
 }
      else
 {
   bfd_vma got_address_high, got_address_low;

   plt_entry = mips_vxworks_exec_plt_entry;
   got_address_high = ((got_address + 0x8000) >> 16) & 0xffff;
   got_address_low = got_address & 0xffff;

   bfd_put_32 (output_bfd, plt_entry[0] | branch_offset, loc);
   bfd_put_32 (output_bfd, plt_entry[1] | plt_index, loc + 4);
   bfd_put_32 (output_bfd, plt_entry[2] | got_address_high, loc + 8);
   bfd_put_32 (output_bfd, plt_entry[3] | got_address_low, loc + 12);
   bfd_put_32 (output_bfd, plt_entry[4], loc + 16);
   bfd_put_32 (output_bfd, plt_entry[5], loc + 20);
   bfd_put_32 (output_bfd, plt_entry[6], loc + 24);
   bfd_put_32 (output_bfd, plt_entry[7], loc + 28);

   loc = (htab->srelplt2->contents
   + (plt_index * 3 + 2) * sizeof (Elf32_External_Rela));


   rel.r_offset = got_address;
   rel.r_info = ELF32_R_INFO (htab->root.hplt->indx, R_MIPS_32);
   rel.r_addend = h->plt.offset;
   bfd_elf32_swap_reloca_out (output_bfd, &rel, loc);


   loc += sizeof (Elf32_External_Rela);
   rel.r_offset = plt_address + 8;
   rel.r_info = ELF32_R_INFO (htab->root.hgot->indx, R_MIPS_HI16);
   rel.r_addend = got_offset;
   bfd_elf32_swap_reloca_out (output_bfd, &rel, loc);


   loc += sizeof (Elf32_External_Rela);
   rel.r_offset += 4;
   rel.r_info = ELF32_R_INFO (htab->root.hgot->indx, R_MIPS_LO16);
   bfd_elf32_swap_reloca_out (output_bfd, &rel, loc);
 }


      loc = htab->srelplt->contents + plt_index * sizeof (Elf32_External_Rela);
      rel.r_offset = got_address;
      rel.r_info = ELF32_R_INFO (h->dynindx, R_MIPS_JUMP_SLOT);
      rel.r_addend = 0;
      bfd_elf32_swap_reloca_out (output_bfd, &rel, loc);

      if (!h->def_regular)
 sym->st_shndx = SHN_UNDEF;
    }

  BFD_ASSERT (h->dynindx != -1 || h->forced_local);

  sgot = mips_elf_got_section (dynobj, FALSE);
  BFD_ASSERT (sgot != ((void*)0));
  BFD_ASSERT (mips_elf_section_data (sgot) != ((void*)0));
  g = mips_elf_section_data (sgot)->u.got_info;
  BFD_ASSERT (g != ((void*)0));


  if (g->global_gotsym != ((void*)0)
      && h->dynindx >= g->global_gotsym->dynindx)
    {
      bfd_vma offset;
      Elf_Internal_Rela outrel;
      bfd_byte *loc;
      asection *s;


      offset = mips_elf_global_got_index (dynobj, output_bfd, h,
       R_MIPS_GOT16, info);
      MIPS_ELF_PUT_WORD (output_bfd, sym->st_value, sgot->contents + offset);


      s = mips_elf_rel_dyn_section (info, FALSE);
      loc = s->contents + (s->reloc_count++ * sizeof (Elf32_External_Rela));
      outrel.r_offset = (sgot->output_section->vma
    + sgot->output_offset
    + offset);
      outrel.r_info = ELF32_R_INFO (h->dynindx, R_MIPS_32);
      outrel.r_addend = 0;
      bfd_elf32_swap_reloca_out (dynobj, &outrel, loc);
    }


  if (h->needs_copy)
    {
      Elf_Internal_Rela rel;

      BFD_ASSERT (h->dynindx != -1);

      rel.r_offset = (h->root.u.def.section->output_section->vma
        + h->root.u.def.section->output_offset
        + h->root.u.def.value);
      rel.r_info = ELF32_R_INFO (h->dynindx, R_MIPS_COPY);
      rel.r_addend = 0;
      bfd_elf32_swap_reloca_out (output_bfd, &rel,
     htab->srelbss->contents
     + (htab->srelbss->reloc_count
        * sizeof (Elf32_External_Rela)));
      ++htab->srelbss->reloc_count;
    }


  if (sym->st_other == STO_MIPS16)
    sym->st_value &= ~1;

  return TRUE;
}
