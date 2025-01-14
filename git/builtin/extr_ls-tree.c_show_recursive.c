
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* match; } ;


 int LS_RECURSIVE ;
 int ls_options ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 TYPE_2__ pathspec ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int show_recursive(const char *base, int baselen, const char *pathname)
{
 int i;

 if (ls_options & LS_RECURSIVE)
  return 1;

 if (!pathspec.nr)
  return 0;

 for (i = 0; i < pathspec.nr; i++) {
  const char *spec = pathspec.items[i].match;
  int len, speclen;

  if (strncmp(base, spec, baselen))
   continue;
  len = strlen(pathname);
  spec += baselen;
  speclen = strlen(spec);
  if (speclen <= len)
   continue;
  if (spec[len] && spec[len] != '/')
   continue;
  if (memcmp(pathname, spec, len))
   continue;
  return 1;
 }
 return 0;
}
