
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int merge_test_workdir (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_revert_workdir__head(void)
{
 git_reference *head;
 git_commit *commit;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "7731926a337c4eaba1e2187d90ebfa0a93659382", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };


 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel((git_object **)&commit, head, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, (git_object *)commit, GIT_RESET_HARD, ((void*)0)));
 cl_git_pass(git_revert(repo, commit, ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 4));
 cl_assert(merge_test_workdir(repo, merge_index_entries, 4));

 git_reference_free(head);
 git_commit_free(commit);
}
