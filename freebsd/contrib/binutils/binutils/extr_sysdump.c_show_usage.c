
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* REPORT_BUGS_TO ;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* program_name ;

__attribute__((used)) static void
show_usage (FILE *file, int status)
{
  fprintf (file, _("Usage: %s [option(s)] in-file\n"), program_name);
  fprintf (file, _("Print a human readable interpretation of a SYSROFF object file\n"));
  fprintf (file, _(" The options are:\n  -h --help        Display this information\n  -v --version     Print the program's version number\n"));



  if (REPORT_BUGS_TO[0] && status == 0)
    fprintf (file, _("Report bugs to %s\n"), REPORT_BUGS_TO);
  exit (status);
}
