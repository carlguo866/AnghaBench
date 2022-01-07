
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ check_filename (char const*,char const*) ;
 int die (int ,char const*) ;
 int die_verify_filename (int ,char const*,char const*,int) ;
 scalar_t__ looks_like_pathspec (char const*) ;
 int the_repository ;

void verify_filename(const char *prefix,
       const char *arg,
       int diagnose_misspelt_rev)
{
 if (*arg == '-')
  die(_("option '%s' must come before non-option arguments"), arg);
 if (looks_like_pathspec(arg) || check_filename(prefix, arg))
  return;
 die_verify_filename(the_repository, prefix, arg, diagnose_misspelt_rev);
}
