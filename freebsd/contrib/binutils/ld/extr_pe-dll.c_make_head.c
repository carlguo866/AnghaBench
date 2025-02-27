
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd ;
typedef int asymbol ;
struct TYPE_9__ {unsigned char* contents; } ;
typedef TYPE_1__ asection ;
struct TYPE_10__ {int bfd_arch; int object_target; } ;


 int BFD_RELOC_RVA ;
 int BSF_GLOBAL ;
 int PE_IDATA4_SIZE ;
 int PE_IDATA5_SIZE ;
 int SEC_HAS_CONTENTS ;
 int U (char*) ;
 TYPE_1__* UNDSEC ;
 int * bfd_create (char*,int *) ;
 int bfd_find_target (int ,int *) ;
 int bfd_make_readable (int *) ;
 int bfd_make_writable (int *) ;
 int bfd_object ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_section_contents (int *,TYPE_1__*,unsigned char*,int ,int) ;
 int bfd_set_section_size (int *,TYPE_1__*,int) ;
 int bfd_set_symtab (int *,void*,scalar_t__) ;
 int dll_symname ;
 int memset (unsigned char*,int ,int) ;
 TYPE_5__* pe_details ;
 int quick_reloc (int *,int,int ,int) ;
 TYPE_1__* quick_section (int *,char*,int ,int) ;
 int quick_symbol (int *,int ,int ,char*,TYPE_1__*,int ,int ) ;
 int save_relocs (TYPE_1__*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ symptr ;
 void* symtab ;
 int tmp_seq ;
 void* xmalloc (int) ;

__attribute__((used)) static bfd *
make_head (bfd *parent)
{
  asection *id2, *id5, *id4;
  unsigned char *d2, *d5, *d4;
  char *oname;
  bfd *abfd;

  oname = xmalloc (20);
  sprintf (oname, "d%06d.o", tmp_seq);
  tmp_seq++;

  abfd = bfd_create (oname, parent);
  bfd_find_target (pe_details->object_target, abfd);
  bfd_make_writable (abfd);

  bfd_set_format (abfd, bfd_object);
  bfd_set_arch_mach (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = xmalloc (6 * sizeof (asymbol *));
  id2 = quick_section (abfd, ".idata$2", SEC_HAS_CONTENTS, 2);
  id5 = quick_section (abfd, ".idata$5", SEC_HAS_CONTENTS, 2);
  id4 = quick_section (abfd, ".idata$4", SEC_HAS_CONTENTS, 2);
  quick_symbol (abfd, U ("_head_"), dll_symname, "", id2, BSF_GLOBAL, 0);
  quick_symbol (abfd, U (""), dll_symname, "_iname", UNDSEC, BSF_GLOBAL, 0);







  bfd_set_section_size (abfd, id2, 20);
  d2 = xmalloc (20);
  id2->contents = d2;
  memset (d2, 0, 20);
  d2[0] = d2[16] = 4;
  quick_reloc (abfd, 0, BFD_RELOC_RVA, 2);
  quick_reloc (abfd, 12, BFD_RELOC_RVA, 4);
  quick_reloc (abfd, 16, BFD_RELOC_RVA, 1);
  save_relocs (id2);

  bfd_set_section_size (abfd, id5, PE_IDATA5_SIZE);
  d5 = xmalloc (PE_IDATA5_SIZE);
  id5->contents = d5;
  memset (d5, 0, PE_IDATA5_SIZE);

  bfd_set_section_size (abfd, id4, PE_IDATA4_SIZE);
  d4 = xmalloc (PE_IDATA4_SIZE);
  id4->contents = d4;
  memset (d4, 0, PE_IDATA4_SIZE);

  bfd_set_symtab (abfd, symtab, symptr);

  bfd_set_section_contents (abfd, id2, d2, 0, 20);
  bfd_set_section_contents (abfd, id5, d5, 0, PE_IDATA5_SIZE);
  bfd_set_section_contents (abfd, id4, d4, 0, PE_IDATA4_SIZE);

  bfd_make_readable (abfd);
  return abfd;
}
