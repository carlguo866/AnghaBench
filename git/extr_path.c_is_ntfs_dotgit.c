
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;
 scalar_t__ only_spaces_and_periods (char const*,size_t,int) ;
 int strncasecmp (char const*,char*,int) ;

int is_ntfs_dotgit(const char *name)
{
 size_t len;

 for (len = 0; ; len++)
  if (!name[len] || name[len] == '\\' || is_dir_sep(name[len])) {
   if (only_spaces_and_periods(name, len, 4) &&
     !strncasecmp(name, ".git", 4))
    return 1;
   if (only_spaces_and_periods(name, len, 5) &&
     !strncasecmp(name, "git~1", 5))
    return 1;
   if (name[len] != '\\')
    return 0;
   name += len + 1;
   len = -1;
  }
}
