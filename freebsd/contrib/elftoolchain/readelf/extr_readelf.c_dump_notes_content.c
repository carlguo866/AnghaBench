
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_3__ {int e_type; } ;
struct readelf {TYPE_1__ ehdr; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {int n_namesz; int n_descsz; int n_type; } ;
typedef TYPE_2__ Elf_Note ;


 int dump_notes_data (struct readelf*,char const*,int ,char const*,int) ;
 char* note_type (char const*,int ,int ) ;
 int printf (char*,char const*,...) ;
 int roundup2 (int,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strnlen (char const*,int) ;
 int warnx (char*) ;

__attribute__((used)) static void
dump_notes_content(struct readelf *re, const char *buf, size_t sz, off_t off)
{
 Elf_Note *note;
 const char *end, *name;

 printf("\nNotes at offset %#010jx with length %#010jx:\n",
     (uintmax_t) off, (uintmax_t) sz);
 printf("  %-13s %-15s %s\n", "Owner", "Data size", "Description");
 end = buf + sz;
 while (buf < end) {
  if (buf + sizeof(*note) > end) {
   warnx("invalid note header");
   return;
  }
  note = (Elf_Note *)(uintptr_t) buf;
  buf += sizeof(Elf_Note);
  name = buf;
  buf += roundup2(note->n_namesz, 4);
  if (note->n_namesz == 0)
   name = "";
  else if (note->n_namesz == 4 && strncmp(name, "CORE", 4) == 0)
   name = "CORE";
  else if (strnlen(name, note->n_namesz) >= note->n_namesz)
   name = "<invalid>";
  printf("  %-13s %#010jx", name, (uintmax_t) note->n_descsz);
  printf("      %s\n", note_type(name, re->ehdr.e_type,
      note->n_type));
  dump_notes_data(re, name, note->n_type, buf, note->n_descsz);
  buf += roundup2(note->n_descsz, 4);
 }
}
