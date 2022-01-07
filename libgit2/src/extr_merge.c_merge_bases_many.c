
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit_list_node ;
typedef int git_commit_list ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_MERGE ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_merge__bases_many (int **,int *,int *,int *) ;
 int * git_revwalk__commit_lookup (int *,int const*) ;
 int git_revwalk_free (int *) ;
 scalar_t__ git_revwalk_new (int **,int *) ;
 int git_vector_free (int *) ;
 scalar_t__ git_vector_init (int *,size_t,int *) ;
 int git_vector_insert (int *,int *) ;

int merge_bases_many(git_commit_list **out, git_revwalk **walk_out, git_repository *repo, size_t length, const git_oid input_array[])
{
 git_revwalk *walk = ((void*)0);
 git_vector list;
 git_commit_list *result = ((void*)0);
 git_commit_list_node *commit;
 int error = -1;
 unsigned int i;

 if (length < 2) {
  git_error_set(GIT_ERROR_INVALID, "at least two commits are required to find an ancestor");
  return -1;
 }

 if (git_vector_init(&list, length - 1, ((void*)0)) < 0)
  return -1;

 if (git_revwalk_new(&walk, repo) < 0)
  goto on_error;

 for (i = 1; i < length; i++) {
  commit = git_revwalk__commit_lookup(walk, &input_array[i]);
  if (commit == ((void*)0))
   goto on_error;

  git_vector_insert(&list, commit);
 }

 commit = git_revwalk__commit_lookup(walk, &input_array[0]);
 if (commit == ((void*)0))
  goto on_error;

 if (git_merge__bases_many(&result, walk, commit, &list) < 0)
  goto on_error;

 if (!result) {
  git_error_set(GIT_ERROR_MERGE, "no merge base found");
  error = GIT_ENOTFOUND;
  goto on_error;
 }

 *out = result;
 *walk_out = walk;

 git_vector_free(&list);
 return 0;

on_error:
 git_vector_free(&list);
 git_revwalk_free(walk);
 return error;
}
