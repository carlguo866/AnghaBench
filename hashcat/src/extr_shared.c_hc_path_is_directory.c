
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;

bool hc_path_is_directory (const char *path)
{
  struct stat s;

  if (stat (path, &s) == -1) return 0;

  if (S_ISDIR (s.st_mode)) return 1;

  return 0;
}
