
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct grep_opt {int relative; int pathname; int max_depth; int color; int output; scalar_t__ only_matching; int * colors; int pattern_type_option; struct repository* repo; } ;


 char* GIT_COLOR_BOLD_RED ;
 char* GIT_COLOR_CYAN ;
 size_t GREP_COLOR_COLUMNNO ;
 size_t GREP_COLOR_CONTEXT ;
 size_t GREP_COLOR_FILENAME ;
 size_t GREP_COLOR_FUNCTION ;
 size_t GREP_COLOR_LINENO ;
 size_t GREP_COLOR_MATCH_CONTEXT ;
 size_t GREP_COLOR_MATCH_SELECTED ;
 size_t GREP_COLOR_SELECTED ;
 size_t GREP_COLOR_SEP ;
 int GREP_PATTERN_TYPE_UNSPECIFIED ;
 int color_set (int ,char*) ;
 struct grep_opt grep_defaults ;
 int memset (struct grep_opt*,int ,int) ;
 int std_output ;

void init_grep_defaults(struct repository *repo)
{
 struct grep_opt *opt = &grep_defaults;
 static int run_once;

 if (run_once)
  return;
 run_once++;

 memset(opt, 0, sizeof(*opt));
 opt->repo = repo;
 opt->relative = 1;
 opt->pathname = 1;
 opt->max_depth = -1;
 opt->pattern_type_option = GREP_PATTERN_TYPE_UNSPECIFIED;
 color_set(opt->colors[GREP_COLOR_CONTEXT], "");
 color_set(opt->colors[GREP_COLOR_FILENAME], "");
 color_set(opt->colors[GREP_COLOR_FUNCTION], "");
 color_set(opt->colors[GREP_COLOR_LINENO], "");
 color_set(opt->colors[GREP_COLOR_COLUMNNO], "");
 color_set(opt->colors[GREP_COLOR_MATCH_CONTEXT], GIT_COLOR_BOLD_RED);
 color_set(opt->colors[GREP_COLOR_MATCH_SELECTED], GIT_COLOR_BOLD_RED);
 color_set(opt->colors[GREP_COLOR_SELECTED], "");
 color_set(opt->colors[GREP_COLOR_SEP], GIT_COLOR_CYAN);
 opt->only_matching = 0;
 opt->color = -1;
 opt->output = std_output;
}
