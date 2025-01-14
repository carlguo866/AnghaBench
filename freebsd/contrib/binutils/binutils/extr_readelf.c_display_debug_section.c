
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dwarf_section {int name; } ;
typedef enum dwarf_section_display_enum { ____Placeholder_dwarf_section_display_enum } dwarf_section_display_enum ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_6__ {int (* display ) (struct dwarf_section*,int *) ;struct dwarf_section section; } ;
struct TYPE_5__ {scalar_t__ sh_size; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 char* SECTION_NAME (TYPE_1__*) ;
 char* _ (char*) ;
 int abbrev ;
 scalar_t__ const_strneq (char*,char*) ;
 TYPE_3__* debug_displays ;
 int free_debug_section (int) ;
 int info ;
 scalar_t__ load_debug_section (int,int *) ;
 int max ;
 int printf (char*,char*) ;
 scalar_t__ streq (int ,char*) ;
 int stub1 (struct dwarf_section*,int *) ;

__attribute__((used)) static int
display_debug_section (Elf_Internal_Shdr *section, FILE *file)
{
  char *name = SECTION_NAME (section);
  bfd_size_type length;
  int result = 1;
  enum dwarf_section_display_enum i;

  length = section->sh_size;
  if (length == 0)
    {
      printf (_("\nSection '%s' has no debugging data.\n"), name);
      return 0;
    }

  if (const_strneq (name, ".gnu.linkonce.wi."))
    name = ".debug_info";


  for (i = 0; i < max; i++)
    if (streq (debug_displays[i].section.name, name))
      {
 struct dwarf_section *sec = &debug_displays [i].section;

 if (load_debug_section (i, file))
   {
     result &= debug_displays[i].display (sec, file);

     if (i != info && i != abbrev)
       free_debug_section (i);
   }

 break;
      }

  if (i == max)
    {
      printf (_("Unrecognized debug section: %s\n"), name);
      result = 0;
    }

  return result;
}
