
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* psprintf (char*,char*,char const*) ;

__attribute__((used)) static void
xstrcat(char **var, const char *more)
{
 char *newvar;

 newvar = psprintf("%s%s", *var, more);
 free(*var);
 *var = newvar;
}
