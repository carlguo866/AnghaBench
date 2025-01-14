
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {TYPE_1__ pathspec; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_11__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_foreach_via_iterator (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;

void test_diff_workdir__eof_newline_changes(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;
 char *pathspec = "current_file";
 int use_iterator;

 g_repo = cl_git_sandbox_init("status");

 opts.pathspec.strings = &pathspec;
 opts.pathspec.count = 1;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(0, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(0, exp.hunks);
  cl_assert_equal_i(0, exp.lines);
  cl_assert_equal_i(0, exp.line_ctxt);
  cl_assert_equal_i(0, exp.line_adds);
  cl_assert_equal_i(0, exp.line_dels);
 }

 git_diff_free(diff);

 cl_git_append2file("status/current_file", "\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.hunks);
  cl_assert_equal_i(2, exp.lines);
  cl_assert_equal_i(1, exp.line_ctxt);
  cl_assert_equal_i(1, exp.line_adds);
  cl_assert_equal_i(0, exp.line_dels);
 }

 git_diff_free(diff);

 cl_git_rewritefile("status/current_file", "current_file");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.hunks);
  cl_assert_equal_i(3, exp.lines);
  cl_assert_equal_i(0, exp.line_ctxt);
  cl_assert_equal_i(1, exp.line_adds);
  cl_assert_equal_i(2, exp.line_dels);
 }

 git_diff_free(diff);
}
