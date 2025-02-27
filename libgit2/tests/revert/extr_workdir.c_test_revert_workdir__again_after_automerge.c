
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_write_tree (int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,int *) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,int ,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;
 int time (int *) ;

void test_revert_workdir__again_after_automerge(void)
{
 git_commit *head, *commit;
 git_tree *reverted_tree;
 git_oid head_oid, revert_oid, reverted_tree_oid, reverted_commit_oid;
 git_signature *signature;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 struct merge_index_entry second_revert_entries[] = {
  { 0100644, "3a3ef367eaf3fe79effbfb0a56b269c04c2b59fe", 1, "file1.txt" },
  { 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 2, "file1.txt" },
  { 0100644, "747726e021bc5f44b86de60e3032fd6f9f1b8383", 3, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 git_oid_fromstr(&head_oid, "72333f47d4e83616630ff3b0ffe4c0faebcc3c45");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&revert_oid, "d1d403d22cbe24592d725f442835cf46fe60c8ac");
 cl_git_pass(git_commit_lookup(&commit, repo, &revert_oid));
 cl_git_pass(git_revert(repo, commit, ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 4));

 cl_git_pass(git_index_write_tree(&reverted_tree_oid, repo_index));
 cl_git_pass(git_tree_lookup(&reverted_tree, repo, &reverted_tree_oid));

 cl_git_pass(git_signature_new(&signature, "Reverter", "reverter@example.org", time(((void*)0)), 0));
 cl_git_pass(git_commit_create(&reverted_commit_oid, repo, "HEAD", signature, signature, ((void*)0), "Reverted!", reverted_tree, 1, (const git_commit **)&head));

 cl_git_pass(git_revert(repo, commit, ((void*)0)));
 cl_assert(merge_test_index(repo_index, second_revert_entries, 6));

 git_signature_free(signature);
 git_tree_free(reverted_tree);
 git_commit_free(commit);
 git_commit_free(head);
}
