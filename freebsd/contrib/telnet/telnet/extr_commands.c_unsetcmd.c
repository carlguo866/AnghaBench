
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct togglelist {char* actionexplanation; int (* handler ) (int ) ;scalar_t__* variable; } ;
struct setlist {char* name; char* help; int * charp; int (* handler ) (int ) ;} ;


 scalar_t__ Ambiguous (void*) ;
 struct togglelist* GETTOGGLE (char*) ;
 struct setlist* Setlist ;
 int _POSIX_VDISABLE ;
 char* control (int ) ;
 int fprintf (int ,char*,...) ;
 struct setlist* getset (char*) ;
 scalar_t__ isprefix (char*,char*) ;
 int printf (char*,...) ;
 int settogglehelp (int ) ;
 int stderr ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
unsetcmd(int argc, char *argv[])
{
    struct setlist *ct;
    struct togglelist *c;
    char *name;

    if (argc < 2) {
 fprintf(stderr,
     "Need an argument to 'unset' command.  'unset ?' for help.\n");
 return 0;
    }
    if (isprefix(argv[1], "?") || isprefix(argv[1], "help")) {
 for (ct = Setlist; ct->name; ct++)
     printf("%-15s %s\n", ct->name, ct->help);
 printf("\n");
 settogglehelp(0);
 printf("%-15s %s\n", "?", "display help information");
 return 0;
    }

    argc--;
    argv++;
    while (argc--) {
 name = *argv++;
 ct = getset(name);
 if (ct == 0) {
     c = GETTOGGLE(name);
     if (c == 0) {
  fprintf(stderr, "'%s': unknown argument ('unset ?' for help).\n",
   name);
  return 0;
     } else if (Ambiguous((void *)c)) {
  fprintf(stderr, "'%s': ambiguous argument ('unset ?' for help).\n",
   name);
  return 0;
     }
     if (c->variable) {
  *c->variable = 0;
  if (c->actionexplanation) {
      printf("%s %s.\n", *c->variable? "Will" : "Won't",
       c->actionexplanation);
  }
     }
     if (c->handler)
  (*c->handler)(0);
 } else if (Ambiguous((void *)ct)) {
     fprintf(stderr, "'%s': ambiguous argument ('unset ?' for help).\n",
   name);
     return 0;
 } else if (ct->handler) {
     (*ct->handler)(0);
     printf("%s reset to \"%s\".\n", ct->name, (char *)ct->charp);
 } else {
     *(ct->charp) = _POSIX_VDISABLE;
     printf("%s character is '%s'.\n", ct->name, control(*(ct->charp)));
 }
    }
    return 1;
}
