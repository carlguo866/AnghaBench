
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_parse_err (char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

int check_header_names(
 const char *one,
 const char *two,
 const char *old_or_new,
 bool two_null)
{
 if (!one || !two)
  return 0;

 if (two_null && strcmp(two, "/dev/null") != 0)
  return git_parse_err("expected %s path of '/dev/null'", old_or_new);

 else if (!two_null && strcmp(one, two) != 0)
  return git_parse_err("mismatched %s path names", old_or_new);

 return 0;
}
