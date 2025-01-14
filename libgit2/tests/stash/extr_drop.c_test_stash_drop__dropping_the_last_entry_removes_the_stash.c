
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_REFS_STASH_FILE ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_stash_drop (int ,int ) ;
 int push_three_states () ;
 int repo ;

void test_stash_drop__dropping_the_last_entry_removes_the_stash(void)
{
 git_reference *stash;

 push_three_states();

 cl_git_pass(git_reference_lookup(&stash, repo, GIT_REFS_STASH_FILE));
 git_reference_free(stash);

 cl_git_pass(git_stash_drop(repo, 0));
 cl_git_pass(git_stash_drop(repo, 0));
 cl_git_pass(git_stash_drop(repo, 0));

 cl_git_fail_with(
  git_reference_lookup(&stash, repo, GIT_REFS_STASH_FILE), GIT_ENOTFOUND);
}
