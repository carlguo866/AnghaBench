
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int wrong_sorted_path; int wrong_status_flags_count; int entry_count; int member_0; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_7__ {int flags; int show; } ;
typedef TYPE_2__ git_status_options ;
typedef int git_repository ;


 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_SHOW_WORKDIR_ONLY ;
 unsigned int const GIT_STATUS_WT_NEW ;
 int cb_status__normal ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_skip () ;
 int git_futils_mkdir_r (char*,int) ;
 int git_status_foreach_ext (int *,TYPE_2__*,int ,TYPE_1__*) ;
 int p_chmod (char*,int) ;

void test_status_worktree__unreadable_not_included(void)
{

 const char *expected_paths[] = { "no_permission/" };
 const unsigned int expected_statuses[] = {GIT_STATUS_WT_NEW};

 git_repository *repo = cl_git_sandbox_init("empty_standard_repo");
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 status_entry_counts counts = {0};


 cl_git_pass(git_futils_mkdir_r("empty_standard_repo/no_permission", 0777));
 cl_git_mkfile("empty_standard_repo/no_permission/foo", "dummy");
 p_chmod("empty_standard_repo/no_permission", 0644);

 counts.expected_entry_count = 1;
 counts.expected_paths = expected_paths;
 counts.expected_statuses = expected_statuses;

 opts.show = GIT_STATUS_SHOW_WORKDIR_ONLY;
 opts.flags = (GIT_STATUS_OPT_INCLUDE_IGNORED | GIT_STATUS_OPT_INCLUDE_UNTRACKED);

 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts) );


 p_chmod("empty_standard_repo/no_permission", 0777);

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);



}
