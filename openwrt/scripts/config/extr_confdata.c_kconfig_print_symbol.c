
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; char* name; } ;
typedef int FILE ;


 char* CONFIG_ ;


 int fprintf (int *,char*,char*,char*,...) ;

__attribute__((used)) static void
kconfig_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
{

 switch (sym->type) {
 case 129:
 case 128:
  if (*value == 'n') {
   bool skip_unset = (arg != ((void*)0));

   if (!skip_unset)
    fprintf(fp, "# %s%s is not set\n",
        CONFIG_, sym->name);
   return;
  }
  break;
 default:
  break;
 }

 fprintf(fp, "%s%s=%s\n", CONFIG_, sym->name, value);
}
