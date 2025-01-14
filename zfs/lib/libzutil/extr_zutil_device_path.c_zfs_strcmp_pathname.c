
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmp_name ;


 int ENOENT ;
 int ENOMEM ;
 int MAXPATHLEN ;
 int free (char*) ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 int zfs_append_partition (char*,int) ;
 int zfs_strcmp_shortname (char const*,char*,int) ;

int
zfs_strcmp_pathname(const char *name, const char *cmp, int wholedisk)
{
 int path_len, cmp_len;
 char path_name[MAXPATHLEN];
 char cmp_name[MAXPATHLEN];
 char *dir, *dup;


 memset(cmp_name, 0, MAXPATHLEN);
 dup = strdup(cmp);
 dir = strtok(dup, "/");
 while (dir) {
  strlcat(cmp_name, "/", sizeof (cmp_name));
  strlcat(cmp_name, dir, sizeof (cmp_name));
  dir = strtok(((void*)0), "/");
 }
 free(dup);

 if (name[0] != '/')
  return (zfs_strcmp_shortname(name, cmp_name, wholedisk));

 (void) strlcpy(path_name, name, MAXPATHLEN);
 path_len = strlen(path_name);
 cmp_len = strlen(cmp_name);

 if (wholedisk) {
  path_len = zfs_append_partition(path_name, MAXPATHLEN);
  if (path_len == -1)
   return (ENOMEM);
 }

 if ((path_len != cmp_len) || strcmp(path_name, cmp_name))
  return (ENOENT);

 return (0);
}
