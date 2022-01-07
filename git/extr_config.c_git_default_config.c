
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_BEST_COMPRESSION ;
 int Z_DEFAULT_COMPRESSION ;
 int _ (char*) ;
 int die (int ,int) ;
 int git_config_bool (char const*,char const*) ;
 int git_config_int (char const*,char const*) ;
 int git_config_ulong (char const*,char const*) ;
 int git_default_advice_config (char const*,char const*) ;
 int git_default_branch_config (char const*,char const*) ;
 int git_default_core_config (char const*,char const*,void*) ;
 int git_default_i18n_config (char const*,char const*) ;
 int git_default_mailmap_config (char const*,char const*) ;
 int git_default_push_config (char const*,char const*) ;
 int git_ident_config (char const*,char const*,void*) ;
 int pack_compression_level ;
 int pack_compression_seen ;
 int pack_size_limit_cfg ;
 int pager_use_color ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

int git_default_config(const char *var, const char *value, void *cb)
{
 if (starts_with(var, "core."))
  return git_default_core_config(var, value, cb);

 if (starts_with(var, "user.") ||
     starts_with(var, "author.") ||
     starts_with(var, "committer."))
  return git_ident_config(var, value, cb);

 if (starts_with(var, "i18n."))
  return git_default_i18n_config(var, value);

 if (starts_with(var, "branch."))
  return git_default_branch_config(var, value);

 if (starts_with(var, "push."))
  return git_default_push_config(var, value);

 if (starts_with(var, "mailmap."))
  return git_default_mailmap_config(var, value);

 if (starts_with(var, "advice.") || starts_with(var, "color.advice"))
  return git_default_advice_config(var, value);

 if (!strcmp(var, "pager.color") || !strcmp(var, "color.pager")) {
  pager_use_color = git_config_bool(var,value);
  return 0;
 }

 if (!strcmp(var, "pack.packsizelimit")) {
  pack_size_limit_cfg = git_config_ulong(var, value);
  return 0;
 }

 if (!strcmp(var, "pack.compression")) {
  int level = git_config_int(var, value);
  if (level == -1)
   level = Z_DEFAULT_COMPRESSION;
  else if (level < 0 || level > Z_BEST_COMPRESSION)
   die(_("bad pack compression level %d"), level);
  pack_compression_level = level;
  pack_compression_seen = 1;
  return 0;
 }


 return 0;
}
