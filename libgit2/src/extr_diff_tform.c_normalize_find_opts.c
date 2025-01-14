
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ git_hashsig_option_t ;
typedef int git_diff_similarity_metric ;
struct TYPE_11__ {int flags; scalar_t__ rename_limit; TYPE_8__* metric; void* break_rewrite_threshold; void* copy_threshold; void* rename_from_rewrite_threshold; void* rename_threshold; } ;
typedef TYPE_1__ git_diff_find_options ;
struct TYPE_12__ {int * repo; } ;
typedef TYPE_2__ git_diff ;
typedef int git_config ;
struct TYPE_13__ {void* payload; int similarity; int free_signature; int buffer_signature; int file_signature; } ;


 void* DEFAULT_BREAK_REWRITE_THRESHOLD ;
 scalar_t__ DEFAULT_RENAME_LIMIT ;
 void* DEFAULT_THRESHOLD ;
 int GIT_DIFF_BREAK_REWRITES ;
 int GIT_DIFF_FIND_ALL ;
 int GIT_DIFF_FIND_BY_CONFIG ;
 int GIT_DIFF_FIND_COPIES ;
 int GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ;
 int GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ;
 int GIT_DIFF_FIND_EXACT_MATCH_ONLY ;
 int GIT_DIFF_FIND_IGNORE_WHITESPACE ;
 int GIT_DIFF_FIND_OPTIONS_VERSION ;
 int GIT_DIFF_FIND_RENAMES ;
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ;
 int GIT_DIFF_FIND_REWRITES ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_8__*) ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__ const*,int ,char*) ;
 scalar_t__ GIT_HASHSIG_ALLOW_SMALL_FILES ;
 scalar_t__ GIT_HASHSIG_IGNORE_WHITESPACE ;
 scalar_t__ GIT_HASHSIG_NORMAL ;
 scalar_t__ GIT_HASHSIG_SMART_WHITESPACE ;
 scalar_t__ USE_DEFAULT (void*) ;
 int git__free (char*) ;
 TYPE_8__* git__malloc (int) ;
 int git__parse_bool (int*,char*) ;
 scalar_t__ git_config__get_int_force (int *,char*,scalar_t__) ;
 char* git_config__get_string_force (int *,char*,char*) ;
 int git_diff_find_similar__calc_similarity ;
 int git_diff_find_similar__hashsig_for_buf ;
 int git_diff_find_similar__hashsig_for_file ;
 int git_diff_find_similar__hashsig_free ;
 scalar_t__ git_repository_config__weakptr (int **,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int normalize_find_opts(
 git_diff *diff,
 git_diff_find_options *opts,
 const git_diff_find_options *given)
{
 git_config *cfg = ((void*)0);
 git_hashsig_option_t hashsig_opts;

 GIT_ERROR_CHECK_VERSION(given, GIT_DIFF_FIND_OPTIONS_VERSION, "git_diff_find_options");

 if (diff->repo != ((void*)0) &&
  git_repository_config__weakptr(&cfg, diff->repo) < 0)
  return -1;

 if (given)
  memcpy(opts, given, sizeof(*opts));

 if (!given ||
   (given->flags & GIT_DIFF_FIND_ALL) == GIT_DIFF_FIND_BY_CONFIG)
 {
  if (cfg) {
   char *rule =
    git_config__get_string_force(cfg, "diff.renames", "true");
   int boolval;

   if (!git__parse_bool(&boolval, rule) && !boolval)
                                                       ;
   else if (!strcasecmp(rule, "copies") || !strcasecmp(rule, "copy"))
    opts->flags |= GIT_DIFF_FIND_RENAMES | GIT_DIFF_FIND_COPIES;
   else
    opts->flags |= GIT_DIFF_FIND_RENAMES;

   git__free(rule);
  } else {

   opts->flags |= GIT_DIFF_FIND_RENAMES;
  }
 }



 if (opts->flags & GIT_DIFF_FIND_EXACT_MATCH_ONLY) {



  opts->flags &= ~(GIT_DIFF_FIND_REWRITES | GIT_DIFF_BREAK_REWRITES);


  opts->flags &= ~GIT_DIFF_FIND_RENAMES_FROM_REWRITES;
 }

 if (opts->flags & GIT_DIFF_FIND_RENAMES_FROM_REWRITES)
  opts->flags |= GIT_DIFF_FIND_RENAMES;

 if (opts->flags & GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED)
  opts->flags |= GIT_DIFF_FIND_COPIES;

 if (opts->flags & GIT_DIFF_BREAK_REWRITES)
  opts->flags |= GIT_DIFF_FIND_REWRITES;



 if (((opts->rename_threshold) == 0 || (opts->rename_threshold) > 100))
  opts->rename_threshold = DEFAULT_THRESHOLD;

 if (((opts->rename_from_rewrite_threshold) == 0 || (opts->rename_from_rewrite_threshold) > 100))
  opts->rename_from_rewrite_threshold = DEFAULT_THRESHOLD;

 if (((opts->copy_threshold) == 0 || (opts->copy_threshold) > 100))
  opts->copy_threshold = DEFAULT_THRESHOLD;

 if (((opts->break_rewrite_threshold) == 0 || (opts->break_rewrite_threshold) > 100))
  opts->break_rewrite_threshold = DEFAULT_BREAK_REWRITE_THRESHOLD;



 if (!opts->rename_limit) {
  if (cfg) {
   opts->rename_limit = git_config__get_int_force(
    cfg, "diff.renamelimit", DEFAULT_RENAME_LIMIT);
  }

  if (opts->rename_limit <= 0)
   opts->rename_limit = DEFAULT_RENAME_LIMIT;
 }


 if (!opts->metric) {
  opts->metric = git__malloc(sizeof(git_diff_similarity_metric));
  GIT_ERROR_CHECK_ALLOC(opts->metric);

  opts->metric->file_signature = git_diff_find_similar__hashsig_for_file;
  opts->metric->buffer_signature = git_diff_find_similar__hashsig_for_buf;
  opts->metric->free_signature = git_diff_find_similar__hashsig_free;
  opts->metric->similarity = git_diff_find_similar__calc_similarity;

  if (opts->flags & GIT_DIFF_FIND_IGNORE_WHITESPACE)
   hashsig_opts = GIT_HASHSIG_IGNORE_WHITESPACE;
  else if (opts->flags & GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE)
   hashsig_opts = GIT_HASHSIG_NORMAL;
  else
   hashsig_opts = GIT_HASHSIG_SMART_WHITESPACE;
  hashsig_opts |= GIT_HASHSIG_ALLOW_SMALL_FILES;
  opts->metric->payload = (void *)hashsig_opts;
 }

 return 0;
}
