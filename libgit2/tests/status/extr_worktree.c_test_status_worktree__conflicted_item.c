
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int mode; char* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_STATUS_CONFLICTED ;
 int GIT_STATUS_WT_MODIFIED ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_index_conflict_add (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int *) ;
 int git_status_file (unsigned int*,int *,char*) ;
 int memset (TYPE_1__*,int,int) ;

void test_status_worktree__conflicted_item(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_index *index;
 unsigned int status;
 git_index_entry ancestor_entry, our_entry, their_entry;

 memset(&ancestor_entry, 0x0, sizeof(git_index_entry));
 memset(&our_entry, 0x0, sizeof(git_index_entry));
 memset(&their_entry, 0x0, sizeof(git_index_entry));

 ancestor_entry.mode = 0100644;
 ancestor_entry.path = "modified_file";
 git_oid_fromstr(&ancestor_entry.id,
  "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

 our_entry.mode = 0100644;
 our_entry.path = "modified_file";
 git_oid_fromstr(&our_entry.id,
  "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

 their_entry.mode = 0100644;
 their_entry.path = "modified_file";
 git_oid_fromstr(&their_entry.id,
  "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

 cl_git_pass(git_status_file(&status, repo, "modified_file"));
 cl_assert_equal_i(GIT_STATUS_WT_MODIFIED, status);

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_conflict_add(index, &ancestor_entry,
  &our_entry, &their_entry));

 cl_git_pass(git_status_file(&status, repo, "modified_file"));
 cl_assert_equal_i(GIT_STATUS_CONFLICTED, status);

 git_index_free(index);
}
