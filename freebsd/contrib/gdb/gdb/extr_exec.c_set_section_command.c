
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section_table {unsigned long addr; long endaddr; int the_bfd_section; } ;
typedef int secprint ;
struct TYPE_3__ {struct section_table* to_sections_end; struct section_table* to_sections; } ;


 char* bfd_section_name (int ,int ) ;
 int error (char*,...) ;
 int exec_bfd ;
 int exec_files_info (TYPE_1__*) ;
 TYPE_1__ exec_ops ;
 int isspace (char) ;
 unsigned long parse_and_eval_address (char*) ;
 int strncmp (char*,char*,unsigned int) ;
 int strncpy (char*,char*,unsigned int) ;

__attribute__((used)) static void
set_section_command (char *args, int from_tty)
{
  struct section_table *p;
  char *secname;
  unsigned seclen;
  unsigned long secaddr;
  char secprint[100];
  long offset;

  if (args == 0)
    error ("Must specify section name and its virtual address");


  for (secname = args; !isspace (*args); args++);
  seclen = args - secname;


  secaddr = parse_and_eval_address (args);

  for (p = exec_ops.to_sections; p < exec_ops.to_sections_end; p++)
    {
      if (!strncmp (secname, bfd_section_name (exec_bfd, p->the_bfd_section), seclen)
   && bfd_section_name (exec_bfd, p->the_bfd_section)[seclen] == '\0')
 {
   offset = secaddr - p->addr;
   p->addr += offset;
   p->endaddr += offset;
   if (from_tty)
     exec_files_info (&exec_ops);
   return;
 }
    }
  if (seclen >= sizeof (secprint))
    seclen = sizeof (secprint) - 1;
  strncpy (secprint, secname, seclen);
  secprint[seclen] = '\0';
  error ("Section %s not found", secprint);
}
