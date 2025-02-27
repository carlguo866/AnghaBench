
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sectioncheck {int bad_tosec; } ;
struct elf_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ r_offset; } ;
typedef int Elf_Sym ;
typedef TYPE_1__ Elf_Rela ;


 int fatal (char*,char const*,long,char const*,...) ;
 int get_secindex (struct elf_info*,int *) ;
 int is_executable_section (struct elf_info*,int ) ;
 scalar_t__ is_extable_fault_address (TYPE_1__*) ;
 scalar_t__ match (char const*,int ) ;
 int report_extable_warnings (char const*,struct elf_info*,struct sectioncheck const* const,TYPE_1__*,int *,char const*,char const*) ;
 int sec_mismatch_count ;
 char* sec_name (struct elf_info*,int ) ;

__attribute__((used)) static void extable_mismatch_handler(const char* modname, struct elf_info *elf,
         const struct sectioncheck* const mismatch,
         Elf_Rela* r, Elf_Sym* sym,
         const char *fromsec)
{
 const char* tosec = sec_name(elf, get_secindex(elf, sym));

 sec_mismatch_count++;

 report_extable_warnings(modname, elf, mismatch, r, sym, fromsec, tosec);

 if (match(tosec, mismatch->bad_tosec))
  fatal("The relocation at %s+0x%lx references\n"
        "section \"%s\" which is black-listed.\n"
        "Something is seriously wrong and should be fixed.\n"
        "You might get more information about where this is\n"
        "coming from by using scripts/check_extable.sh %s\n",
        fromsec, (long)r->r_offset, tosec, modname);
 else if (!is_executable_section(elf, get_secindex(elf, sym))) {
  if (is_extable_fault_address(r))
   fatal("The relocation at %s+0x%lx references\n"
         "section \"%s\" which is not executable, IOW\n"
         "it is not possible for the kernel to fault\n"
         "at that address.  Something is seriously wrong\n"
         "and should be fixed.\n",
         fromsec, (long)r->r_offset, tosec);
  else
   fatal("The relocation at %s+0x%lx references\n"
         "section \"%s\" which is not executable, IOW\n"
         "the kernel will fault if it ever tries to\n"
         "jump to it.  Something is seriously wrong\n"
         "and should be fixed.\n",
         fromsec, (long)r->r_offset, tosec);
 }
}
