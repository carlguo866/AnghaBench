
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

__attribute__((used)) static const char *
mc_unify_path (const char *path)
{
  char *end;
  char *hsz;

  if (! path || *path == 0)
    return "./";
  hsz = xmalloc (strlen (path) + 2);
  strcpy (hsz, path);
  end = hsz + strlen (hsz);
  if (hsz[-1] != '/' && hsz[-1] != '\\')
    strcpy (end, "/");
  while ((end = strchr (hsz, '\\')) != ((void*)0))
    *end = '/';
  return hsz;
}
