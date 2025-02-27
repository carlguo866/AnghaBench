
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_stat {int version; char const* name; } ;
struct kld_file_stat {int version; char const* name; } ;
typedef int mstat ;
typedef int fstat ;


 int kldfirstmod (int) ;
 int kldnext (int) ;
 scalar_t__ kldstat (int,struct kld_file_stat*) ;
 int modfnext (int) ;
 scalar_t__ modstat (int,struct module_stat*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* strstr (char const*,char*) ;

int
kld_isloaded(const char *name)
{
 struct kld_file_stat fstat;
 struct module_stat mstat;
 const char *ko;
 int fid, mid;

 for (fid = kldnext(0); fid > 0; fid = kldnext(fid)) {
  fstat.version = sizeof(fstat);
  if (kldstat(fid, &fstat) != 0)
   continue;

  if (strcmp(fstat.name, name) == 0)
   return (1);

  if ((ko = strstr(fstat.name, ".ko")) != ((void*)0) &&
      strlen(name) == (size_t)(ko - fstat.name) &&
      strncmp(fstat.name, name, ko - fstat.name) == 0)
   return (1);

  for (mid = kldfirstmod(fid); mid > 0; mid = modfnext(mid)) {
   mstat.version = sizeof(mstat);
   if (modstat(mid, &mstat) != 0)
    continue;
   if (strcmp(mstat.name, name) == 0)
    return (1);
  }
 }
 return (0);
}
