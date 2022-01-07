
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_commit ;


 int git_commit_free (int *) ;
 int git_commit_parent (int **,int *,int) ;
 int git_commit_parentcount (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int retrieve_stash_trees(
 git_tree **out_stash_tree,
 git_tree **out_base_tree,
 git_tree **out_index_tree,
 git_tree **out_index_parent_tree,
 git_tree **out_untracked_tree,
 git_commit *stash_commit)
{
 git_tree *stash_tree = ((void*)0);
 git_commit *base_commit = ((void*)0);
 git_tree *base_tree = ((void*)0);
 git_commit *index_commit = ((void*)0);
 git_tree *index_tree = ((void*)0);
 git_commit *index_parent_commit = ((void*)0);
 git_tree *index_parent_tree = ((void*)0);
 git_commit *untracked_commit = ((void*)0);
 git_tree *untracked_tree = ((void*)0);
 int error;

 if ((error = git_commit_tree(&stash_tree, stash_commit)) < 0)
  goto cleanup;

 if ((error = git_commit_parent(&base_commit, stash_commit, 0)) < 0)
  goto cleanup;
 if ((error = git_commit_tree(&base_tree, base_commit)) < 0)
  goto cleanup;

 if ((error = git_commit_parent(&index_commit, stash_commit, 1)) < 0)
  goto cleanup;
 if ((error = git_commit_tree(&index_tree, index_commit)) < 0)
  goto cleanup;

 if ((error = git_commit_parent(&index_parent_commit, index_commit, 0)) < 0)
  goto cleanup;
 if ((error = git_commit_tree(&index_parent_tree, index_parent_commit)) < 0)
  goto cleanup;

 if (git_commit_parentcount(stash_commit) == 3) {
  if ((error = git_commit_parent(&untracked_commit, stash_commit, 2)) < 0)
   goto cleanup;
  if ((error = git_commit_tree(&untracked_tree, untracked_commit)) < 0)
   goto cleanup;
 }

 *out_stash_tree = stash_tree;
 *out_base_tree = base_tree;
 *out_index_tree = index_tree;
 *out_index_parent_tree = index_parent_tree;
 *out_untracked_tree = untracked_tree;

cleanup:
 git_commit_free(untracked_commit);
 git_commit_free(index_parent_commit);
 git_commit_free(index_commit);
 git_commit_free(base_commit);
 if (error < 0) {
  git_tree_free(stash_tree);
  git_tree_free(base_tree);
  git_tree_free(index_tree);
  git_tree_free(index_parent_tree);
  git_tree_free(untracked_tree);
 }
 return error;
}
