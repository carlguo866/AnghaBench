
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char const*) ;
 int git_repository_free (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_open (int **,int *) ;
 int git_submodule_resolve_url (int *,int ,char const*) ;
 int git_submodule_url (int *) ;

void test_submodule_lookup__backslashes(void)
{
 git_config *cfg;
 git_submodule *sm;
 git_repository *subrepo;
 git_buf buf = GIT_BUF_INIT;
 const char *backslashed_path = "..\\submod2_target";

 cl_git_pass(git_config_open_ondisk(&cfg, "submod2/.gitmodules"));
 cl_git_pass(git_config_set_string(cfg, "submodule.sm_unchanged.url", backslashed_path));
 git_config_free(cfg);

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_unchanged"));
 cl_assert_equal_s(backslashed_path, git_submodule_url(sm));
 cl_git_pass(git_submodule_open(&subrepo, sm));

 cl_git_pass(git_submodule_resolve_url(&buf, g_repo, backslashed_path));

 git_buf_dispose(&buf);
 git_submodule_free(sm);
 git_repository_free(subrepo);
}
