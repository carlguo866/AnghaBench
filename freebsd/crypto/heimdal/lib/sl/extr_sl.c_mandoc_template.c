
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timestr ;
typedef int time_t ;
typedef int cmd ;
struct TYPE_3__ {char* name; char* usage; scalar_t__ func; } ;
typedef TYPE_1__ SL_cmd ;


 char* getprogname () ;
 int localtime (int *) ;
 int printf (char*,...) ;
 int strftime (char*,int,char*,int ) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 int strupr (char*) ;
 int time (int *) ;

__attribute__((used)) static void
mandoc_template(SL_cmd *cmds,
  const char *extra_string)
{
    SL_cmd *c, *prev;
    char timestr[64], cmd[64];
    const char *p;
    time_t t;

    printf(".\\\" Things to fix:\n");
    printf(".\\\"   * correct section, and operating system\n");
    printf(".\\\"   * remove Op from mandatory flags\n");
    printf(".\\\"   * use better macros for arguments (like .Pa for files)\n");
    printf(".\\\"\n");
    t = time(((void*)0));
    strftime(timestr, sizeof(timestr), "%b %d, %Y", localtime(&t));
    printf(".Dd %s\n", timestr);
    p = strrchr(getprogname(), '/');
    if(p) p++; else p = getprogname();
    strncpy(cmd, p, sizeof(cmd));
    cmd[sizeof(cmd)-1] = '\0';
    strupr(cmd);

    printf(".Dt %s SECTION\n", cmd);
    printf(".Os OPERATING_SYSTEM\n");
    printf(".Sh NAME\n");
    printf(".Nm %s\n", p);
    printf(".Nd\n");
    printf("in search of a description\n");
    printf(".Sh SYNOPSIS\n");
    printf(".Nm\n");
    for(c = cmds; c->name; ++c) {


 printf(".Op Fl %s", c->name);
 printf("\n");

    }
    if (extra_string && *extra_string)
 printf (".Ar %s\n", extra_string);
    printf(".Sh DESCRIPTION\n");
    printf("Supported options:\n");
    printf(".Bl -tag -width Ds\n");
    prev = ((void*)0);
    for(c = cmds; c->name; ++c) {
 if (c->func) {
     if (prev)
  printf ("\n%s\n", prev->usage);

     printf (".It Fl %s", c->name);
     prev = c;
 } else
     printf (", %s\n", c->name);
    }
    if (prev)
 printf ("\n%s\n", prev->usage);

    printf(".El\n");
    printf(".\\\".Sh ENVIRONMENT\n");
    printf(".\\\".Sh FILES\n");
    printf(".\\\".Sh EXAMPLES\n");
    printf(".\\\".Sh DIAGNOSTICS\n");
    printf(".\\\".Sh SEE ALSO\n");
    printf(".\\\".Sh STANDARDS\n");
    printf(".\\\".Sh HISTORY\n");
    printf(".\\\".Sh AUTHORS\n");
    printf(".\\\".Sh BUGS\n");
}
