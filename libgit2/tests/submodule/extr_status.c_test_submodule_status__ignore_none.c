
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_ADDED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_DELETED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_DELETED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_UNTRACKED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_WD_MODIFIED ;
 int add_submodule_to_index (char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 unsigned int get_submodule_status (int ,char*) ;
 int git_futils_mkdir_relative (char*,char*,int,int ,int *) ;
 int refute_submodule_exists (int ,char*,int ) ;
 int rm_submodule (char*) ;
 int rm_submodule_from_index (char*) ;

void test_submodule_status__ignore_none(void)
{
 unsigned int status;

 rm_submodule("sm_unchanged");

 refute_submodule_exists(g_repo, "just_a_dir", GIT_ENOTFOUND);
 refute_submodule_exists(g_repo, "not-submodule", GIT_EEXISTS);
 refute_submodule_exists(g_repo, "not", GIT_EEXISTS);

 status = get_submodule_status(g_repo, "sm_changed_index");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED) != 0);

 status = get_submodule_status(g_repo, "sm_changed_head");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

 status = get_submodule_status(g_repo, "sm_changed_file");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_WD_MODIFIED) != 0);

 status = get_submodule_status(g_repo, "sm_changed_untracked_file");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_UNTRACKED) != 0);

 status = get_submodule_status(g_repo, "sm_missing_commits");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

 status = get_submodule_status(g_repo, "sm_added_and_uncommited");
 cl_assert((status & GIT_SUBMODULE_STATUS_INDEX_ADDED) != 0);


 status = get_submodule_status(g_repo, "sm_unchanged");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_DELETED) != 0);


 cl_git_pass(git_futils_mkdir_relative("sm_unchanged", "submod2", 0755, 0, ((void*)0)));
 status = get_submodule_status(g_repo, "sm_unchanged");
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_UNINITIALIZED) != 0);


 add_submodule_to_index("sm_changed_head");
 status = get_submodule_status(g_repo, "sm_changed_head");
 cl_assert((status & GIT_SUBMODULE_STATUS_INDEX_MODIFIED) != 0);


 rm_submodule_from_index("sm_changed_head");
 status = get_submodule_status(g_repo, "sm_changed_head");
 cl_assert((status & GIT_SUBMODULE_STATUS_INDEX_DELETED) != 0);
}
