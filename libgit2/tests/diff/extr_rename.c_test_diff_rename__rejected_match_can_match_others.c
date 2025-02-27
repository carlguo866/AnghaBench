
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; } ;
typedef int git_tree ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_index ;
typedef int git_diff_options ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_1__ git_diff_find_options ;
typedef int git_diff ;
struct TYPE_13__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;
struct TYPE_14__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 unsigned int GIT_DELTA_RENAMED ;
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES ;
 int GIT_DIFF_OPTIONS_INIT ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert (char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_checkout_head (int ,TYPE_2__*) ;
 int git_diff_find_similar (int *,TYPE_1__*) ;
 int git_diff_foreach (int *,int ,int *,int *,int *,struct rename_expected*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_futils_readbuffer (TYPE_3__*,char*) ;
 int git_futils_writebuffer (TYPE_3__*,char*,int,int) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_set_target (int **,int *,char*,int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_tree_free (int *) ;
 int p_unlink (char*) ;
 char* strstr (int ,char*) ;
 int test_names_expected ;

void test_diff_rename__rejected_match_can_match_others(void)
{
 git_reference *head, *selfsimilar;
 git_index *index;
 git_tree *tree;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;
 git_buf one = GIT_BUF_INIT, two = GIT_BUF_INIT;
 unsigned int status[] = { GIT_DELTA_RENAMED, GIT_DELTA_RENAMED };
 const char *sources[] = { "Class1.cs", "Class2.cs" };
 const char *targets[] = { "ClassA.cs", "ClassB.cs" };
 struct rename_expected expect = { 2, status, sources, targets };
 char *ptr;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 findopts.flags = GIT_DIFF_FIND_RENAMES;

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_git_pass(git_reference_symbolic_set_target(
  &selfsimilar, head, "refs/heads/renames_similar", ((void*)0)));
 cl_git_pass(git_checkout_head(g_repo, &opts));
 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(git_futils_readbuffer(&one, "renames/Class1.cs"));
 cl_git_pass(git_futils_readbuffer(&two, "renames/Class2.cs"));

 cl_git_pass(p_unlink("renames/Class1.cs"));
 cl_git_pass(p_unlink("renames/Class2.cs"));

 cl_git_pass(git_index_remove_bypath(index, "Class1.cs"));
 cl_git_pass(git_index_remove_bypath(index, "Class2.cs"));

 cl_assert(ptr = strstr(one.ptr, "Class1"));
 ptr[5] = 'A';

 cl_assert(ptr = strstr(two.ptr, "Class2"));
 ptr[5] = 'B';

 cl_git_pass(
  git_futils_writebuffer(&one, "renames/ClassA.cs", O_RDWR|O_CREAT, 0777));
 cl_git_pass(
  git_futils_writebuffer(&two, "renames/ClassB.cs", O_RDWR|O_CREAT, 0777));

 cl_git_pass(git_index_add_bypath(index, "ClassA.cs"));
 cl_git_pass(git_index_add_bypath(index, "ClassB.cs"));

 cl_git_pass(git_index_write(index));

 cl_git_pass(
  git_revparse_single((git_object **)&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(
  git_diff_tree_to_index(&diff, g_repo, tree, index, &diffopts));

 cl_git_pass(git_diff_find_similar(diff, &findopts));

 cl_git_pass(git_diff_foreach(
  diff, test_names_expected, ((void*)0), ((void*)0), ((void*)0), &expect));

 git_diff_free(diff);
 git_tree_free(tree);
 git_index_free(index);
 git_reference_free(head);
 git_reference_free(selfsimilar);
 git_buf_dispose(&one);
 git_buf_dispose(&two);
}
