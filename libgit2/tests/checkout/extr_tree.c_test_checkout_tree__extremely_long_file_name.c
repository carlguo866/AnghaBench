
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_FORCE ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_object ;
 TYPE_1__ g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_object_free (int ) ;
 int git_path_exists (char*) ;
 int git_revparse_single (int *,int ,char*) ;
 int sprintf (char*,char*,char const*) ;

void test_checkout_tree__extremely_long_file_name(void)
{

 const char *longname = "\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97\xe5\x8f\x97";
 char path[1024];

 g_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_revparse_single(&g_object, g_repo, "long-file-name"));
 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));

 sprintf(path, "testrepo/%s.txt", longname);
 cl_assert(git_path_exists(path));

 git_object_free(g_object);
 cl_git_pass(git_revparse_single(&g_object, g_repo, "master"));
 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));
 cl_assert(!git_path_exists(path));
}
