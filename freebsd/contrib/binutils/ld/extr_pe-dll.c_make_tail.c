
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd ;
typedef int asymbol ;
struct TYPE_7__ {unsigned char* contents; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int bfd_arch; int object_target; } ;


 int BSF_GLOBAL ;
 int PE_IDATA4_SIZE ;
 int PE_IDATA5_SIZE ;
 int SEC_HAS_CONTENTS ;
 int U (char*) ;
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
 int dll_filename ;
 int dll_symname ;
 int memset (unsigned char*,int ,int) ;
 TYPE_4__* pe_details ;
 TYPE_1__* quick_section (int *,char*,int ,int) ;
 int quick_symbol (int *,int ,int ,char*,TYPE_1__*,int ,int ) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 scalar_t__ symptr ;
 void* symtab ;
 int tmp_seq ;
 void* xmalloc (int) ;

__attribute__((used)) static bfd *
make_tail (bfd *parent)
{
  asection *id4, *id5, *id7;
  unsigned char *d4, *d5, *d7;
  int len;
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
  symtab = xmalloc (5 * sizeof (asymbol *));
  id4 = quick_section (abfd, ".idata$4", SEC_HAS_CONTENTS, 2);
  id5 = quick_section (abfd, ".idata$5", SEC_HAS_CONTENTS, 2);
  id7 = quick_section (abfd, ".idata$7", SEC_HAS_CONTENTS, 2);
  quick_symbol (abfd, U (""), dll_symname, "_iname", id7, BSF_GLOBAL, 0);

  bfd_set_section_size (abfd, id4, PE_IDATA4_SIZE);
  d4 = xmalloc (PE_IDATA4_SIZE);
  id4->contents = d4;
  memset (d4, 0, PE_IDATA4_SIZE);

  bfd_set_section_size (abfd, id5, PE_IDATA5_SIZE);
  d5 = xmalloc (PE_IDATA5_SIZE);
  id5->contents = d5;
  memset (d5, 0, PE_IDATA5_SIZE);

  len = strlen (dll_filename) + 1;
  if (len & 1)
    len++;
  bfd_set_section_size (abfd, id7, len);
  d7 = xmalloc (len);
  id7->contents = d7;
  strcpy ((char *) d7, dll_filename);



  d7[len - 1] = 0;

  bfd_set_symtab (abfd, symtab, symptr);

  bfd_set_section_contents (abfd, id4, d4, 0, PE_IDATA4_SIZE);
  bfd_set_section_contents (abfd, id5, d5, 0, PE_IDATA5_SIZE);
  bfd_set_section_contents (abfd, id7, d7, 0, len);

  bfd_make_readable (abfd);
  return abfd;
}
