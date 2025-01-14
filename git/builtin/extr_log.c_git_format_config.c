
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int use_default_notes; int extra_notes_refs; } ;
struct rev_info {int show_notes; TYPE_1__ notes_opt; } ;


 int COVER_AUTO ;
 int COVER_OFF ;
 int COVER_ON ;
 int IDENT_NO_DATE ;
 struct strbuf STRBUF_INIT ;
 int THREAD_DEEP ;
 int THREAD_SHALLOW ;
 int THREAD_UNSET ;
 int _ (char*) ;
 int add_header (char const*) ;
 int auto_number ;
 void* base_auto ;
 int config_cover_letter ;
 int config_error_nonbool (char const*) ;
 int config_output_directory ;
 int cover_from_description_mode ;
 void* default_attach ;
 int die (int ) ;
 void* do_signoff ;
 int expand_notes_ref (struct strbuf*) ;
 int extra_cc ;
 int extra_to ;
 int fmt_patch_suffix ;
 int free (int *) ;
 int * from ;
 char const* git_committer_info (int ) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_pathname (int *,char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int git_log_config (char const*,char const*,void*) ;
 int git_parse_maybe_bool (char const*) ;
 char const* git_version_string ;
 void* numbered ;
 int parse_cover_from_description (char const*) ;
 int signature ;
 int signature_file ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char const* strbuf_detach (struct strbuf*,int *) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int string_list_append (int *,char const*) ;
 int thread ;
 void* xstrdup (char const*) ;

__attribute__((used)) static int git_format_config(const char *var, const char *value, void *cb)
{
 struct rev_info *rev = cb;

 if (!strcmp(var, "format.headers")) {
  if (!value)
   die(_("format.headers without value"));
  add_header(value);
  return 0;
 }
 if (!strcmp(var, "format.suffix"))
  return git_config_string(&fmt_patch_suffix, var, value);
 if (!strcmp(var, "format.to")) {
  if (!value)
   return config_error_nonbool(var);
  string_list_append(&extra_to, value);
  return 0;
 }
 if (!strcmp(var, "format.cc")) {
  if (!value)
   return config_error_nonbool(var);
  string_list_append(&extra_cc, value);
  return 0;
 }
 if (!strcmp(var, "diff.color") || !strcmp(var, "color.diff") ||
     !strcmp(var, "color.ui") || !strcmp(var, "diff.submodule")) {
  return 0;
 }
 if (!strcmp(var, "format.numbered")) {
  if (value && !strcasecmp(value, "auto")) {
   auto_number = 1;
   return 0;
  }
  numbered = git_config_bool(var, value);
  auto_number = auto_number && numbered;
  return 0;
 }
 if (!strcmp(var, "format.attach")) {
  if (value && *value)
   default_attach = xstrdup(value);
  else
   default_attach = xstrdup(git_version_string);
  return 0;
 }
 if (!strcmp(var, "format.thread")) {
  if (value && !strcasecmp(value, "deep")) {
   thread = THREAD_DEEP;
   return 0;
  }
  if (value && !strcasecmp(value, "shallow")) {
   thread = THREAD_SHALLOW;
   return 0;
  }
  thread = git_config_bool(var, value) ? THREAD_SHALLOW : THREAD_UNSET;
  return 0;
 }
 if (!strcmp(var, "format.signoff")) {
  do_signoff = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "format.signature"))
  return git_config_string(&signature, var, value);
 if (!strcmp(var, "format.signaturefile"))
  return git_config_pathname(&signature_file, var, value);
 if (!strcmp(var, "format.coverletter")) {
  if (value && !strcasecmp(value, "auto")) {
   config_cover_letter = COVER_AUTO;
   return 0;
  }
  config_cover_letter = git_config_bool(var, value) ? COVER_ON : COVER_OFF;
  return 0;
 }
 if (!strcmp(var, "format.outputdirectory"))
  return git_config_string(&config_output_directory, var, value);
 if (!strcmp(var, "format.useautobase")) {
  base_auto = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "format.from")) {
  int b = git_parse_maybe_bool(value);
  free(from);
  if (b < 0)
   from = xstrdup(value);
  else if (b)
   from = xstrdup(git_committer_info(IDENT_NO_DATE));
  else
   from = ((void*)0);
  return 0;
 }
 if (!strcmp(var, "format.notes")) {
  struct strbuf buf = STRBUF_INIT;
  int b = git_parse_maybe_bool(value);
  if (!b)
   return 0;
  rev->show_notes = 1;
  if (b < 0) {
   strbuf_addstr(&buf, value);
   expand_notes_ref(&buf);
   string_list_append(&rev->notes_opt.extra_notes_refs,
     strbuf_detach(&buf, ((void*)0)));
  } else {
   rev->notes_opt.use_default_notes = 1;
  }
  return 0;
 }
 if (!strcmp(var, "format.coverfromdescription")) {
  cover_from_description_mode = parse_cover_from_description(value);
  return 0;
 }

 return git_log_config(var, value, cb);
}
