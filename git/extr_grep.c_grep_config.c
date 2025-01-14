
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int relative; char** colors; int color; void* columnnum; void* linenum; int pattern_type_option; void* extended_regexp_option; } ;


 int LOOKUP_CONFIG (int ,char const*) ;
 int color_grep_slots ;
 int color_parse (char const*,char*) ;
 int config_error_nonbool (char const*) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_colorbool (char const*,char const*) ;
 struct grep_opt grep_defaults ;
 int parse_pattern_type_arg (char const*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 scalar_t__ userdiff_config (char const*,char const*) ;

int grep_config(const char *var, const char *value, void *cb)
{
 struct grep_opt *opt = &grep_defaults;
 const char *slot;

 if (userdiff_config(var, value) < 0)
  return -1;

 if (!strcmp(var, "grep.extendedregexp")) {
  opt->extended_regexp_option = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "grep.patterntype")) {
  opt->pattern_type_option = parse_pattern_type_arg(var, value);
  return 0;
 }

 if (!strcmp(var, "grep.linenumber")) {
  opt->linenum = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "grep.column")) {
  opt->columnnum = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "grep.fullname")) {
  opt->relative = !git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "color.grep"))
  opt->color = git_config_colorbool(var, value);
 if (!strcmp(var, "color.grep.match")) {
  if (grep_config("color.grep.matchcontext", value, cb) < 0)
   return -1;
  if (grep_config("color.grep.matchselected", value, cb) < 0)
   return -1;
 } else if (skip_prefix(var, "color.grep.", &slot)) {
  int i = LOOKUP_CONFIG(color_grep_slots, slot);
  char *color;

  if (i < 0)
   return -1;
  color = opt->colors[i];
  if (!value)
   return config_error_nonbool(var);
  return color_parse(value, color);
 }
 return 0;
}
