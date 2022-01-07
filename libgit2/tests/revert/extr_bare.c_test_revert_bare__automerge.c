
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revert_commit (int **,int ,int *,int *,int ,int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;

void test_revert_bare__automerge(void)
{
 git_commit *head_commit, *revert_commit;
 git_oid head_oid, revert_oid;
 git_index *index;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 git_oid_fromstr(&head_oid, "72333f47d4e83616630ff3b0ffe4c0faebcc3c45");
 cl_git_pass(git_commit_lookup(&head_commit, repo, &head_oid));

 git_oid_fromstr(&revert_oid, "d1d403d22cbe24592d725f442835cf46fe60c8ac");
 cl_git_pass(git_commit_lookup(&revert_commit, repo, &revert_oid));

 cl_git_pass(git_revert_commit(&index, repo, revert_commit, head_commit, 0, ((void*)0)));
 cl_assert(merge_test_index(index, merge_index_entries, 4));

 git_commit_free(revert_commit);
 git_commit_free(head_commit);
 git_index_free(index);
}
