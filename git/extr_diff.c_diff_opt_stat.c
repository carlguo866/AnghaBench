
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char const* long_name; struct diff_options* value; } ;
struct diff_options {int stat_width; int stat_name_width; int stat_graph_width; int stat_count; int output_format; } ;


 int BUG (char*,char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int DIFF_FORMAT_DIFFSTAT ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int strcmp (char const*,char*) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int diff_opt_stat(const struct option *opt, const char *value, int unset)
{
 struct diff_options *options = opt->value;
 int width = options->stat_width;
 int name_width = options->stat_name_width;
 int graph_width = options->stat_graph_width;
 int count = options->stat_count;
 char *end;

 BUG_ON_OPT_NEG(unset);

 if (!strcmp(opt->long_name, "stat")) {
  if (value) {
   width = strtoul(value, &end, 10);
   if (*end == ',')
    name_width = strtoul(end+1, &end, 10);
   if (*end == ',')
    count = strtoul(end+1, &end, 10);
   if (*end)
    return error(_("invalid --stat value: %s"), value);
  }
 } else if (!strcmp(opt->long_name, "stat-width")) {
  width = strtoul(value, &end, 10);
  if (*end)
   return error(_("%s expects a numerical value"),
         opt->long_name);
 } else if (!strcmp(opt->long_name, "stat-name-width")) {
  name_width = strtoul(value, &end, 10);
  if (*end)
   return error(_("%s expects a numerical value"),
         opt->long_name);
 } else if (!strcmp(opt->long_name, "stat-graph-width")) {
  graph_width = strtoul(value, &end, 10);
  if (*end)
   return error(_("%s expects a numerical value"),
         opt->long_name);
 } else if (!strcmp(opt->long_name, "stat-count")) {
  count = strtoul(value, &end, 10);
  if (*end)
   return error(_("%s expects a numerical value"),
         opt->long_name);
 } else
  BUG("%s should not get here", opt->long_name);

 options->output_format |= DIFF_FORMAT_DIFFSTAT;
 options->stat_name_width = name_width;
 options->stat_graph_width = graph_width;
 options->stat_width = width;
 options->stat_count = count;
 return 0;
}
