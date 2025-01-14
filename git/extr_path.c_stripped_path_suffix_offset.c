
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int chomp_trailing_dir_sep (char const*,int) ;
 scalar_t__ is_dir_sep (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t stripped_path_suffix_offset(const char *path, const char *suffix)
{
 int path_len = strlen(path), suffix_len = strlen(suffix);

 while (suffix_len) {
  if (!path_len)
   return -1;

  if (is_dir_sep(path[path_len - 1])) {
   if (!is_dir_sep(suffix[suffix_len - 1]))
    return -1;
   path_len = chomp_trailing_dir_sep(path, path_len);
   suffix_len = chomp_trailing_dir_sep(suffix, suffix_len);
  }
  else if (path[--path_len] != suffix[--suffix_len])
   return -1;
 }

 if (path_len && !is_dir_sep(path[path_len - 1]))
  return -1;
 return chomp_trailing_dir_sep(path, path_len);
}
